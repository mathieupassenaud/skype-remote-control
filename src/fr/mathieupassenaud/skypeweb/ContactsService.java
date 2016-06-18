package fr.mathieupassenaud.skypeweb;

import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.skype.ContactList;
import com.skype.Friend;
import com.skype.Skype;
import com.skype.SkypeException;
import com.skype.User.Status;

import fr.mathieupassenaud.skypeweb.model.FriendModel;

@Path("/contact")
public class ContactsService {
	
	@Path("/online")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public FriendModel[] getOnlineContacts() throws SkypeException{
		ArrayList<FriendModel> onlineFriends = new ArrayList<FriendModel>();
		ContactList list = Skype.getContactList();
		Friend[] friends = list.getAllFriends();
		for(Friend friend : friends){
			if(friend.getStatus().compareTo(Status.ONLINE) == 0){
				onlineFriends.add(new FriendModel(friend));
			}
		}
		return onlineFriends.toArray(new FriendModel[onlineFriends.size()]);
	}
	
	@Path("/offline")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public FriendModel[] getOfflineContacts() throws SkypeException{
		ArrayList<FriendModel> offlineFriends = new ArrayList<FriendModel>();
		ContactList list = Skype.getContactList();
		Friend[] friends = list.getAllFriends();
		for(Friend friend : friends){
			if(friend.getStatus().compareTo(Status.ONLINE) != 0){
				offlineFriends.add(new FriendModel(friend));
			}
		}
		return offlineFriends.toArray(new FriendModel[offlineFriends.size()]);
	}
}
