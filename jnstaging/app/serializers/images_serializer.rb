class ImagesSerializer < ActiveModel::Serializer
  attributes :title, :medium, :size, :date, :category_id, :category, :filetype, :url, :places
  belongs_to :category
end
