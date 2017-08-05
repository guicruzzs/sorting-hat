class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :has_invitation

  def has_invitation
    return unless email.present?
    if Invitation.where(email: email).count.zero?
      errors.add(:invitation, I18n.t('errors.messages.has_no_invitation'))
    end
  end
end
