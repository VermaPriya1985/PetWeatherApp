<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPet.aspx.cs" Inherits="PetWeatherApp.AddPet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type = "text/css">
    table
    {
      
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
            <h1>Add Your Pet</h1>
            <table>



                <tr>
                    <td> 
                      <asp:Label ID="lblname" runat="server">Name</asp:Label>
                    </td>

                    <td>
                      <asp:TextBox ID="txtname" Width="200px" Height="30px" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Provide Name" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </td>
                  
                    
                </tr>

                <tr><td></td><td></td></tr>
                <tr>
                     <td>
                      <asp:Label ID="lbltype" runat="server">Type</asp:Label>
                    </td>

                    <td>
                <asp:DropDownList ID="drptype" Width="200px" Height="30px" runat="server">
                    <asp:ListItem>Dog</asp:ListItem>
                    <asp:ListItem>Cat</asp:ListItem>
                </asp:DropDownList>
            
                    </td>

                    
                </tr>
                <tr><td></td><td></td></tr>
                <tr>
                      <td>
                      <asp:Label ID="lblbreed" runat="server">Breed</asp:Label>
                    </td>

                    <td>
                <asp:DropDownList ID="drpbreed" Width="200px" Height="30px" runat="server">
                      <asp:ListItem>Beagle</asp:ListItem>
                    <asp:ListItem>Brittany</asp:ListItem>
                <asp:ListItem>Balinese</asp:ListItem>
                     <asp:ListItem>Pointer</asp:ListItem>
                 <asp:ListItem>Sphynx</asp:ListItem>
                    <asp:ListItem>Shiba</asp:ListItem>
                </asp:DropDownList>

                    </td>

                    
                </tr>
                <tr><td></td><td></td></tr>
                <tr>
                      <td>
                      <asp:Label ID="lbllocation" runat="server">Location</asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtlocation" Width="200px" Height="30px" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Provide Location" ControlToValidate="txtlocation"></asp:RequiredFieldValidator>
                    </td>

                    
                </tr>
                <tr><td></td><td></td></tr>
                <tr>
                      <td>
                      <asp:Label ID="lbllatitude" runat="server">Latitude</asp:Label>
                    </td>

                    <td>
                        <asp:TextBox  ID="txtlatitude" Width="200px" Height="30px" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Provide Latitude" ControlToValidate="txtlatitude"></asp:RequiredFieldValidator>
                    </td>

                    
                </tr>
                <tr><td></td><td></td></tr>
                <tr>
                      <td>
                      <asp:Label ID="lbllongitude" runat="server">Longitude</asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtlongitude" Width="200px" Height="30px" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Provide Longitude" ControlToValidate="txtlongitude"></asp:RequiredFieldValidator>
                    </td>

                    
                </tr>

                <tr><td></td><td></td></tr>
                
                <tr>
                      <td>
                
                    </td>

                    <td>
                <asp:Button ID="btnsubmit" Width="100px" Height="30px" OnClick="btnsubmit_Click" Text="Add Pet" runat="server" />
                        <asp:Button ID="btnview" Width="100px" CausesValidation="false" Height="30px" OnClick="btnview_Click" Text="View Pet" runat="server" />
                    </td>

                    
                </tr> 

                 <tr><td></td><td></td></tr>
                 <tr><td></td><td></td></tr>

                <tr>
                 <td>
                
                    </td>

                    <td>
                        <asp:Label ID="lblmsg" runat="server" Text=""> </asp:Label>

                    </td>

                    
                </tr> 

            </table>

        </div>
    </form>
</body>
</html>
