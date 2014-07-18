class Task < ActiveRecord::Base

  belongs_to :task_list

  validates_presence_of :description

  def self.sort_by_due_date
    all.sort_by { |task| task.due_date }
  end
end