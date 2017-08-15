<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atama.aspx.cs" Inherits="StudentDatabase.Atama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 605px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 199px; width: 224px; margin-left: 0px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Lesson_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="83px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="5">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Lesson_Id" HeaderText="Lesson_Id" InsertVisible="False" ReadOnly="True" SortExpression="Lesson_Id" />
                    <asp:BoundField DataField="Lesson_Name" HeaderText="Lesson_Name" SortExpression="Lesson_Name" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Student_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="16px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="margin-top: 0px" AllowPaging="True" PageSize="5">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" InsertVisible="False" ReadOnly="True" SortExpression="Student_Id" />
                    <asp:BoundField DataField="Student_Number" HeaderText="Student_Number" SortExpression="Student_Number" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                    <asp:BoundField DataField="Student_Class" HeaderText="Student_Class" SortExpression="Student_Class" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [Lesson_Table]"></asp:SqlDataSource>
            <div style="height: 37px; width: 188px; margin-left: 0px; margin-top: 0px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" SelectCommand="SELECT * FROM [Student_Table]"></asp:SqlDataSource>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            </div>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" ShowFooter="True" Width="476px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Student_Lesson_Id" HeaderText="Student_Lesson_Id" InsertVisible="False" ReadOnly="True" SortExpression="Student_Lesson_Id" />
                    <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" SortExpression="Student_Id" />
                    <asp:BoundField DataField="Lesson_Id" HeaderText="Lesson_Id" SortExpression="Lesson_Id" />
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:TemplateField>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="Insert" Height="26px" Text="Insert" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm1.aspx" style="margin-left: 11px" Text="Back" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Student_Lesson_Table] WHERE [Student_Lesson_Id] = @Student_Lesson_Id" InsertCommand="INSERT INTO [Student_Lesson_Table] ([Student_Id], [Lesson_Id], [Score]) VALUES (@Student_Id, @Lesson_Id, @Score)" SelectCommand="SELECT * FROM [Student_Lesson_Table]" UpdateCommand="UPDATE [Student_Lesson_Table] SET [Student_Id] = @Student_Id, [Lesson_Id] = @Lesson_Id, [Score] = @Score WHERE [Student_Lesson_Id] = @Student_Lesson_Id" OnSelecting="SqlDataSource3_Selecting" >
                <DeleteParameters>
                    <asp:Parameter Name="Student_Lesson_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Student_Id" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="GridView2" Name="Lesson_Id" PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter Name="Score" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Student_Id" Type="Int32" />
                    <asp:Parameter Name="Lesson_Id" Type="Int32" />
                    <asp:Parameter Name="Score" Type="Int32" />
                    <asp:Parameter Name="Student_Lesson_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
