class BannedWordsController < ApplicationController
  
  def add
    BannedWord.create!(params[:word])
    redirect_to root_path
  end
end
