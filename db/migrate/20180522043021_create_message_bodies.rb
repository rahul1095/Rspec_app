class CreateMessageBodies < ActiveRecord::Migration
  def change
    create_table :message_bodies do |t|
      t.string :body

      t.timestamps
    end
  end
end
