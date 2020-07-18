class Note < ActiveRecord::Base
  # add associations here
  belongs_to :song


  # def note_contents=(arg)
  #   arg.each do |a| 
  #   note = Note.find(a) 
  #   self.notes << note
  #   end
  # end
  
  # def note_contents 
  # self.content ? self.note.content : nil 
  # end


#     def post_ids=(ids)
#       ids.each do |id|
#         post = Post.find(id)
#         self.posts << post
#       end
#     end

end
