class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this

    drizzy = Artist.find_or_create_by(name: "Drake")
              # OMG this ^ method is SOOO COOOOL
    self.artist = drizzy
  end
end