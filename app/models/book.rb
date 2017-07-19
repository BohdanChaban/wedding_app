class Book < ApplicationRecord
  STATUSES = %w[wanted selected available]

  scope :wanted,    -> { where(status: 'wanted').order('books.author ASC') }
  scope :selected,  -> { where(status: 'selected').order('books.author ASC') }
  scope :available, -> { where(status: 'available').order('books.author ASC') }
end
