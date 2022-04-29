class User < ApplicationRecord
  has_many :buttles
  
  validates :name, presence: true
  validates :win, presence: true
end
