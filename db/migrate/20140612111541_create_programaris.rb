class CreateProgramaris < ActiveRecord::Migration
  def change
    create_table :programaris do |t|
      t.string :data
      t.string :ora
      t.string :medicul
      t.string :tip
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
