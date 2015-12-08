class Work < ActiveRecord::Base
  dragonfly_accessor :logo
  has_many :works_images
  accepts_nested_attributes_for :works_images, allow_destroy: true

  after_save :update_slug

  validates_uniqueness_of :slug

  def to_param
    slug
  end

  protected

  def update_slug
    self.update_column(:slug, client.parameterize)
  end
end
