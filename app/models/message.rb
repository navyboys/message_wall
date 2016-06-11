class Message < ActiveRecord::Base
  validates :author, presence: true
  validates :url, format: { with: /(\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z)?/ }
end
