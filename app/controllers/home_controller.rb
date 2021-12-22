# frozen_string_literal: true

class HomeController < ApplicationController
  def destroy_all_completed
    if TodoItem.where(completed: true).empty?
      redirect_to root_url, notice: 'You\'ll need to complete some tasks before you can delete them all'
    else
      TodoItem.where(completed: true).destroy_all
      redirect_to root_url, notice: 'Successfully deleted all completed to-do\'s'
    end
  end
end
