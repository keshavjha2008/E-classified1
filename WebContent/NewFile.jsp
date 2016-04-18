<script>
function use()
{
	frm.txtName.focus();
		
}
function fieldsCheck(){
	if(frm.txtPhone.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(frm.txtPhone.value)) { 
			    alert("Please enter Integer number only");
			    frm.txtPhone.focus() ;
			    return false;
			} 
		  if(frm.txtPhone.value.length != 10){
			  alert("Please enter 10 digits only");
			  frm.txtPhone.focus() ;
			    return false;
		  }
	  }
	
	if(frm.txtEmail.value != ""){
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test(frm.txtEmail.value)) { 
		    alert("Please enter valid email id only");
		    frm.txtEmail.focus() ;
		    return false;
		}		
	}
	if(frm.txtHse1.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(frm.txtHse1.value)) { 
			    alert("Please enter Integer number only");
			    frm.txtHse1.focus() ;
			    return false;
			} }
	if(frm.txtPCode1.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(frm.txtPCode1.value)) { 
			    alert("Please enter Integer number only");
			    frm.txtPCode1.focus() ;
			    return false;
			} 
		  if(frm.txtPCode1.value.length != 6){
			  alert("Please enter 6 digits only");
			  frm.txtPCode1.focus() ;
			    return false;
		  }
	  }
	if(call4()==false)
	{
	
		return false
	}
	
	else if(call1()==false)
	{
			
			return false
	
	}
	else if(call3()==false)
	{
	
		return false
	}
	

}

function call1()
{
	var jdt=frm.txtDateJ.value; <%-- JOurney date --%>
	var jd=jdt.substring(0,2);
	var jm=jdt.substring(3,5);
	var jy=jdt.substring(6,10);
	
	
	
	var jdate=new Date()
	jdate.setFullYear(jy,jm-1,jd)
	
		
	var cdate=new Date(); <%-- Current date --%>
	if(jdt=="")
	{
		alert("You Have To Enter Journey Date")
		frm.txtDateJ.focus();
		return false
	}
	else if(jdate<=cdate)
	{
		alert("Journey Date Must Be Greater Than Current Date")
		frm.txtDateJ.value=""
		frm.txtDateJ.focus();
		return false
	}
	
	

}
function call2()
{
	if(frm.chRJourney.checked==true)
	{ 
		frm.txtDateR.disabled=false
		frm.txtDateR.focus()
		
	}
	else
	{
	
		frm.txtDateR.disabled=true
	
		
	}
	
}

function call3()
{
	if(frm.chRJourney.checked==true)
	{
		var jdt=frm.txtDateJ.value; <%-- JOurney date --%>
		
		
		var jd=jdt.substring(0,2);
		var jm=jdt.substring(3,5);
		var jy=jdt.substring(6,10);
		
		
		
		var jdate=new Date()
		jdate.setFullYear(jy,jm-1,jd)
		
		var rdt=frm.txtDateR.value;<%-- Return date --%>
		if(rdt=="")
		{
			alert("You Have To Enter Return Date")
			
			frm.txtDateR.focus();
			return false
		
		}
		var rd=rdt.substring(0,2);
		var rm=rdt.substring(3,5);
		var ry=rdt.substring(6,10);
	
	
		var rdate=new Date()
		rdate.setFullYear(ry,rm-1,rd)
		
		if(rdate<jdate)
		{
			alert("Return Date Must Be Greater Than Joining Date")
			frm.txtDateR.value=""
			frm.txtDateR.focus();
			return false
		}
	}
	
}
function call4()
{
	var i=frm.cmbCar.selectedIndex;
	if(i==0)
	{
		alert("You Have to Select Car Model"+i)
		frm.cmbCar.focus()
		frm.cmbPay.selectedIndex=0
		return false
	}
}
function call5()
{
	var i=frm.cmbCar.selectedIndex;
	if(i==1) frm.txtPersons.value="6"
	else if(i==2) frm.txtPersons.value="8"
	else if(i==3) frm.txtPersons.value="5"
	else if(i==4) frm.txtPersons.value="5"
	else if(i==5) frm.txtPersons.value="9"
	else if(i==6) frm.txtPersons.value="8"
	else if(i==7) frm.txtPersons.value="6"
	else if(i==8) frm.txtPersons.value="5"
	else if(i==9) frm.txtPersons.value="6"
	else if(i==10) frm.txtPersons.value="5"
	else if(i==11) frm.txtPersons.value="8"
	else if(i==12) frm.txtPersons.value="8"
	else if(i==13) frm.txtPersons.value="6"
	else if(i==14) frm.txtPersons.value="6"
}
</script>
