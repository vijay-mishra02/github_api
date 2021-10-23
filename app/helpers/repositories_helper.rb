module RepositoriesHelper
  class GithubApiAdapter

    def initialize
      @client = Octokit::Client.new()
    end

    def get_repositories params
      if params[:search].present?
        @client.get('/search/repositories', query: {q: "#{params[:search]} in:name"})
      end
    end

  end
end
