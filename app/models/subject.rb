class Subject < ApplicationRecord
  has_many :lessons, dependent: :delete_all
  has_many :user_subjects, dependent: :delete_all
end
