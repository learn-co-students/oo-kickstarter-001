require "pry"
class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(proj)
    if !@backed_projects.include?(proj)
      @backed_projects << proj
      proj.add_backer(self)
    else
      return
    end
  end
end
