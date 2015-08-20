class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name", :limit=>50
      t.integer "permalink"
      t.integer "position", :default=>1
      t.boolean "visible", :default=>false
      t.timestamps null: false
    end

    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
  	drop_table :pages
  end
end
