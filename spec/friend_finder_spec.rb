require_relative "./spec_helper.rb"

RSpec.describe FriendFinder do
  it "will find Tom Hanks" do
    finder = FriendFinder.new(level_url("1"))

    expect(finder.find_by("Tom Hanks")).to eq(finder.meta["marker"])
  end

  it "will count total number of friends" do
    finder = FriendFinder.new(level_url("2"))

    expect(finder.number_of_friends).to eq(finder.meta["total_count"])
  end

  it "will count the total number of friends who work at Mass Relevance" do
    finder = FriendFinder.new(level_url("3"))

    expect(finder.number_of_friends_who_work_at("Mass Relevance")).to eq(finder.meta["marker"]["count"])
  end
end
