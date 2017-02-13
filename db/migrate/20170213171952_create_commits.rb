class CreateCommits < ActiveRecord::Migration[5.0]
  def change
    create_table :commits do |t|
      t.string :short_sha
      t.string :author
      t.string :message
      t.string :created

      t.timestamps
    end
  end
end
