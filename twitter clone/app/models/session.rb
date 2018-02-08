class Session < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  before_validation :generate_new_session

  private
  def generate_new_session
    self.token = SecureRandom.urlsafe_base64
  end
end
