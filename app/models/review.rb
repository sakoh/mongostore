class Review
  include Mongoid::Document
  field :username, type: String
  field :content, type: String

  embedded_in :product
end
