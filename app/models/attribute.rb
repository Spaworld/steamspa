class Attribute < ActiveRecord::Base

  validates_presence_of :name, :value, :variation_id

  belongs_to :variation

end
