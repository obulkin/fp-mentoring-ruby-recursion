require "net/http"
require "json"
require "uri"

class FriendFinder

  def initialize(url)
    @uri = URI(url)
  end

  def find_by(name)
  end

  def number_of_friends
  end

  def number_of_friends_who_work_at(company_name)
  end

  def meta
    response["meta"]
  end

  private

  def raw_response
    @raw_response ||= Net::HTTP.get(@uri)
  end

  def response
    JSON.parse(raw_response)
  end

end
