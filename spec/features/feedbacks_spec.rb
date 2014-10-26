require 'spec_helper'

feature 'Feedback for User', :js do
  let!(:feedbacks_list) { create_list(:feedback, 5) }

  before do
    visit feedbacks_path
  end

  scenario 'visit feedbacks page' do
    feedbacks_list.each do |feedback|
      expect(page).to have_content(feedback.feedback_author)
    end
  end

  scenario 'create new feedback and see it on feedbacks page' do
    within ".feedback_form" do
      fill_in "feedback_author", with: "1323"
      fill_in "feedback_text", with: "#{100.times { |x| x }}"
      click_button "Оставить отзыв"
    end
    expect(page).to have_content("1323")
  end
end

feature 'Feedback for Admin', :js do
  let!(:delete_feedback) { create :feedback, feedback_author: "DELETE" }
  let!(:feedbacks_list) { create_list(:feedback, 5) }


  before do
    login_as :admin
    visit admin_feedbacks_path
  end

  scenario 'show all available specks' do
    feedbacks_list.each do |feedback|
      expect(page).to have_content(feedback.feedback_author)
    end
  end

  scenario 'delete one stock' do
    click_link 'Удалить', match: :first
    sleep 2
    expect(page).to_not have_content(delete_feedback.feedback_author)
  end
end