class CreateMoussaillons < ActiveRecord::Migration[5.1]
  def change
    create_table :moussaillons do |t|
      t.string   :pseudo
      t.string   :email
      t.text     :biographie
    end
  end
end
