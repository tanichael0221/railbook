class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.string :memorable_type
      t.integer :memorable_id
      t.string :body

      t.timestamps
    end
  end
end
