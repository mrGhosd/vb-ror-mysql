class AddPartnersTable < ActiveRecord::Migration
  def change
    create_table :partners, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :partner_title
      t.text :partner_description
      t.string :partner_url
      t.boolean :enabled, default: true
      t.has_attached_file :image
      t.timestamps
    end
  end
end
