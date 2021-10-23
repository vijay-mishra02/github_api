class RepositoriesController < ApplicationController

  def index
    github_adapter = RepositoriesHelper::GithubApiAdapter.new()
    @repositories = github_adapter.get_repositories(permitted_params)
  end

  private

  def permitted_params
    params.permit(:search)
  end

end
