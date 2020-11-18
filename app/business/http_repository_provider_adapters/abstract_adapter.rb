module HttpRepositoryProviderAdapters

  class AbstractAdapter

    def initialize(url_api, config = {})
      @url_api = url_api
    end

    def fetch(url = '', params = {})
      response = HTTParty.get(url)
      JSON.parse(response.body).map(&:with_indifferent_access)
    end

  end


end
