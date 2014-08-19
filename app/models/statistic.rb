class Statistic < ActiveRecord::Base

  def self.users_roles
    roles = Role.all
    role_count= []
    roles.each do |role|
      role_count << User.count(:id, conditions: {role_id: role.id})
    end
    role_count
  end

end