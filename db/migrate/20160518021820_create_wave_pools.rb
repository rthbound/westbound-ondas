class CreateWavePools < ActiveRecord::Migration[5.0]
  def change
    create_table :wave_pools do |t|
      t.text :url

      t.timestamps
    end
  end
end
