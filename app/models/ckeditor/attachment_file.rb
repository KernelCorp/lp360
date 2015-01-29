class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_mongoid_attached_file :data

  validates_attachment_size :data, :less_than => 100.megabytes
  validates_attachment_presence :data
  do_not_validate_attachment_file_type  :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
