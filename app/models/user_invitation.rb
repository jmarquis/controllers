# == Schema Information
#
# Table name: user_invitations
#
#  id              :bigint           not null, primary key
#  claim_token     :string
#  email           :string
#  status          :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  invitee_user_id :bigint
#  inviter_user_id :bigint
#
# Indexes
#
#  index_user_invitations_on_claim_token      (claim_token)
#  index_user_invitations_on_invitee_user_id  (invitee_user_id)
#  index_user_invitations_on_inviter_user_id  (inviter_user_id)
#
class UserInvitation < ApplicationRecord

  include Rails.application.routes.url_helpers

  STATUS_UNCLAIMED = 'unclaimed'.freeze
  STATUS_CLAIMED = 'claimed'.freeze

  belongs_to :invitee_user, class_name: User.name, optional: true
  belongs_to :inviter_user, class_name: User.name, optional: true

  validates :status, inclusion: { in: [STATUS_UNCLAIMED, STATUS_CLAIMED] }

  before_validation on: :create do |user_invitation|
    user_invitation.claim_token ||= SecureRandom.urlsafe_base64(20)
    user_invitation.status ||= STATUS_UNCLAIMED
  end

  def registration_url
    new_user_registration_url(invitation_token: claim_token, host: 'https://dol-003.info')
  end

  def send_email
    UserMailer.with(email:, inviter_user_id: inviter_user.id, invitation_token: claim_token).invitation.deliver_later
  end

end
