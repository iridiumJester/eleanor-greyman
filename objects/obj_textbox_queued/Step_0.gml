// this turns the queued object into the actual text object when it gets its turn
if ticket == 0
{
	// I DONT KNOW WHAT LAYER YOU WANT TEXTBOXES ON AND IT MAY CHANGE DEPENDING ON THE ROOM
	// SO YOU WILL LIKELY HAVE TO MODIFY THIS 
	var newtextbox = instance_create_layer(x,y,"Instances",obj_textbox);
	newtextbox.msg = self.msg;
	newtextbox.followup = self.followup;
	instance_destroy(self);
}