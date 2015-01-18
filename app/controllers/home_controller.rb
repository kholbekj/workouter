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
    redirect_to action: 'index'
  end

  def workout
    type =  case cookies[:type]
            when 'str' then 'strength'
            when 'flx' then 'flex'
            when 'brn' then 'burn'
            end

    @workout = Workout.focus(type).sample
  end
end
