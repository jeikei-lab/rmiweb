import java.rmi.RemoteException;

import org.apache.axis.message.SOAPHeaderElement;

import kr.or.kipris.plus.PatentBibliographicInfoServicePortTypeProxy;
import kr.or.kipris.plus.PatentBibliographicInfoServiceSoap11BindingStub;
import kr.or.kipris.plus.webservice.services.patentbean.xsd.AgentInfo;


public class test {

	/**
	 * @param args
	 * @throws RemoteException 
	 */
	public static void main(String[] args) throws RemoteException {
		
		PatentBibliographicInfoServicePortTypeProxy proxy = new PatentBibliographicInfoServicePortTypeProxy();
		PatentBibliographicInfoServiceSoap11BindingStub stub =(PatentBibliographicInfoServiceSoap11BindingStub)proxy.getPatentBibliographicInfoServicePortType();
		
		String _userId = "***************************************";
	 	String _userKey ="*********************************************************";
		
		SOAPHeaderElement id = new SOAPHeaderElement("http://plus.kipris.or.kr","userId");
		id.setValue(_userId);
		
		SOAPHeaderElement userKey = new SOAPHeaderElement("http://plus.kipris.or.kr","userKey");
		userKey.setValue(_userKey);
		
		stub.setHeader(id);
		stub.setHeader(userKey);
		AgentInfo[] agentInfos = (AgentInfo[])stub.agentInfo("1019950700550");
		
		System.out.println(agentInfos[0].getAddress());
		
		//aaaaa
		//bbbbb
	}

}