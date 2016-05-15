class CreateSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :sheets do |t|
      t.text :url
      t.string :title

      t.timestamps
    end
  end
end
