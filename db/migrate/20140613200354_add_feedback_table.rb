class AddFeedbackTable < ActiveRecord::Migration
  def change
    create_table :feedbacks, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :feedback_author
      t.text   :feedback_text
      t.integer  :feedback_for, default: 0
      t.integer  :feedback_against, default: 0
      t.timestamps
    end
  end
end
