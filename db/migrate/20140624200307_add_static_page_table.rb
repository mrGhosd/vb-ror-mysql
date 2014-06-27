class AddStaticPageTable < ActiveRecord::Migration
  def change
    create_table :static_pages, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :title
      t.string :url
      t.text :description
      t.timestamps
    end
  end
end
