
#user
#user_name


#post
#title
#user_id


user has_many posts
post belongs_to user



Create
get /posts/new => NEW 
post /posts => CREATE


Read
get /posts/:id => SHOW
get /posts => INDEX


Update
get /posts/:id/edit => EDIT
patch /posts/:id => UPDATE


Destroy
delete /posts/:id => DESTROY
