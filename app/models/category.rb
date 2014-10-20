class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name, type: String

  slug  :name

  validates :name, presence: true
  validates_uniqueness_of :name

  default_scope -> {order_by created_at: :desc}

  belongs_to :prototype
  has_many :products, dependent: :destroy

  after_save :transfer_options

  def transfer_options
    self.products.each do |product|
      product.get_parent_options
    end
  end

end
