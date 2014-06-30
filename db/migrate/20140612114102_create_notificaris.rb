class CreateNotificaris < ActiveRecord::Migration
  def change
    create_table :notificaris do |t|
      t.string :text
      t.string :pacient_id
      t.string :var
      t.string :var1
      t.string :var2
      t.string :var3
      t.string :var4
      t.string :var5

      t.timestamps
    end
  end
end
