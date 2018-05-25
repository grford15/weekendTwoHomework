require('minitest/autorun')
require('minitest/rg')

require_relative('../guests.rb')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guest.new("Greg", 20, "Let's dance")
  end

  def test_guest_has_name
    assert_equal("Greg", @guest1.name)
  end

  def test_has_money
    assert_equal(20, @guest1.money)
  end

  def test_pay_entry_fee
    @guest1.pay_entry_fee(5)
    assert_equal(15, @guest1.money)
  end

  def test_guest_has_fave_song
    assert_equal("Let's dance", @guest1.fave_song)
  end 

end
