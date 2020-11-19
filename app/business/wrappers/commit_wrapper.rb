module Wrappers

  class CommitWrapper

    attr_reader :sha, :message, :commiter_name, :commiter_email, :time_commit

    def initialize(sha, message, commiter_name, commiter_email, time_commit)
     @sha, @message, @commiter_name, @commiter_email = sha, message, commiter_name, commiter_email
     @time_commit = Time.parse(time_commit)
    end

  end

end
