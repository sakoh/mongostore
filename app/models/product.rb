class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia
  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date

  validates_presence_of :name, :price, :released_on

  embeds_many :reviews
end
