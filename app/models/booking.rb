class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  enum status: { Pending: 0, Cancelled: 1, Confirmed: 2, Archived: 3 }


  def confirm!
    self.update! status: "Confirmed"
    lesson.update! status: "Confirmed"
  end
end
