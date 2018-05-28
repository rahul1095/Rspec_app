class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :tex

      t.timestamps
    end
  end
end
