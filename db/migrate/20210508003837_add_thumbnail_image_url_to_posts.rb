class AddThumbnailImageUrlToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :thumbnail_image_url, :string
  end
end
