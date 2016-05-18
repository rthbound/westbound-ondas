class AddDestroyedAtToOndas < ActiveRecord::Migration[5.0]
  def change
    add_column :ondas, :destroyed_at, :datetime
  end
end
