class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :picture, presence: true
  validates :name, presence: true
  validates :recommendation, presence: true
  validates :store, presence: true
  
  def like(user)
    likes.create(user_id: user.id)
  end
  
  def unlike(user)
    likes.find_by(user_id: user.id).destroy
  end 
  
  def like?(user)
    like_users.include?(user)
  end
  
  private
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "5MB以下の写真を選択してください")
    end
  end
  
 def self.search(search)
   return Micropost.all unless search
   Micropost.where(['name LIKE ?', "%#{search}%"])
 end 
  

end
