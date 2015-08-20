class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.integer "page_id"
      t.string "name", :limit=>50
      t.integer "position", :default=>1
      t.boolean "visible", :default=>false
      t.string "content_type", :limit=>50
      t.text "content"

      t.timestamps null: false
    end

    add_index("sections", "page_id")
    add_index("sections", "content_type")
  end

  def down
  	drop_table :sections
  end

end
