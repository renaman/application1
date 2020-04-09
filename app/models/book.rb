class Book < ApplicationRecord
	validates :body, presence: true
	validates :title, presence: true
	validates :title, :body, presence: true, on: :update
end
