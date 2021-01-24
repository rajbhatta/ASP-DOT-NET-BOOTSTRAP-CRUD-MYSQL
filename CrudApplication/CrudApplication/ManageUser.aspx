<%@ Page Title="" Language="C#" MasterPageFile="~/Crud.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="CrudApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <h2>Please enter the following information: </h2>
            </div>
        </div>
    
        <div class="row">
            <div class="form-group col-md-6">
                <label for="txtBoxName">Name</label>
                <asp:TextBox ID="txtBoxName" runat="server" class="form-control" placeholder="Please enter name.."></asp:TextBox>
            </div>
    
            <div class="form-group col-md-6">
                <label for="txtBoxEmail">Email</label>
                <asp:TextBox ID="txtBoxEmail" runat="server" class="form-control" placeholder="Please enter email.."></asp:TextBox>
            </div>
        </div>
    
        <div class="row">
            <div class="form-group col-xs-12 col-sm-12 col-md-12">
                <label for="txtBoxAddress">Address</label>
                <asp:TextBox ID="txtBoxAddress" runat="server" class="form-control" placeholder="Please enter address.."></asp:TextBox>
            </div>
        </div>
    
        <div class="row">
            <div class="form-group col-xs-12 col-sm-12 col-md-12">
                <label for="txtBoxAddress2">Address 2</label>
                <asp:TextBox ID="txtBoxAddress2" runat="server" class="form-control" placeholder="Please enter address 2.."></asp:TextBox>
            </div>
        </div>
    
    
        <div class="row">
            <div class="form-group col-md-4">
                <label for="txtBoxCity">City</label>
                <asp:TextBox ID="txtBoxCity" runat="server" class="form-control" placeholder="Please enter city.."></asp:TextBox>
            </div>
    
            <div class="form-group col-md-4">
                <label for="ddlProvince">Province</label>
                <asp:DropDownList ID="ddlProvince" runat="server" class="form-control">
                    <asp:ListItem Enabled="true" Text="Select Province" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Alberta" Value="1"></asp:ListItem>
                    <asp:ListItem Text="British Columbia" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Toronto" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </div>
    
    
            <div class="form-group col-md-4">
                <label for="txtBoxPostalCode">Postal Code</label>
                <asp:TextBox ID="txtBoxPostalCode" runat="server" class="form-control" placeholder="Please enter postal code.."></asp:TextBox>
            </div>
        </div>
    
        <div class="row">
            <div class="form-group col-md-4">
                <label>Gender</label>
                <br/>
                <asp:RadioButton ID="rdBtnGenderMale" runat="server" GroupName="gender"/> Male
                <asp:RadioButton ID="rdBtnGenderFemale" runat="server" GroupName="gender"/> Female
            </div>
    
            <div class="form-group col-md-4">
                <label>Programming Skills</label><br>
                <asp:CheckBox ID="chkBoxMachineLearning" runat="server"/> : Machine Learning <br>
                <asp:CheckBox ID="chkBoxPython" runat="server"/> : Python <br>
                <asp:CheckBox ID="chkBoxJava" runat="server"/> : Java <br>
                <asp:CheckBox ID="chkBoxDatabase" runat="server"/> : Database Development <br>
                <asp:CheckBox ID="chkBoxFrontEnd" runat="server"/> : Frontend Development <br>
                <asp:CheckBox ID="chkBoxDotNet" runat="server"/> : Dot NET <br>
                <asp:CheckBox ID="chkBoxBasicComputer" runat="server"/> : Basic Computer Skills
            </div>
    
            <div class="form-group col-md-4">
                <label>Available Date</label>
                <asp:Calendar ID="calAvailableDate" runat="server"></asp:Calendar>
            </div>
        </div>
    
        <div class="row">
            <div class="form-group col-md-6">
                <label for="txtBoxUsername">Username</label>
                <asp:TextBox ID="txtBoxUsername" runat="server" class="form-control" placeholder="Please enter username.."></asp:TextBox>
            </div>
    
            <div class="form-group col-md-6">
                <label for="txtBoxPassword">Password</label>
                <asp:TextBox ID="txtBoxPassword" runat="server" TextMode="Password" class="form-control" placeholder="Please enter password.."></asp:TextBox>
            </div>
        </div>
    
        <div class="row">
            <div class="form-group col-xs-12 col-sm-12 col-md-12">
                <label>Comments</label>
                <asp:textbox ID="txtBoxComments" runat="server" mode="MultiLine" class="form-control" maxlength="1200" Height="85px"/>
            </div>
        </div>
</asp:Content>
