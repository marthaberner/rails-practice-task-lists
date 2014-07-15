require 'rails_helper'

describe Task do
  it 'Task description cannot be empty' do
    task = Task.new(due_date: "2014-07-17", description: nil)

    expect(task.save).to eq false
  end
end