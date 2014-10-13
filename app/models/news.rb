class News
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActsAsPage

  field :title, type: String
  field :text, type: String

  validates :title, presence: true
  validates_uniqueness_of :title

  default_scope -> {order_by created_at: :desc}

end
