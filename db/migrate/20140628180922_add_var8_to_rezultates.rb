class AddVar8ToRezultates < ActiveRecord::Migration
  def change
    add_column :rezultates, :var8, :string
  end
end
