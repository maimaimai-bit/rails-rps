class GameController < ApplicationController
  def rules
    render({ :template => "game/rules" })
  end

  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    
    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game/play" })
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    
    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render({ :template => "game/play" })
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    
    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render({ :template => "game/play" })
  end
end 
