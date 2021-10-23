module RepositoriesHelper
  class GithubApiAdapter

    def initialize
      @ROUTES = {:search => "/search/repositories"}
      @client = Octokit::Client.new()
    end

    def get_repositories params
      if params[:search].present?
        @client.get(@ROUTES[:search], query: {q: "#{params[:search]} in:name"})
      end
    end

  end
end
