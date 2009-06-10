class LibrariesController < ApplicationController
  before_filter :require_user, :only => [:new, :edit, :create, :update, :destroy]
  
  def index
    @libraries = Library.all
  end
  
  def show
    @library = Library.find(params[:id])
  end
  
  def new
    @library = Library.new
  end
  
  def create
    @library = Library.new(params[:library])
    @library.save
    redirect_to libraries_path
  end
  
  def edit
    @library = Library.find(params[:id])
  end
  
  def update
    @library = Library.find(params[:id])
    @library.update_attributes(params[:library])
    redirect_to @library
  end
  
  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    redirect_to libraries_path
  end
end