class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :act, length: { minimum: 2 }, presence: true
  validates :bio, length: { minimum: 20 }, presence: true

end
