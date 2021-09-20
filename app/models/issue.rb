class Issue < ActiveRecord::Base
  belongs_to :task
  belongs_to :user
  belongs_to :user
end
