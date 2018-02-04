class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.string :auteur
      t.text :contenu

      t.timestamps
    end
  end
end
