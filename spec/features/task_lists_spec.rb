require 'rails_helper'
require 'capybara/rails'

feature 'Task lists' do

  scenario 'User can view task lists and add a task' do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")

    # Add a task to "Work List"
    first(:link, "+ Add Task").click

    fill_in "task[description]", with: "Do this task"
    select "2015", from: "task[due_date(1i)]"
    select "06", from: "task[due_date(2i)]"
    select "05", from: "task[due_date(3i)]"
    click_on "Create Task"

    expect(page).to have_content("Do this task")
    expect(page).to have_content("Task was created successfully!")
  end

end