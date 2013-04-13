class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :page
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
