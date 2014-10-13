class Partner
  include Mongoid::Document
  include Mongoid::Timestamps

  field :role, type: String, default: 'dealer'
  field :address, type: String
  field :phone, type: String
  field :web, type: String

  validates :role, presence: true, inclusion: { in: %w(dealer distributor) }

  default_scope -> {order_by created_at: :desc}

end
