class Message < ActiveRecord::Base
  validates :author, presence: true
end
