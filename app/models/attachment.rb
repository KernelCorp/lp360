class Attachment
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name
  embedded_in :page

  has_mongoid_attached_file :file
  validates_attachment_size :file, :less_than => 100.megabytes
  validates_attachment_presence :file
  do_not_validate_attachment_file_type :file
end
