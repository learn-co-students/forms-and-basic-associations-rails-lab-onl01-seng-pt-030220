class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist 
  belongs_to :genre 
  has_many :notes

  def artist_name=(argument)
  self.artist = Artist.find_or_create_by(name:argument)
  end

  def artist_name 
    self.artist ? self.artist.name  : nil
  end

  
  def note_contents=(args)
    args.each do |a| 
    new_note = Note.new(content:a) 
    self.notes << new_note
    end

  end
  


end
