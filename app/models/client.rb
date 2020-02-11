class Client < ApplicationRecord
  belongs_to :company
  has_many :task, dependent: :destroy
end
