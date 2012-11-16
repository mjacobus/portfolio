class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.date :started_at
      t.text :description
      t.string :website
      t.string :slug

      t.timestamps
    end
  end
end
