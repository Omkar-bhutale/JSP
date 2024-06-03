
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<h1>Hello this is index .jsp</h1>
<%@ taglib prefix="myTag" uri="/WEB-INF/Hello.tld"%>
<%@ taglib prefix="myInfo" uri="/WEB-INF/Hello.tld" %>

<myTag:hello name="omkar">
   	
   	This the Body of name hello tag   
   
      </myTag:hello>
      </br></br></br>
      
<myTag:place where="bhutan hipparga" >
   	
   	This the Body of place custom tag   whic is skipped
   
      </myTag:place>
      </br>
</br>     </br> 
      <myTag:itrate count='5'>
      This is itrate tag
      </myTag:itrate>
      
      
      
      </br>
</br>     </br> 


<h1>This is the body after coustom tag</h1>