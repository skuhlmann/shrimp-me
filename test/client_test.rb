require 'minitest/autorun'
require 'minitest/pride'
require 'vcr'
require 'webmock'
require './lib/shrimp_me'

class ClientTest < Minitest::Test

  VCR.configure do |config|
    config.cassette_library_dir = "test/fixtures/vcr_cassettes"
    config.hook_into :webmock
  end

  def test_it_exists
    assert ShrimpMe::Shrimp
  end

  def test_it_connects
    connection = ShrimpMe::Shrimp.new

    assert_equal "http://www.shrimpy.me/api/v1/urls.json", connection.base_uri
  end

  def test_it_posts_to_shrimp_me
    connection = ShrimpMe::Shrimp.new
    VCR.use_cassette("poster") do
      response = connection.post_url("http://google.com")

      assert_equal "Google", response["title"]
    end
  end

  def test_it_shortens_a_url
    VCR.use_cassette("shrimper") do
      connection = ShrimpMe::Shrimp.new

      assert_includes connection.shorten("http://google.com"), "http://shrimpy.me"
    end
  end
end
