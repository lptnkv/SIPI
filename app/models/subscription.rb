class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :event, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }
  validate :email_check, unless: -> { user.present? }
  validate :self_subscription, if: -> { user.present? }

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def email_check
    unless User.find_by(email: user_email).nil?
      errors.add(:user_email, :exiting_email)
    end
  end

  def self_subscription
    if user == event.user
      errors.add(:event, :selsubscription)
    end
  end
end
