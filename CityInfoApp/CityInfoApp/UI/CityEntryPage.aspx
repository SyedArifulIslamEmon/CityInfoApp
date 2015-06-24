<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CityInfoMaster.Master" AutoEventWireup="true" CodeBehind="CityEntryPage.aspx.cs" Inherits="CityInfoApp.UI.CityEntryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <h1>City Information</h1><br/><br/>
        <table style="height: 215px">
            <tr>
                <td>
                    <asp:Label runat="server">City Name</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID= "cityNameTextBox" runat="server" Width="172px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">About</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID= "aboutTextBox" runat="server" TextMode="MultiLine" Width="172px" Height="124px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">No. Of Dwellers</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="dewellersTextBox" runat="server" Width="172px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">Location</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="locationTextBox" runat="server" Width="172px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">Weather</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="weatherTextBox" TextMode="MultiLine"  Width="172px" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">Country</asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="allCountryDropDownlist" runat="server" Height="16px" Width="171px">
                    </asp:DropDownList>
                </td>
                
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="saveButton" Text="Save" runat="server" OnClick="saveButton_Click"/>&nbsp;&nbsp;
                     <asp:Button ID="cancelButton" Text="Cancel" runat="server" OnClick="cancelButton_Click"/>
                </td>
                
            </tr>
            
        </table><br/><br/><br/>
        <asp:GridView ID="cityGridView"  runat="server" >
           
        </asp:GridView>
    
    </div>
        

</asp:Content>
