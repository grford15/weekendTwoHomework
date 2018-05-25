class Room

  attr_reader :name, :guests, :till, :song_book, :capacity

  def initialize(name, till, guests, song_book, capacity)
    @name = name
    @guests = []
    @till = till
    @song_book = []
    @capacity = capacity
  end

  def guest_check
    return @guests.count
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_room(song)
    @song_book << song
  end

  def can_accept_guest
    if @guests.count < @capacity
      return true
    else
      return "Room is full"
    end
  end

end
