class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :event
  belongs_to :user

  validates :event, presence: true
  validates :user, presence: true

  scope :persisted, -> { where "id IS NOT NULL" }
end
