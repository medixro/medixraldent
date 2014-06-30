class AddVar10ToRezultates < ActiveRecord::Migration
  def change
    add_column :rezultates, :var10, :string
  end
end
