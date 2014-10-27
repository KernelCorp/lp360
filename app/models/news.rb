class News
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :text, type: String

  validates :title, presence: true
  validates_uniqueness_of :title

  default_scope -> {desc :created_at}

end
