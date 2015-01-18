class HomeController < ApplicationController
  def index
    @skip_navigation = true
    if cookies[:type].present?
      redirect_to workout_path
    end
  end

  def preferences
    cookies.permanent[:type] = params[:type]
    redirect_to workout_path
  end

  def clear_cookies
    cookies.delete(:type)
    redirect_to action: :index
  end

  def workout
    type =  case cookies[:type]
            when 'str' then 'strength'
            when 'abs' then 'abs'
            when 'brn' then 'burn'
            when 'hiit' then 'hiit'
            end

    if type.nil?
      redirect_to action: :clear_cookies
    end
    
    @workout = Workout.focus(type).sample
  end

  def introduction
    @images = (1..8).map {|i| "intro_#{i}.jpg" }
  end
end
