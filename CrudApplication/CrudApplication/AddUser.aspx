﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Crud.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="CrudApplication.WebForm1" %>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*** Please provide valid name ... " ControlToValidate="txtBoxName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group col-md-6">
            <label for="txtBoxEmail">Email</label>
            <asp:TextBox ID="txtBoxEmail" runat="server" class="form-control" placeholder="Please enter email.."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*** Please provide email address" ControlToValidate="txtBoxEmail" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*** Please provide valid email address ....." ControlToValidate="txtBoxEmail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
        </div>
    </div>

    <div class="row">
        <div class="form-group col-xs-12 col-sm-12 col-md-12">
            <label for="txtBoxAddress">Address</label>
         <asp:TextBox ID="txtBoxAddress" runat="server" class="form-control" placeholder="Please enter address.."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*** Please provide valid address ....." ControlToValidate="txtBoxAddress" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="row">
        <div class="form-group col-xs-12 col-sm-12 col-md-12">
            <label for="txtBoxAddress2">Address 2</label>
&nbsp;<asp:TextBox ID="txtBoxAddress2" runat="server" class="form-control" placeholder="Please enter address 2.."></asp:TextBox>
        </div>
    </div>


    <div class="row">
        <div class="form-group col-md-4">
            <label for="txtBoxCity">City</label>
            <asp:TextBox ID="txtBoxCity" runat="server" class="form-control" placeholder="Please enter city.."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*** Please provide valid city name ...." ControlToValidate="txtBoxCity" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group col-md-4">
            <label for="ddlProvince">Province</label>
&nbsp;<asp:DropDownList ID="ddlProvince" runat="server" class="form-control">
                <asp:ListItem Enabled="true" Text="Select Province" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Alberta" Value="1"></asp:ListItem>
                <asp:ListItem Text="British Columbia" Value="2"></asp:ListItem>
                <asp:ListItem Text="Toronto" Value="3"></asp:ListItem>
            </asp:DropDownList>

            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*** Please select proper province name ...." ControlToValidate="ddlProvince" ForeColor="#CC3300" Operator="NotEqual" ValueToCompare="-1"></asp:CompareValidator>
        </div>


        <div class="form-group col-md-4">
            <label for="txtBoxPostalCode">Postal Code</label>
            <asp:TextBox ID="txtBoxPostalCode" runat="server" class="form-control" placeholder="Please enter postal code..."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*** Please provide postal code ...." ControlToValidate="txtBoxPostalCode" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="row">
        <div class="form-group col-md-4">
            <label>Gender</label>
     
            <asp:RadioButton ID="rdBtnGenderMale" runat="server" GroupName="gender"/> Male
            <asp:RadioButton ID="rdBtnGenderFemale" runat="server" GroupName="gender"/> Female
        </div>

        <div class="form-group col-md-4">
            <label>Programming Skills</label><br>
            <asp:CheckBox ID="chkBoxMachineLearning" runat="server" Text="Machine Learning" />  
            <asp:CheckBox ID="chkBoxPython" runat="server" Text="Python" />  
            <asp:CheckBox ID="chkBoxJava" runat="server" Text="Java" /> 
            <asp:CheckBox ID="chkBoxDatabase" runat="server" Text="Database Development" /> 
            <asp:CheckBox ID="chkBoxFrontEnd" runat="server" Text="Frontend Development" /> 
            <asp:CheckBox ID="chkBoxDotNet" runat="server" Text="Dot NET" /> 
            <asp:CheckBox ID="chkBoxBasicComputer" runat="server" Text="Basic Computer Skills" /> 
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*** Please provide username .." ControlToValidate="txtBoxUsername" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group col-md-6">
            <label for="txtBoxPassword">Password</label>
            <asp:TextBox ID="txtBoxPassword" runat="server" TextMode="Password" class="form-control" placeholder="Please enter password.."></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*** Please provide password" ControlToValidate="txtBoxPassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        &nbsp;<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtBoxPassword" ErrorMessage="*** Please provide at least 2 upper case, 3 special characters and 1 numbers ..." ForeColor="#CC0000" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{6,}$"></asp:RegularExpressionValidator>
        </div>
    </div>

    <div class="row">
        <div class="form-group col-xs-12 col-sm-12 col-md-12">
            <label>Comments</label>
            <asp:textbox ID="txtBoxComment" runat="server" mode="MultiLine" class="form-control" maxlength="1200" Height="85px"/>
        </div>
    </div>

    <asp:Button ID="btnCreateUser" runat="server" OnClick="Button1_Click" Text="Create User" class="btn btn-success"/>
</asp:Content>