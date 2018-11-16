class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_subjects, dependent: :delete_all
  has_many :bookings, dependent: :delete_all

  mount_uploader :photo, PhotoUploader

  serialize :weekday_preference
  serialize :daytime_preference
end
