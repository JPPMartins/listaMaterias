﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Materia_Edit : System.Web.UI.Page
    {
        private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    this.PopulaFields(int.Parse(Request.QueryString["id"]));
                }
                catch (Exception)
                {
                    this.PopulaFields();
                }
            }

        }

        protected void BtnAtualizar_Click(object sender, EventArgs e)
        {

            this.OnUpdate();

        }

        private void OnUpdate()
        {
            mdc = new ModelDataContext();
            try
            {

                    Materia materia = mdc.Materia.First(mat => mat.idMateria == int.Parse(tbCodMateria.Text.Trim()));
                    materia.Nome = tbNome.Text.Trim();
                    materia.Descricao = tbDescriao.Text.Trim();
                    materia.dataAtualizacao = DateTime.Parse(DateTime.Now.ToShortDateString());

                    mdc.SubmitChanges();

                Response.Redirect("Materias.aspx");
            }
            catch (Exception)
            {

            }
            finally
            {
                mdc.Dispose();
            }
        }

        private void PopulaFields(int pGetID = 0 )
        {
            mdc = new ModelDataContext();
            try { 
                if (pGetID > 0)
                {

                    Materia materia = mdc.Materia.First(mat => mat.idMateria == pGetID);
                    tbCodMateria.Text = pGetID.ToString();
                    tbNome.Text = materia.Nome.Trim();
                    tbDescriao.Text = materia.Descricao.Trim();
                }
                else
                {
                    Response.Redirect("Materias.aspx");
                }
            } 
            catch (Exception)
            {

            }
            finally
            {
                mdc.Dispose();
            }
        }
    }
}