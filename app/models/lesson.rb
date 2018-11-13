class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :bookings, dependent: :delete_all

  def bookings_for_lessons
    #find all the boats and the bookings belonging to the boats
    # boats.map do | boat|
    #   boat.bookings
    # end.flatten
    Booking.all.joins(:lesson).where('lessons.user_id = ?', id)
  end
end
