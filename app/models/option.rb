class Option
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :value, type: String

  validates :name, presence: true

  default_scope -> {order_by name: :desc}

  embedded_in :product

end
