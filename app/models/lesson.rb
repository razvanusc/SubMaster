class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :bookings, dependent: :delete_all

  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :duration, presence: true
  enum status: { Open: 0, Pending: 1, Cancelled: 2, Confirmed: 3, Archived: 4 }

  def bookings_for_lessons
    #find all the boats and the bookings belonging to the boats
    # boats.map do | boat|
    #   boat.bookings
    # end.flatten
    Booking.all.joins(:lesson).where('lessons.user_id = ?', id)
  end

  def urgent
    time = (start_time - Time.now) / 3600
    return "URGENT!!!" if time < 24
  end

  # def image
  #   if lesson.subject == "crossfit"
  #     background
  #   end
  # end

  # def status
  #   bookings.any? {|b| b.status == 'Confirmed'} ? "Confirmed" : "Pending"
  # end
end
