class StatisticsController < ApplicationController
  def show
    p "*****************" * 10
    p array = params
    p answers = params[:statistic]

    connection = Hash.new
    array.each do |key, value|
      if key.to_i && value.to_i
        connection[key.to_i] = value.to_i
      end
    end

    p connection
    
    array = array.each_slice(3)
    array.each do |group|
      group.each do |item|
        item.
    end
    redirect_to users_log_path
  end
end
