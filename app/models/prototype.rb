class Prototype
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :opts, type: Array

  validates :name, presence: true
  validates_uniqueness_of :name

  default_scope -> {order_by name: :inc}

  has_many :categories
  has_many :products

  after_save :transfer_options

  def transfer_options
    products_to_update = []
    self.categories.each do |category|
      products_to_update = products_to_update | category.products
    end
    products_to_update = products_to_update | self.products
    products_to_update.each do |product|
      product.get_parent_options
    end
  end

end
