<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DersEkleme.aspx.cs" Inherits="StudentDatabase.DersEkleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style>
        GridView#GridView1
    {
           
    }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" DataKeyNames="Lesson_Name" AllowPaging="True" AllowSorting="True" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Lesson_Id" HeaderText="Lesson_Id" ReadOnly="True" SortExpression="Lesson_Id" InsertVisible="False" />
                <asp:BoundField DataField="Lesson_Name" HeaderText="Lesson_Name" SortExpression="Lesson_Name" />
            </Columns>
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server" Height="96px" style="margin-left: 0px">
            <div>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="Lesson_Id" DataSourceID="SqlDataSource2" Height="16px" OnItemInserted="formview1_ItemInserted" style="margin-right: 18px; margin-left: 11px;" Width="41px">
                    <EditItemTemplate>
                        Lesson_Name:
                        <asp:TextBox ID="Lesson_NameTextBox" runat="server" Text='<%# Bind("Lesson_Name") %>' />
                        <br />
                        Lesson_Id:
                        <asp:Label ID="Lesson_IdLabel1" runat="server" Text='<%# Eval("Lesson_Id") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Lesson_Name:
                        <asp:TextBox ID="Lesson_NameTextBox" runat="server" Text='<%# Bind("Lesson_Name") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <br />
                        &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" BackColor="Silver" BorderColor="#666666" BorderStyle="Solid" CausesValidation="False" CommandName="New" Font-Underline="False" ForeColor="Black" Text="New" BorderWidth="2px" />
                    </ItemTemplate>
                </asp:FormView>
                <div style="height: 21px; width: 40px; margin-left: 10px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Silver" BorderColor="#666666" BorderStyle="Solid" Font-Underline="False" ForeColor="Black" PostBackUrl="~/WebForm1.aspx" style="margin-left: 2px" Width="34px" BorderWidth="2px">Back</asp:LinkButton>
                </div>
            </div>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Lesson_Table] WHERE [Lesson_Id] = @Lesson_Id" InsertCommand="INSERT INTO [Lesson_Table] ([Lesson_Name]) VALUES (@Lesson_Name)" SelectCommand="SELECT [Lesson_Name], [Lesson_Id] FROM [Lesson_Table]" UpdateCommand="UPDATE [Lesson_Table] SET [Lesson_Name] = @Lesson_Name WHERE [Lesson_Id] = @Lesson_Id">
            <DeleteParameters>
                <asp:Parameter Name="Lesson_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Lesson_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Lesson_Name" Type="String" />
                <asp:Parameter Name="Lesson_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [Lesson_Table]" InsertCommand="INSERT INTO Lesson_Table(Lesson_Name) VALUES (@Lesson_Name)" InsertCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="Lesson_Name" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
