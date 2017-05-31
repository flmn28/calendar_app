class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    @events = Event.where(["user_id = ? and common = ?", @user.id, false]).or(Event.where(["group_id = ? and common = ?", @user.group_id, true])).map{|e|
    {
    :id => e.id,
    :title => e.title,
    :start => e.start,
    :end => e.end,
    :color => e.color,
    :allDay => e.allDay,
    :url => event_path(e.id)
    }
    }

    respond_to do |format|
    format.html
    format.xml { render :xml => @events }
    format.json { render :json => @events }
    end
  end

  def top
    redirect_to "/users/#{current_user.id}"
  end

  def index
    @users = User.where(group_id: current_user.group_id)
    @events = Event.where(["group_id = ? and common = ?", current_user.group_id, true]).map{|e|
    {
    :id => e.id,
    :title => e.title,
    :start => e.start,
    :end => e.end,
    :color => e.color,
    :allDay => e.allDay,
    :url => event_path(e.id)
    }
    }

    respond_to do |format|
    format.html
    format.xml { render :xml => @events }
    format.json { render :json => @events }
    end
  end

end
