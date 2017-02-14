class CommitsController < ApplicationController
  def index
    @commits = Commit.where(created: (Time.now - 24.hours)..Time.now).limit(10)
  end
end
