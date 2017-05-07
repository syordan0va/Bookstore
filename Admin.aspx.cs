using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] fileBreak = FileUpload1.FileName.Split(new char[] { '.' });
        if (!FileUpload1.HasFile)
        { lblMessage.Text = "Избрете файла"; }
        else if (fileBreak[1].ToUpper() != "JPG")
        {
            lblMessage.Text = "Файлът трябва да е JPG";
        }
        else if (FileUpload1.PostedFile.ContentLength > 100000)
        {
            lblMessage.Text = "Файлът трябва да е под 100KB.";
        }

        else
        {
            FileUpload1.SaveAs(Server.MapPath("./BookPictures/") + FileUpload1.FileName);
            lblMessage.Text = "<b>Файлът е добавен</br><br/>";
            lblMessage.Text += "Име:" + FileUpload1.FileName + "</br>";
            lblMessage.Text += "Размер:" + FileUpload1.FileName + "</br>";

        }
    }
}