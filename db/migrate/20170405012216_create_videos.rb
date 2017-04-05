class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :yt_content_id
      t.string :uri
      t.string :title
      t.text :description
      t.references :user

      t.timestamps
    end

  end
end
