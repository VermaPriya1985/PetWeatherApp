<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherApp.aspx.cs" Inherits="PetWeatherApp.WeatherApp" %>
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
       
        <table>
            <tr><td>
              <br /><br /><br /><br />  <h1></h1> <h1></h1>
        <h1>  Does My Pet Need An Umbrella ? 

        </h1>

        <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp Select a Pet to find out ? 

        </h2></td></tr>
            </table> <br /><br />
        <asp:GridView ID="grdview" runat="server" AutoGenerateColumns="false"   
                    BackColor="White" BorderColor="black" BorderStyle="None" BorderWidth="1px"   
                    CellPadding="4" DataKeyNames="id">  
                    <Columns>  
                       
                      

                       <%-- 3366CC <asp:TemplateField HeaderText="City">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>
                       --%>
                 
          <asp:BoundField DataField="name" ItemStyle-Width="150px" HeaderText="Name" ControlStyle-BackColor="White" ControlStyle-BorderColor="black" 
              FooterStyle-BorderStyle="none" ControlStyle-BorderWidth="1px"  />
<asp:BoundField DataField="type" ItemStyle-Width="150px" HeaderText="Type" ControlStyle-BackColor="White" ControlStyle-BorderColor="black" 
              FooterStyle-BorderStyle="none" ControlStyle-BorderWidth="1px" />
<asp:BoundField DataField="breed" ItemStyle-Width="150px" HeaderText="Breed" ControlStyle-BackColor="White" ControlStyle-BorderColor="black" 
              FooterStyle-BorderStyle="none" ControlStyle-BorderWidth="1px" />
                       <asp:HyperLinkField Text="View"  DataTextField="" DataNavigateUrlFields="Id" 
                           DataNavigateUrlFormatString="~/PetWeatherDetail.aspx?Id={0}"
            HeaderText="View" ItemStyle-Width = "150" ControlStyle-Width="150px" />

                    </Columns>  
                </asp:GridView>  
          
         <table>
            <tr><td>
              <br /><br /><br /><br />  <h1></h1> <h1></h1>
        <h2>  Click on button to Add New Pet 
         &nbsp;&nbsp   <asp:Button ID="btnsubmit" OnClick="btnsubmit_Click" runat="server" Text="Add New Pet" />
        </h2>

                </td></tr>

              <tr><td>
              <br /><br /><br /><br />   
                  <h2><asp:Label ID="lblerror" runat="server" Text=""></asp:Label></h2>

                </td></tr>

            </table>
      
      
    </form>
</body>
</html>
