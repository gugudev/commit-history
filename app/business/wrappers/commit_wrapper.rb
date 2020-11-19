module Wrappers

  class CommitWrapper

    attr_reader :sha, :message, :commiter_name, :commiter_email, :time_commit,
      :link_commit

    def initialize(sha, message, commiter_name, commiter_email, time_commit, link_commit)
     @sha, @message, @commiter_name, @commiter_email, @link_commit = sha, message, 
       commiter_name, commiter_email, link_commit
     @time_commit = Time.parse(time_commit)
    end

  end

end
