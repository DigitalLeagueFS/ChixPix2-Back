class Task < ApplicationRecord
  belongs_to :client
  belongs_to :user, optional: true
  belongs_to :result, optional: true
end
