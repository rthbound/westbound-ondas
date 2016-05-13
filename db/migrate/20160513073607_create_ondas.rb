class CreateOndas < ActiveRecord::Migration[5.0]
  def change
    create_table :ondas do |t|
      t.string :card_title
      t.string :card_description
      t.text :card_image_url
      t.string :page_title
      t.string :page_header
      t.text :page_image
      t.integer :page_image_width
      t.integer :page_image_height
      t.text :page_image_link_target

      t.timestamps
    end
  end
end
