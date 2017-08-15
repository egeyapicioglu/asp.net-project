<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciEkleme.aspx.cs" Inherits="StudentDatabase.OgrenciEkleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 556px;
        }
        #Submit1 {
            margin-bottom: 44px;
        }
        #LinkButton1
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-left: 1px;
        }
        #NewButton
        {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }

    </style>
</head>
<body style="height: 207px">
    <form id="form1" runat="server">
        <br />
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1" BackColor="Silver" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" InsertVisible="False" ReadOnly="True" SortExpression="Student_Id" />
                    <asp:BoundField DataField="Student_Number" HeaderText="Student_Number" SortExpression="Student_Number" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                    <asp:BoundField DataField="Student_Class" HeaderText="Student_Class" SortExpression="Student_Class" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="161px" style="margin-right: 1px; margin-top: 15px" Width="173px">
            <div style="height: 94px; width: 141px; margin-left: 1px; margin-right: 0px;">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="Student_Id" DataSourceID="SqlDataSource2" Height="16px" OnItemInserted="formview1_ItemInserted" style="margin-top: 0px; margin-left: 0px; margin-right: 0px;" Width="31px" Font-Underline="False">
                    <EditItemTemplate>
                        Student_Id:
                        <asp:Label ID="Student_IdLabel1" runat="server" Text='<%# Eval("Student_Id") %>' />
                        <br />
                        Student_Number:
                        <asp:TextBox ID="Student_NumberTextBox" runat="server" Text='<%# Bind("Student_Number") %>' />
                        <br />
                        Student_Name:
                        <asp:TextBox ID="Student_NameTextBox" runat="server" Text='<%# Bind("Student_Name") %>' />
                        <br />
                        Student_Class:
                        <asp:TextBox ID="Student_ClassTextBox" runat="server" Text='<%# Bind("Student_Class") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Student_Number:
                        <asp:TextBox ID="Student_NumberTextBox" runat="server" Text='<%# Bind("Student_Number") %>' />
                        <br />
                        Student_Name:
                        <asp:TextBox ID="Student_NameTextBox" runat="server" Text='<%# Bind("Student_Name") %>' />
                        <br />
                        Student_Class:
                        <asp:TextBox ID="Student_ClassTextBox" runat="server" Text='<%# Bind("Student_Class") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <br />
                        &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" BackColor="Silver" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" Font-Underline="False" ForeColor="Black" />
                    </ItemTemplate>
                </asp:FormView>
                <div style="width: 37px; height: 21px; margin-left: 0px; margin-top: 0px">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px" BackColor="Silver" ForeColor="Black" >Back</asp:LinkButton>
                </div>
            </div>
        </asp:Panel>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [Student_Table]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Student_Table] WHERE [Student_Id] = @Student_Id" InsertCommand="INSERT INTO [Student_Table] ([Student_Number], [Student_Name], [Student_Class]) VALUES (@Student_Number, @Student_Name, @Student_Class)" SelectCommand="SELECT * FROM [Student_Table]" UpdateCommand="UPDATE [Student_Table] SET [Student_Number] = @Student_Number, [Student_Name] = @Student_Name, [Student_Class] = @Student_Class WHERE [Student_Id] = @Student_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Student_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Student_Number" Type="Int32" />
                    <asp:Parameter Name="Student_Name" Type="String" />
                    <asp:Parameter Name="Student_Class" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Student_Number" Type="Int32" />
                    <asp:Parameter Name="Student_Name" Type="String" />
                    <asp:Parameter Name="Student_Class" Type="String" />
                    <asp:Parameter Name="Student_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
