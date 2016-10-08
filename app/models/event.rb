class Event < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :ecategory
end
