class BannedWordsController < ApplicationController

  def add
    BannedWords.create!(params[:word])
    redirect_to root_path
  end

end
