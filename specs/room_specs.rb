require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRoom < MiniTest::Test

  def setup


    guests = []
    song_book = []
    @room1 = Room.new("Karaoke Kings", 20, guests, song_book, 2)
    @guest1 = Guest.new("Greg", 20, "Let's dance")
    @guest2 = Guest.new("Richard", 19, "Bohemian Rhapsody")
    @song1 = Song.new("Let's dance", "David Bowie")
    @song2 = Song.new("Bohemian Rhapsody", "Queen")

  end

  def test_room_has_name
    assert_equal("Karaoke Kings", @room1.name)
  end

  def test_room_has_money
    assert_equal(20, @room1.till)
  end

  def test_room_has_guests
    assert_equal(0, @room1.guest_check)
  end

  def test_guest_has_been_checked_in
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guest_check)
  end

  def test_guest_has_checked_out
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_out_guest(@guest2)
    assert_equal(1, @room1.guest_check)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.song_book.count)
  end

  def test_room_can_accept_guest
    assert_equal(true, @room1.can_accept_guest)
  end

  def test_room_full
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    assert_equal("Room is full", @room1.can_accept_guest)
  end

  def test_room_has_guest_fave_song
    @room1.check_in_guest(@guest1)
    assert_equal("Yaldy!", @room1.room_has_guest_fave_song)
  end

end
