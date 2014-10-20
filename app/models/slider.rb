class Slider
  include Mongoid::Document
  field :is_active, type: Mongoid::Boolean, default: false
  has_and_belongs_to_many :products

  before_update :check_active

  def self.active
    where(is_active: true).first
  end

  protected
  def check_active
    if is_active_changed? && is_active == true
      Slider.where(is_active: true).update_all is_active: false
    end
  end
end
