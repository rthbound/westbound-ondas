class AddTweetOverrideToSheets < ActiveRecord::Migration[5.0]
  def change
    add_column :sheets, :tweet_override, :string
  end
end
