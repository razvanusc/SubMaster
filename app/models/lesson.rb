class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :bookings, dependent: :delete_all

  enum status: { Open: 0, Pending: 1, Cancelled: 2, Confirmed: 3, Archived: 4 }

  def bookings_for_lessons
    #find all the boats and the bookings belonging to the boats
    # boats.map do | boat|
    #   boat.bookings
    # end.flatten
    Booking.all.joins(:lesson).where('lessons.user_id = ?', id)
  end

  # def status
  #   bookings.any? {|b| b.status == 'Confirmed'} ? "Confirmed" : "Pending"
  # end
end
