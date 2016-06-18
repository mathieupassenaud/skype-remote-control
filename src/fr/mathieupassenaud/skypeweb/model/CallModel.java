package fr.mathieupassenaud.skypeweb.model;

import javax.xml.bind.annotation.XmlRootElement;

import com.skype.Call;
import com.skype.SkypeException;

@XmlRootElement

public class CallModel {
	
	private String id;
	private int duration;
	private int participants;
	private String partnerId;
	
	public CallModel(String id, int duration, int participants, String partnerId) {
		super();
		this.id = id;
		this.duration = duration;
		this.participants = participants;
		this.partnerId = partnerId;
	}
	public CallModel() {
		super();
	}
	
	public CallModel(Call call) throws NumberFormatException, SkypeException{
		this.id = call.getId();
		this.duration = call.getDuration();
		this.participants = Integer.parseInt(call.getParticipantsCount());
		this.partnerId = call.getPartnerId();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getParticipants() {
		return participants;
	}
	public void setParticipants(int participants) {
		this.participants = participants;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	
	
}
