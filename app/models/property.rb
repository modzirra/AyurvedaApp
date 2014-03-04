class Property < ActiveRecord::Base
	belongs_to :ingredient

	attr_accessor :new_property_name
  	before_save :create_property_from_name

  def create_property_from_name
    create_property(:name => new_property_name) unless new_propertyd_name.blank?
  end
end
