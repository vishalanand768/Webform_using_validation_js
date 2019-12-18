<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Webform_using_validation_js.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type ="text/javascript">
        function validation() {
            var dabba = "" ;
            dabba += checkFName();
            dabba += checkLName();
           dabba += checkSalary();
           if (dabba == ""){
               return true;
           }
           else 
           { 
               alert(dabba);
               return false ;
           }
        }
        {
            function checkFName() {
                var TB = document.getElementById('txtfname');
                if (TB.value == "") {
                    return 'Plz enter your fname!!\n';
                }
                else {
                    return "";
                }
            }
                function checkLname(){
                    var TB = document.getElementById('txtlname');
                    if (TB.value == "") 
                    {
                        return 'Plz enter your lname!!\n' ;

                    }
                    else 
                    {
                        return "";
                    }
                }
                function checkSalary()
                {
                    var TB = document.getElementById('txtsalary');
                    if (TB.value == "") {
                        return 'Plz enter your salary!!\n';
                    }
                    else
                    {
                        return "";
                    }
                }

            }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
           
             <tr>
                <td>Name : </td>
                <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            </tr>

             <tr>
                <td>Age : </td>
                <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
            </tr>

             <tr>
                <td></td>
                <td><asp:Button ID="sbtn" runat="server" Text="Save" OnClientClick=" return validation()" OnClick="sbtn_Click"></asp:Button></td>
            </tr>

             <tr> 
                <td></td>
                <td><asp:GridView ID="grd" runat="server"></asp:GridView></td>
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
