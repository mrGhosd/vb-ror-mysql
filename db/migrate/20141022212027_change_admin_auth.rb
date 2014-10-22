class ChangeAdminAuth < ActiveRecord::Migration
  def change
    add_column :users, :access_role, :string,  default: "client"
    admin = User.find_by id: 132
    if admin
      admin.access_role = "admin"
      admin.save
    end
  end
end
