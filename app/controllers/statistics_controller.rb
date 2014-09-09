class StatisticsController < ApplicationController
  def index
    @users = Statistic.users_roles
  end
end