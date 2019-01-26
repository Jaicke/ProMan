class Question < ActiveRecord::Base
  enum status: { :close => 0, :open => 1 }
  belongs_to :user
end
