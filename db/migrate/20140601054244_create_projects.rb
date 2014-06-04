class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :kind, :languages 
      t.text :description

      t.timestamps
    end
  end
end
