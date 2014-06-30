class CreateRezultates < ActiveRecord::Migration
  def change
    create_table :rezultates do |t|
      t.string :exam
      t.string :diagn
      t.string :image
      t.string :var
      t.string :var1
      t.string :var2
      t.string :var3
      t.string :var4
      t.string :var5
      t.belongs_to :pacient, index: true

      t.timestamps
    end
  end
end
