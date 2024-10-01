ActiveAdmin.register_page "CustomPostForm" do
  menu label: "Custom Post Form", priority: 1

  content do
    # Display the form
    form_with model: Post.new, url: custom_post_form_path, method: :post, html: { class: 'custom-form' } do |form|
      form.input :name, label: 'Post Name'
      form.actions
    end

    # Display success or error messages
    if flash[:notice]
      div class: 'flash notice' do
        flash[:notice]
      end
    elsif flash[:alert]
      div class: 'flash alert' do
        flash[:alert]
      end
    end
  end

  # Define the custom route
  controller do
    def create
      @post = Post.new(post_params)
      if @post.save
        flash[:notice] = "Post was successfully created."
        redirect_to admin_custom_post_form_path
      else
        flash[:alert] = "There was an error creating the post."
        render :new
      end
    end

    private

    def post_params
      params.require(:post).permit(:name)
    end
  end
end


# ActiveAdmin.register Post do
#   # See permitted parameters documentation:
#   # https://activeadmin.info/11-strong-parameters.html

#   permit_params :name

#   # Uncomment to define custom index page columns
#   index do
#     selectable_column
#     id_column
#     column :name
#     actions
#   end

#   # Uncomment to define custom form fields
#   form do |f|
#     f.inputs 'Details' do
#       f.input :name
#     end
#     f.actions
#   end
# end
