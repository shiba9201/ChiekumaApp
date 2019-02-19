class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true
  validates :user_id, presence: true
  validates :name, presence: true
  validates :recommendation, presence: true
  validates :store, presence: true
  private
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "5MB以下の写真を選択してください")
    end
  end
end
