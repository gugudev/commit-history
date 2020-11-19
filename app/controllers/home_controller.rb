class HomeController < ApplicationController

  def index
    @repository = HttpRepositoryProviderAdapters::GithubAdapter
                    .new('gugudev/commit-history')
                    .fetch_commits
  end

end
