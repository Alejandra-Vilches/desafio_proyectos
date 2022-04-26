class CreateProyects < ActiveRecord::Migration[7.0]
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :description
      t.string :startdate
      t.string :enddate
      t.string :state

      t.timestamps
    end
  end
end
