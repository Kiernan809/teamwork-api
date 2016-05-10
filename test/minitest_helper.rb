$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'teamwork'

require 'minitest/autorun'

# require 'test/unit'
# require 'shoulda'
# require 'matchy'
require 'fakeweb'

FakeWeb.allow_net_connect = false
