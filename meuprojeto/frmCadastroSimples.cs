﻿using MeuProjeto.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MeuProjeto
{
    public partial class frmCadastroSimples : Form
    {
        public frmCadastroSimples()
        {
            InitializeComponent();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        private void frmCadastroSimples_Load(object sender, EventArgs e)
        {

        }

        private void btnSalvar_Click_1(object sender, EventArgs e)
        {
            Classes.Go acao = new Classes.Go();

            TiposDeProdutos produto = new TiposDeProdutos()
            {

                NomeProduto = txtNome.Text,
                CustoProduto = Convert.ToDecimal(txtCusto.Text),
                VendaProduto = Convert.ToDecimal(txtVenda.Text),
                Tipo = "s"

            };
            acao.InserirNovoProdutoSimples(produto);


            this.Close();
        }

        private void btnCancelar_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtcode_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
