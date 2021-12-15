# frozen_string_literal: true

class HomeController < ApplicationController
  def destroy_all_completed
    TodoItem.where(completed: true).destroy_all
    redirect_to root_url, notice: 'Successfully deleted all completed to-do\'s'
  end
end
