class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sender_conversations, class_name: 'Conversation', foreign_key: 'sender_id'
  has_many :recipient_conversations, class_name: 'Conversation', foreign_key: 'recipient_id'

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
