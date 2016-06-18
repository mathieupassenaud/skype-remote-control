package fr.mathieupassenaud.skypeweb.model;


import javax.xml.bind.annotation.XmlRootElement;

import com.skype.Friend;
import com.skype.SkypeException;

@XmlRootElement
public class FriendModel{

	private String id;
	private String name;
	private String status;
	public FriendModel(String id, String name, String status) {
		super();
		this.id = id;
		this.name = name;
		this.status = status;
	}
	public FriendModel() {
		super();
	}
	
	public FriendModel(Friend friend) throws SkypeException {
		this.id = friend.getId();
		this.name = friend.getFullName();
		this.status = friend.getStatus().name();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
