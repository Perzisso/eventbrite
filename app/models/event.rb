class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :user
    validates :start_date, presence: true #, No create of update before actual date
    validates :duration, presence: true #, positif, multiple of 5 and in minutes
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }
    validates :price, presence: true, length: { in: 1..1000 }
    validates :location, presence: true
end
