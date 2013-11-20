class Article < ActiveRecord::Base

  # as getter method is manually written
  attr_writer :tag_names
  attr_accessible :content, :name, :tag_names

  #associations
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  # callbacks
  after_save :assign_tags

  # Virtuals attributes
  def tag_names
  	# each vl return tag object
  	self.tags.map(&:name).join(' ')
  end
  def assign_tags
  	if @tag_names
  		# as map return the processed object, it vl return tag object, each vl return tag_name
  	   self.tags = @tag_names.split(/\s+/).map do |tag_name|
	       Tag.find_or_create_by_name(tag_name)
	  	end
    end
  end

end
