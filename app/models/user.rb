# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy
  has_many :event_attendings, foreign_key: :event_attendee_id, dependent: :destroy
  has_many :attended_events, through: :event_attendings, dependent: :destroy
  has_many :event_invitations, foreign_key: :user_invited_id, dependent: :destroy
  has_many :invited_events, through: :event_invitations, dependent: :destroy

  validates :username, presence: true, uniqueness: true, allow_nil: true
end
