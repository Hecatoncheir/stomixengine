class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.text :advantages
      t.string :colors
      t.string :packing
      t.text :expense
      t.string :dilution
      t.string :pdf_1
      t.string :pdf_2
      t.string :pdf_3

      t.timestamps
    end
  end
end
