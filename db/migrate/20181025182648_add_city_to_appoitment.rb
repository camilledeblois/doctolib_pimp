class AddCityToAppoitment < ActiveRecord::Migration[5.2]
  def change
    add_reference :appoitments, :city, foreign_key: true
  end
end
