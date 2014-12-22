class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActsAsPage

  belongs_to :parent, class_name: Page.to_s
  has_many :pages
  embeds_many :attachments, cascade_callbacks: true

  accepts_nested_attributes_for :attachments, allow_destroy: true

  scope :first_lvl, ->{ where parent: nil}
end
