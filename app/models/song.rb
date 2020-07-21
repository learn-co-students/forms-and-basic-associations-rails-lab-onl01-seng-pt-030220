class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes 

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    #binding.pry
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def note_contents=(contents)
    
    contents.each do |content|
      if content != ""
        self.notes.build(content: content) 
      end
    end
  end
end
