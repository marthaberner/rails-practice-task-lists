require 'rails_helper'

describe Task do
  it 'Task description cannot be empty' do
    task = Task.new(due_date: "2014-07-17", description: nil)

    expect(task.save).to eq false
  end

  it 'Orders tasks by due date, from soonest to latest' do
    task1 = Task.create(due_date: "2014-07-18", description: "Due on the 18th")
    task2 = Task.create(due_date: "2014-07-17", description: "Due on the 17th")

    expected = [task2, task1]

    expect(Task.sort_by_due_date).to eq(expected)
  end
end