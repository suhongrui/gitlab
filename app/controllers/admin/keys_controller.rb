#coding:utf-8
class Admin::KeysController < Admin::ApplicationController
  before_filter :user, only: [:show, :destroy]

  def show
    @key = user.keys.find(params[:id])

    respond_to do |format|
      format.html
      format.js { render nothing: true }
    end
  end

  def destroy
    key = user.keys.find(params[:id])

    respond_to do |format|
      if key.destroy
        format.html { redirect_to [:admin, user], notice: '用户密钥成功移除。' }
      else
        format.html { redirect_to [:admin, user], alert: '未能移除用户的密钥。' }
      end
    end
  end

  protected

  def user
    @user ||= User.find_by!(username: params[:user_id])
  end

  def key_params
    params.require(:user_id, :id)
  end
end
