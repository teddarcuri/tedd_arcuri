class ChnageRoleFromTextToString < ActiveRecord::Migration
  def change
  	change_column :projects, :myrole, :string
  end
end
