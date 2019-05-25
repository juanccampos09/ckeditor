<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ckeditor.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>

<body>

    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div>

            <textarea id="editor1" name="editor1"></textarea>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>


            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <input type="button" onclick="EnableEditor2()" value="EnableEditor2" />
                </ContentTemplate>
            </asp:UpdatePanel>
            




        </div>
    </form>

    <script src="//cdn.ckeditor.com/4.11.4/full/ckeditor.js"></script>
    <script>

        var isReadable = true;

        // remplasando el textarea por el ckeditor
        CKEDITOR.replace('editor1', { readOnly: true });//set editor1 readonly
        CKEDITOR.replace('TextBox1');

        //indicando que el segundo ckeditor va a ser de solo lectura
        CKEDITOR.instances.TextBox1.config.readOnly = true;

        function EnableEditor2() {

            if (isReadable) {

                isReadable = false;
                // funcion que se encarga de hacer el ckeditor de solo lectura o no
                CKEDITOR.instances.TextBox1.setReadOnly(false); 
            } else {

                isReadable = true;
                CKEDITOR.instances.TextBox1.setReadOnly(true);

            }

            
        }

    </script>
</body>
</html>
