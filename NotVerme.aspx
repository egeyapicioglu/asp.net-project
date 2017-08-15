<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotVerme.aspx.cs" Inherits="StudentDatabase.NotVerme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_Lesson_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Student_Lesson_Id" HeaderText="Student_Lesson_Id" InsertVisible="False" ReadOnly="True" SortExpression="Student_Lesson_Id" />
                <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" SortExpression="Student_Id" ReadOnly="True" />
                <asp:BoundField DataField="Lesson_Id" HeaderText="Lesson_Id" SortExpression="Lesson_Id" ReadOnly="True"/>
                <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Student_Lesson_Table] WHERE [Student_Lesson_Id] = @original_Student_Lesson_Id AND [Student_Id] = @original_Student_Id AND [Lesson_Id] = @original_Lesson_Id AND (([Score] = @original_Score) OR ([Score] IS NULL AND @original_Score IS NULL))" InsertCommand="INSERT INTO [Student_Lesson_Table] ([Student_Id], [Lesson_Id], [Score]) VALUES (@Student_Id, @Lesson_Id, @Score)" SelectCommand="SELECT * FROM [Student_Lesson_Table]" UpdateCommand="UPDATE [Student_Lesson_Table] SET [Student_Id] = @Student_Id, [Lesson_Id] = @Lesson_Id, [Score] = @Score WHERE [Student_Lesson_Id] = @original_Student_Lesson_Id AND [Student_Id] = @original_Student_Id AND [Lesson_Id] = @original_Lesson_Id AND (([Score] = @original_Score) OR ([Score] IS NULL AND @original_Score IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Student_Lesson_Id" Type="Int32" />
                <asp:Parameter Name="original_Student_Id" Type="Int32" />
                <asp:Parameter Name="original_Lesson_Id" Type="Int32" />
                <asp:Parameter Name="original_Score" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_Id" Type="Int32" />
                <asp:Parameter Name="Lesson_Id" Type="Int32" />
                <asp:Parameter Name="Score" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Student_Id" Type="Int32" />
                <asp:Parameter Name="Lesson_Id" Type="Int32" />
                <asp:Parameter Name="Score" Type="Int32" />
                <asp:Parameter Name="original_Student_Lesson_Id" Type="Int32" />
                <asp:Parameter Name="original_Student_Id" Type="Int32" />
                <asp:Parameter Name="original_Lesson_Id" Type="Int32" />
                <asp:Parameter Name="original_Score" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm1.aspx" Text="Back" />
        <div>
        </div>
    </form>
</body>
</html>
