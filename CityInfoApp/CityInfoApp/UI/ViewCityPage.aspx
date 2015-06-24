<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CityInfoMaster.Master" AutoEventWireup="true" CodeBehind="ViewCityPage.aspx.cs" Inherits="CityInfoApp.UI.ViewCityPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h1>View City Information</h1>
        <fieldset>
            <legend>Search Criteria</legend>
            <asp:RadioButton ID="cityRadioButton" runat="server" GroupName="searchRadioButtonGroup" />
            <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox><br/><br/>

            <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="searchRadioButtonGroup" />

            <asp:DropDownList ID="countryDropDownList" runat="server"></asp:DropDownList>&nbsp;
             
            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
            

            
        </fieldset>
        <asp:GridView  ID="viewCityGridView" runat="server" >
            
        </asp:GridView>
       
    
    </div>
</asp:Content>
