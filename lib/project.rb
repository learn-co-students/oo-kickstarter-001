require "pry"

class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
  # Project - More Advanced #add_backer
  # also adds the project to the backer's backed_projects array
    # binding.pry
    @backers << backer
    backer.backed_projects << self
  end

end
