class AddVar6ToRezultates < ActiveRecord::Migration
  def change
    add_column :rezultates, :var6, :string
  end
end
