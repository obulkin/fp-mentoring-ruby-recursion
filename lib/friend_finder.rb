require "net/http"
require "json"
require "uri"
require "awesome_print"

class FriendFinder
  def initialize(url)
    @uri = URI(url)
  end

  def find_by(name)
    friend_tree = response
    @name = name
    find_helper(friend_tree["friends"]) 
  end

  def find_helper(friend_tree)
    friend_tree.each do |friend|
      return friend if friend["name"] == @name
      return find_helper(friend["friends"]) unless friend["friends"].empty?
    end
  end

  def number_of_friends
    ap response
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