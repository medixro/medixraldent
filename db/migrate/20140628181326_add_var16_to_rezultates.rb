class AddVar16ToRezultates < ActiveRecord::Migration
  def change
    add_column :rezultates, :var16, :string
  end
end
