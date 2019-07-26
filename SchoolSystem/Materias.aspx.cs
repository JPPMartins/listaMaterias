using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
 
namespace SchoolSystem
{
    public partial class Default : System.Web.UI.Page
    {
        private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetGrid();
            }
        }
        private void GetGrid()
        {
            mdc = new ModelDataContext();
            try
            {
                var sourceMateria = from mat in mdc.Materia
                                    select mat;

                gwDados.DataSource = sourceMateria;
                gwDados.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}