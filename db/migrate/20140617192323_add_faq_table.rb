class AddFaqTable < ActiveRecord::Migration
  def change
    create_table :faqs, :options => 'COLLATE=utf8_general_ci' do |t|
      t.text :question
      t.text :answer
      t.timestamps
    end
  end
end

