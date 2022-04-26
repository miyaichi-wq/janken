class User < ApplicationRecord
  validates :name, presence: true
  validates :win, presence: true
end
