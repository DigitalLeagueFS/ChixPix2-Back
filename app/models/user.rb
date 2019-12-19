class User < ApplicationRecord
  belongs_to :position
  has_many :tasks
end
