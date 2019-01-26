class Task < ActiveRecord::Base
  STATUSES = {:pending => 0, :in_progress => 1, :completed => 2 }
  enum status: STATUSES
  belongs_to :project
end
