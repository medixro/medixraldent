class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :nume
      t.string :prenume
      t.string :adresa
      t.string :nrtel
      t.string :email
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
