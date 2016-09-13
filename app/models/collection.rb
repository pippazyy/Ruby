class Collection < ActiveRecord::Base
  belongs_to :user
  
  validates :album, uniqueness: {scope: [:song]}
    
  def self.search(search)    
    Collection.includes(:user).where('collections.album LIKE ? OR collections.song LIKE ?', "%#{search}%", "%#{search}%")
  end  
end
