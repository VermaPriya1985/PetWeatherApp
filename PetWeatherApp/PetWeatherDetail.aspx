<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PetWeatherDetail.aspx.cs" Inherits="PetWeatherApp.PetWeatherDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type = "text/css">
     table 
    {
      /*border: 1px solid blue;*/
      margin-left:auto;
      margin-right:auto;
      margin-bottom:auto;
      top:100px;
    } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
        <table>
          <tr><td><br /><br /><br /><br /> </td></tr>
            <tr>
                <td>
               <h1>     <asp:Label ID="lblmsg" runat="server"></asp:Label> </h1>
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img id="img" src="images/umbrella.jpg" runat="server" visible="false" />
                </td>
                
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                      <asp:Button ID="btnview" Width="100px" CausesValidation="false" Height="30px" OnClick="btnview_Click" Text="View Pet" runat="server" />
                </td>
            </tr>

            <tr><td><br /><br /><br /><br /> </td></tr>

            <%--<tr>
                <td>                      
                    
                    
                    
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
          
   
                </td>
            </tr>--%>

        </table>
  
            </div>
    </form>
</body>
</html>
