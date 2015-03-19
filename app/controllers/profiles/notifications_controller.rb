#coding:utf-8
class Profiles::NotificationsController < ApplicationController
  layout 'profile'

  def show
    @user = current_user
    @notification = current_user.notification
    @project_members = current_user.project_members
    @group_members = current_user.group_members
  end

  def update
    type = params[:notification_type]

    @saved = if type == 'global'
               current_user.update_attributes(user_params)
             elsif type == 'group'
               users_group = current_user.group_members.find(params[:notification_id])
               users_group.notification_level = params[:notification_level]
               users_group.save
             else
               project_member = current_user.project_members.find(params[:notification_id])
               project_member.notification_level = params[:notification_level]
               project_member.save
             end

    respond_to do |format|
      format.html do
        if @saved
          flash[:notice] = "保存通知设置"
        else
          flash[:alert] = "无法保存新的设置"
        end

        redirect_to :back
      end

      format.js
    end
  end

  def user_params
    params.require(:user).permit(:notification_email, :notification_level)
  end
end
