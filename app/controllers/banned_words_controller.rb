class BannedWordsController < ApplicationController

  def add
    BannedWords.create!(params[:word])
    @banned_words = BannedWords.list
  end

  def clear
    BannedWords.clear
    redirect_to root_path
  end

  def destroy
    redirect_to root_path
  end

end
