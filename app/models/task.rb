class Task < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :result
end
