class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.references :department, foreign_key: true
      t.references :specialization, foreign_key: true
    end
  end
end