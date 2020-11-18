module HttpRepositoryProviderAdapters

  class GithubAdapter < AbstractAdapter
    URL_API = 'https://api.github.com'

    def initialize(repository_name, config = {})
      @repository_name = repository_name
      @url_params_fetch_commits = "/repos/#{repository_name}/commits"

      super(URL_API, config)
    end

    def fetch_commits
      json_response = fetch(url_fetch_commits)

      map_to_wrapper(json_response)
    end

    def url_fetch_commits
      URL_API + @url_params_fetch_commits
    end

    private

    def map_to_wrapper(json_response)

      commits = json_response.map do |commit_json|

        Wrappers::CommitWrapper.new(
          commit_json[:sha],
          commit_json[:commit][:message],
          commit_json[:commit][:author][:name],
          commit_json[:commit][:author][:email],
          commit_json[:commit][:author][:date]
        )

      end

      Wrappers::RepositoryWrapper.new(@repository_name, commits)
    end

  end

end
