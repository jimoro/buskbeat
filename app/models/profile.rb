class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy

  # Paperclip avatar
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :act, length: { minimum: 2 }, presence: true
  validates :bio, length: { minimum: 20 }, presence: true


end
