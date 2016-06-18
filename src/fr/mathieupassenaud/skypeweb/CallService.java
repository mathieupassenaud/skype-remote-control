package fr.mathieupassenaud.skypeweb;

import java.util.ArrayList;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import com.skype.Call;
import com.skype.Skype;
import com.skype.SkypeException;

import fr.mathieupassenaud.skypeweb.model.CallModel;

@Path("/call")
public class CallService {

	@Path("/start")
	@POST
	public CallModel makeCall(String contactId) throws SkypeException{
		Call call = Skype.call(contactId);
		return new CallModel(call);
	}
	
	@Path("/{callId}/finish")
	@DELETE
	public void hangup(@PathParam("callId") String callId) throws SkypeException{
		Skype.call(callId).finish();
	}
	
	@Path("/activeCalls")
	@GET
	public CallModel[] getActiveCalls() throws SkypeException{
		ArrayList<CallModel> calls = new ArrayList<CallModel>();
		Call[] c = Skype.getAllActiveCalls();
		for(Call call : c){
			calls.add(new CallModel(call));
		}
		return calls.toArray(new CallModel[calls.size()]);
	}
}
