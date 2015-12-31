class WorksImage < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :work

  validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                 message: "should be either .jpeg, .jpg, .png, .bmp"
end
