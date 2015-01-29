class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  field :position, type: Integer

  field :name, type: String

  slug  :name

  validates :name, presence: true
  validates_uniqueness_of :name

  default_scope -> {asc :position}

  belongs_to :prototype
  belongs_to :parent, class_name: 'Category', inverse_of: :children
  has_many :children, class_name: 'Category', inverse_of: :parent
  has_many :products, dependent: :destroy

  after_save :transfer_options

  def self.first_level
    where parent: nil
  end

  def has_children?
    children.empty?
  end

  def transfer_options
    self.products.each do |product|
      product.get_parent_options
    end
  end

end