class ChangingPublishToPublished < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :publish, :published
  end
end
