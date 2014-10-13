class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActsAsPage

  field :text, type: String

end
