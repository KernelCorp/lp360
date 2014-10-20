class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  field :name, type: String
  field :description, type: String
  field :video, type: String

  validates :name, presence: true
  validates_uniqueness_of :name

  default_scope -> {order_by created_at: :desc}

  belongs_to :prototype
  belongs_to :category
  embeds_many :options

  accepts_nested_attributes_for :options

  has_mongoid_attached_file :image, styles: { medium: '300x225>'}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  before_create :get_parent_options

  def get_parent_options
    options_list = []
    options_list = options_list | self.prototype.opts unless self.prototype.nil?
    options_list = options_list | self.category.prototype.opts unless (self.category.nil? || self.category.prototype.nil?)
    options_list.each do |option|
      self.options << Option.new(name: option, value: '') if self.options.where(name: option).first.nil?
    end
  end

end
