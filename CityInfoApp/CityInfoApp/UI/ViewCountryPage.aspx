<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CityInfoMaster.Master" AutoEventWireup="true" CodeBehind="ViewCountryPage.aspx.cs" Inherits="CityInfoApp.UI.ViewCountryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <h1>View Country Information</h1>
        <fieldset>
            <legend>Search Criteria</legend>
            <asp:Label runat="server">Country Name:</asp:Label>
            <asp:TextBox ID="searchCountryTextBox" runat="server"></asp:TextBox>&nbsp;
            <asp:Button  ID="searchCountryButton" Text="Search" runat="server" OnClick="searchCountryButton_Click"/>
        </fieldset>
        <br/><br/><br/>
        <asp:GridView ID="countryGridView" runat="server">
           
        </asp:GridView>
    
    </div>
</asp:Content>
