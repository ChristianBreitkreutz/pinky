require 'test/unit'

require_relative '../lib/user'

class TestUser < Test::Unit::TestCase
  def test_UserGetter
    user = User.new()
    assert_equal('Mrs. Dennis Schulist', user.getNameById(6))
    assert_equal(6, user.getIdByName('Mrs. Dennis Schulist'))
    assert_equal('Glenna Reichert', user.getNameById(user.getIdByName('Glenna Reichert')))
  end
end