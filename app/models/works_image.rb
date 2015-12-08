class WorksImage < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :work
end
