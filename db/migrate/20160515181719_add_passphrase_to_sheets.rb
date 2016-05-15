class AddPassphraseToSheets < ActiveRecord::Migration[5.0]
  def change
    add_column :sheets, :passphrase, :string
  end
end
