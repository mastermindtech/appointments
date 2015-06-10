class CreateTableAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :place
      t.string :availability
      t.timestamps
    end
  end
end
