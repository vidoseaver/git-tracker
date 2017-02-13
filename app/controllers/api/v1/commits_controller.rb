class Api::V1::CommitsController < ApplicationController
  def create
    Commit.create(commits_params)
  end

  private
  def commits_params
    payload = params[:payload]
    json =  JSON.parse(payload, symbolize_names:true)
    name =  json[:head_commit][:committer][:name]
    message = json[:head_commit][:message]
    created = json[:head_commit][:timestamp]
    shaw = json[:head_commit][:id][0..4]

    {short_sha: shaw, author: name, message: message, created: created}
  end

end
