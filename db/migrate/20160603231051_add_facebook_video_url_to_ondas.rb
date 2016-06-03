class AddFacebookVideoUrlToOndas < ActiveRecord::Migration[5.0]
  def change
    add_column :ondas, :facebook_video_url, :string
  end
end
