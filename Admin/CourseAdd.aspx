﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CourseAdd.aspx.cs" Inherits="Admin_CourseAdd" Title="添加试卷科目" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            

<table cellpadding="0" cellspacing="0" border="1"  bordercolor="#cccccc" style="border-collapse:collapse" width="100%" frame="below">
               <tr>
                    <td bgcolor="#eeeeee" style="text-align:right;width:100%;" colspan="2"> <div class="title" align="left"><h4>
                        添加试卷科目</h4></div></td>                    
                </tr>               
                <tr>
                    <td bgcolor="#eeeeee" style="text-align:right;">科目名称：</td>
                    <td >&nbsp;<div align="left"><asp:TextBox id="txtName"  runat="server" MaxLength="20" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="不能为空！"></asp:RequiredFieldValidator></div>
                     </td>
                </tr>                
                <tr>
                    <td></td>
                    <td >&nbsp; <asp:Label ID="lblMessage" runat="server" ForeColor=red></asp:Label><br />
                       <asp:ImageButton ID="imgBtnSave" runat="server" ImageUrl="../Images/Save.GIF" OnClick="imgBtnSave_Click" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					   <asp:ImageButton ID="imgBtnReturn" runat="server" CausesValidation="false" ImageUrl="../Images/Return.GIF" OnClick="imgBtnReturn_Click" /></td>
                </tr>
            </table>         
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="txtName" EventName="TextChanged" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

