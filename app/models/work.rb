class Work < ActiveRecord::Base
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
