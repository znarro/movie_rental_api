class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.date :release_date
      t.references :category, null: false, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
