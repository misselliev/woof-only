class PostsController < ApplicationController
  before_action :log_in, only: %i[new create index]
  def new
  end

  def create
  end

  def index
  end
end
