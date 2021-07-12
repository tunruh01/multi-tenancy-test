class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.belongs_to :account, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
