class CreateThursdays < ActiveRecord::Migration[6.0]
  def change
    create_table :thursdays do |t|
      t.boolean :available, default: false
      t.integer :start
      t.integer :end
      t.references :doctor

      t.timestamps
    end
  end
end
