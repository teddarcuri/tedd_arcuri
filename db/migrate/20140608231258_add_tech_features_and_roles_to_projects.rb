class AddTechFeaturesAndRolesToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :myrole, :text
  	add_column :projects, :features, :text
  	add_column :projects, :technologies, :text
  end
end
