class Work < ActiveRecord::Base
  dragonfly_accessor :logo
  has_many :works_images
  accepts_nested_attributes_for :works_images, allow_destroy: true

  after_save :update_slug, :add_rank

  validates_uniqueness_of :slug

  validates_property :format, of: :logo, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                   message: "should be either .jpeg, .jpg, .png, .bmp"
  def to_param
    slug
  end

  protected

  def update_slug
    self.update_column(:slug, "#{client} #{campaign}".parameterize)
  end

  def add_rank
    self.update_column(:rank, Work.count)
  end
end
