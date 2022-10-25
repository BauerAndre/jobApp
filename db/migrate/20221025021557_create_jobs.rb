class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :description
      t.integer :salary
      t.string :title
      t.string :japanese
      t.string :benefits
      t.string :moreInfo

      t.timestamps
    end
  end
end
