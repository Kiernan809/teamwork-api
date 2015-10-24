require 'minitest_helper'

class TestTeamwork < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Teamwork::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end


# 200
# 400
# 500
# authorized
# unauthorized
# wrong url
# params - subtasks, date filter
# api_key
# company
# get blank
# body, headers, status
