#coding:utf-8
class Admin::BroadcastMessagesController < Admin::ApplicationController
  before_filter :broadcast_messages

  def index
    @broadcast_message = BroadcastMessage.new
  end

  def create
    @broadcast_message = BroadcastMessage.new(broadcast_message_params)

    if @broadcast_message.save
      redirect_to admin_broadcast_messages_path, notice: '广播消息被成功创建。'
    else
      render :index
    end
  end

  def destroy
    BroadcastMessage.find(params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render nothing: true }
    end
  end

  protected

  def broadcast_messages
    @broadcast_messages ||= BroadcastMessage.order("starts_at DESC").page(params[:page])
  end

  def broadcast_message_params
    params.require(:broadcast_message).permit(
      :alert_type, :color, :ends_at, :font,
      :message, :starts_at
    )
  end
end
