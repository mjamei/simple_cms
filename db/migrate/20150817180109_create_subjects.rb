class CreateSubjects < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
      t.string 'name', :null=>false, :limit=>50
      t.integer 'position', :default=>1
      t.boolean 'visible', :default=>false, :null=>false
      t.timestamps null: false
    end
  end

  def down
  	drop_table :subjects
  end
end
