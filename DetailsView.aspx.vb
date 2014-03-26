
Partial Class DetailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delRecipe As String = e.Values("recipyName").ToString()

        Response.Write("The record ")
        Response.Write("<span class=deletedrecipehighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been deleted form the database.")

        Response.AddHeader("REFRESH", "5;URL=./gridview.aspx")

        'MsgBox("The record has been deleted from the database.")

    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./gridview.aspx")


    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblCopyD.Text = DateTime.Now.Year
    End Sub
End Class
