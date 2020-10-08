class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :lists
end
