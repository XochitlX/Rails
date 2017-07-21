class StatisticsController < ApplicationController
  def show
    p "*****************" * 10
    p "array"
    p array = params
    p "estadistica"
    p answers = params[:statistic].split(" ")
    # p answers[0]
    # p answers[1]
    # p answers[2]
    connection = Hash.new
    array.each do |key, value|
      if key.to_i && value.to_i
        connection[key.to_i] = value.to_i
      end
    end
    p "Relacion"
    p connection

    

    value_f = []
    connection.each do |key, value|
      value_f << value - 1
    end
    p value_f
    value_f.delete_at(0)
    p value_f
    p value_f << nil
    p value_f
    p value_f.each_slice(3)

    p "Grupos"
    answers = answers.each_slice(3)
    
    @count_right = 0
    answers.each_with_index do |group, index_p|
      group.each_with_index do |item, index|
        item == "t" ? item = true : item = false
        
        if item == true && index == value_f[index_p]
          p "entra"
          p @count_right += 1
        end
      end
    end
    p @count_right
  end
end
