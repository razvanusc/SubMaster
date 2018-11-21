class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  enum status: { Open: 0, Pending: 1, Cancelled: 2, Confirmed: 3, Archived: 4 }

  before_save :update_lesson_status

  def confirm!
    self.update! status: "Confirmed"
  end

  private

  def update_lesson_status
    if lesson.status != "Confirmed" && lesson.status != "Cancelled"
      lesson.update! status: status
    end
    if status == "Confirmed"
      lesson.bookings.where.not(id: id).destroy_all
    end
  end


  # def max_3
  #   if booking.size > 3
  #     puts "Sorry can't create more bookings for this class"
  #   end
  # end
end
