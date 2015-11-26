require "net/http"
require "json"
require "uri"

class FriendFinder

  def initialize(url)
    @uri = URI(url)
  end

  private

  def response
    @response ||= Net::HTTP.get(@uri)
  end

  def json_response
    JSON.parse(response)
  end
end
