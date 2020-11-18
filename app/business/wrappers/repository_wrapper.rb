module Wrappers

  class RepositoryWrapper
    
    attr_reader :name, :commits

    def initialize(name, commits)
      @name, @commits = name, commits
    end

  end

end
