class Guest

  attr_reader :name, :money, :fave_song

  def initialize(name, money, fave_song)
    @name = name
    @money = money
    @fave_song = fave_song
  end

  def pay_entry_fee(fee)
    @money -= fee
  end

  

end
