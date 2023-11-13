class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:message]
    url1 = 'https://image1.masterfile.com/getImage/640-02771304em-coach-cheering.jpg'
    url2 = 'https://image1.masterfile.com/getImage/640-01349884em-coach-with-clipboard-and-headset-shrugging.jpg'
    url3 = 'https://image1.masterfile.com/getImage/640-02771195em-male-head-coach-pointing-finger-with-headset.jpg'

    if @message.downcase == 'i am going to work'
      @answer = 'Great!'
      @coach_img = url1
    elsif @message.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
      @coach_img = url2
    else
      @answer = "I don't care, get dressed and go to work!"
      @coach_img = url3
    end
  end
end
