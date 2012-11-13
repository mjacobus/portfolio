class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :company_website
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
