class PostComentsController < ApplicationController
  
  def create
    post_image = PostImage.find(params[:post_image_id])
    comment = PostComent.new(post_coment_params)
    comment.user_id = current_user.id
    comment.post_image_id = post_image.id
    comment.save
    redirect_to(post_image_path(post_image))
  end 

  def destroy
    PostComent.find_by(id: params[:id],post_image_id: params[:post_image_id]).destroy
    redirect_to(post_image_path(params[:post_image_id]))
  end 
private

def post_coment_params
  params.require(:post_coment).permit(:comment)
end 


end

