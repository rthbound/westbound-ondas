class AddOndaRefToSheets < ActiveRecord::Migration[5.0]
  def change
    add_reference :sheets, :onda, foreign_key: true
  end
end
