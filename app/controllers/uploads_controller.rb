class UploadsController < ApplicationController


  def index
    @uploads = Upload.find(:all)
    logger.debug "uploads: #{@uploads.inspect}"
    # generate a unique id for the upload
    @uuid = (0..29).to_a.map {|x| rand(10)}
    @upload = Upload.last 
    if !@upload || !@upload.title.blank?
      @upload = Upload.new # create new one
    end
    logger.debug "upload: #{@upload.inspect}"
  end

  def create
    @upload = Upload.new(params[:upload])
    if @upload.save
      flash[:notice] = "Upload created"
    end
    respond_to do |wants|
      wants.html { redirect_to(:action => 'index') }
      wants.json { render :text => @upload.upload_file_name }
    end
  end

  def update
    @upload =  Upload.find(params[:id])
    @upload.title = params[:upload][:title]
    @upload.save!
    redirect_to :action => 'index'
  end


end
