class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :list_link, :image_link, :items
end
