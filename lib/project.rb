class Project
  attr_accessor :backers, :title

  def initialize(project_name)
    @backers = []
    @title = project_name
  end

  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)
      backer.backed_projects << self
    end
  end

end