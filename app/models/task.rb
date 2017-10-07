class Task < ApplicationRecord
  belongs_to :user

  def get_time_requried
    0.second
  end
end
