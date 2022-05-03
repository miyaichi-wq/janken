class JankensController < ApplicationController
  def new
    if session[:user].present?
      @user = User.find(session[:user])
    else
      @user = User.create(name: 'guest', win: 0)
      session[:user] = @user.id
    end
  end

  def create
    @user = User.find(session[:user])
    # 自分の出した手と、CPUの手をDBに登録
    @hand = params[:hand]
    @cpu_hand = ['グー', 'チョキ', 'パー'].sample
    @buttle = @user.buttles.create(my_hand: @hand, cpu_hand: @cpu_hand, token: SecureRandom.urlsafe_base64)
    # 勝敗判定
    if ['グー', 'チョキ', 'パー'].include?(@hand)
      redirect_to janken_path(hand: @hand)
    else
      render :new
    end
  end

  def show
    # 結果表示
    @hand = params[:hand]
  end

  private

  def hand_params
    params.require.permit(:hand)
  end
end
