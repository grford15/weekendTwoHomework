require('minitest/autorun')
require('minitest/rg')

require_relative('../songs.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Let's dance", "David Bowie")
    @song2 = Song.new("Bohemian Rhapsody", "Queen")

  end

  def test_song_has_title
    assert_equal("Let's dance", @song1.song_name)
  end

  def test_song_has_artist
    assert_equal("David Bowie", @song1.song_artist)
  end


end
