using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckeditor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // actualizando el control para que se pinten los nuevos cambios despues de un submit
            //ScriptManager.RegisterOnSubmitStatement(this, this.GetType(), "updatescript", "CKEDITOR.instances['ctl00_ContentPlaceHolder1_editor1'].updateElement();");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "myJsFn2", "prueba();", true);
        }
    }
}