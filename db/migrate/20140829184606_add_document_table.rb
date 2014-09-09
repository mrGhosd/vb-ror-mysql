class AddDocumentTable < ActiveRecord::Migration
  def change
    create_table :contract_documents, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :file_name
      t.text :main_text
      t.boolean :enabled
      t.boolean :contract_type
      t.timestamps
    end
  end
end
