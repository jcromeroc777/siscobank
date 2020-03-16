class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def list
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
        render :new
    end
    
    def create
        @user = User.create(typedocument: params[:user][:typedocument], document: params[:user][:document],
                    issuedate: params[:user][:issuedate], expirationdate: params[:user][:expirationdate],
                    name: params[:user][:name], email: params[:user][:email],
                    mainphone: params[:user][:mainphone], secondaryphone: params[:user][:secondaryphone])
        redirect_to action: "list"
    end

    def update
        @user = User.find(params[:id])
        @user.update(typedocument: params[:user][:typedocument], document: params[:user][:document],
                    issuedate: params[:user][:issuedate], expirationdate: params[:user][:expirationdate],
                    name: params[:user][:name], email: params[:user][:email],
                    mainphone: params[:user][:mainphone], secondaryphone: params[:user][:secondaryphone])
        redirect_to action: "list"
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to action: "list"
    end
end
