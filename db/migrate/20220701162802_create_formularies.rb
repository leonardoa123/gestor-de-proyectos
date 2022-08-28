class CreateFormularies < ActiveRecord::Migration[7.0]
  def change
    create_table :formularies do |t|
      t.string :name
      t.string :description
      t.date :date_begin
      t.date :date_end
      t.string :condition

      t.timestamps
    end
  end
end
