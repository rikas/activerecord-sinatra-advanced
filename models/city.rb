class City < ActiveRecord::Base
  has_many :restaurants

  scope :by_name, -> { order(name: :asc) }
end