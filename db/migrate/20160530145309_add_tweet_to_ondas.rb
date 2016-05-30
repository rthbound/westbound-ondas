class AddTweetToOndas < ActiveRecord::Migration[5.0]
  def change
    add_column :ondas, :tweet, :string
  end
end
