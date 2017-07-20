class Book < ApplicationRecord
  STATUSES = %w[wanted selected available]

  scope :wanted,    -> { where(status: 'wanted') }
  scope :selected,  -> { where(status: 'selected') }
  scope :available, -> { where(status: 'available') }
end
