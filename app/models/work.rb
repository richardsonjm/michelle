class Work < ActiveRecord::Base
  dragonfly_accessor :logo
  has_many :works_images
  accepts_nested_attributes_for :works_images, allow_destroy: true
  validates_presence_of :client, :campaign
  normalize_attributes :client, :campaign, :challange, :insight, :strategy, :results

  before_validation :set_slug

  validates_uniqueness_of :slug, case_sensitive: false, message: "this client and campaign already exist"

  validates_property :format, of: :logo, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                   message: "should be either .jpeg, .jpg, .png, .bmp"
  def to_param
    slug
  end

  protected

  def set_slug
    self.slug = "#{client} #{campaign}".parameterize
  end
end
