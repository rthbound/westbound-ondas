class AddYoutubeIdToOndas < ActiveRecord::Migration[5.0]
  def change
    add_column :ondas, :youtube_id, :string
  end
end
