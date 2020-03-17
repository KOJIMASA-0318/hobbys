class PagesController < ApplicationController
    before_action :authenticate_user!, only: [:main]

  def index
  end

  def main
  end
end
