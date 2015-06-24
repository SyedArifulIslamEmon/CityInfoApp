<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CityInfoMaster.Master" AutoEventWireup="true" CodeBehind="CountryEntryPage.aspx.cs" Inherits="CityInfoApp.UI.CountryEntryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div>
        <h1>Country Information</h1><br/><br/>
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" >Country Name</asp:Label><br/><br/>
                </td>
                <td>
                    <asp:TextBox ID="countryNameTextbox" runat="server" Width="222px"></asp:TextBox><br/><br/>
                </td>

                
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" >About</asp:Label><br/><br/>
                    
                </td>
                <td>
                     <asp:TextBox ID="aboutTextbox" runat="server" TextMode="MultiLine" Width="223px" Height="120px"></asp:TextBox><br/>
                    
                </td>
                
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="saveButton"  Text="Save" runat="server" OnClick="saveButton_Click"/>&nbsp;&nbsp;
                    <asp:Button ID="cancelButton" Text="Cancel" runat="server" OnClick="cancelButton_Click"/>
                </td>
            </tr>
        </table><br /><br/><br/>
        <asp:GridView  ID="countryGridView"  runat="server" >
            
        </asp:GridView>
        

    
    </div>
    
    
    

</asp:Content>
