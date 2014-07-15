class Task < ActiveRecord::Base

  belongs_to :task_list

  validates :description, presence: {message: "Your task could not be created"}

  def self.sort_by_due_date
    all.sort_by { |task| task.due_date }
  end
end