class CommitsController < ApplicationController
  def index
    warn params.inspect
    @commits = Commit.all
  end
end
