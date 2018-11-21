class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :bookings, dependent: :delete_all

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
    time = (start_date - Time.now) / 3600
    return "URGENT Request!" if time < 48
  end

  def self.future_lessons
    where('start_date > ?', Time.zone.now)
  end

  def self.preferences(user)
    where('address = ?', user.address)
    .where('ARRAY[?]::integer[] @> ARRAY[subject_id]::integer[]', user.subject_ids)
  end

  def can_be_subbed_by?(subber)
    Open? && user != subber
  end

  def can_be_managed_by?(requester)
    Pending? && user == requester
  end

  def full?
    bookings.count >= 3
  end

  include PgSearch
  pg_search_scope :search_by_name_and_description,
    against: [:name, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
