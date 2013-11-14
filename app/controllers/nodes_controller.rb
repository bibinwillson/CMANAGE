class NodesController < ApplicationController
  def new
    @node = Node.new
  end

  def show
   @node = Node.find(params[:id])  
  end
  
  def create
  @node = Node.new(params[:node])
  if @node.save
    flash[:success] = "Node Details Saved Successfully"
    redirect_to @node
    else    
  render 'new'
  end
  end

  def upload
  uploaded_io = params[:node][:key]
  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    file.write(uploaded_io.read)
  end
  end

end