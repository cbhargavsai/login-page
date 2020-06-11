using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Loginpage
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }



        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void txtusername_Enter(object sender, EventArgs e)
        {
            if (txtusername.Text == "USERNAME")
            {
                txtusername.Text = "";
                txtusername.ForeColor = Color.Black;
            }
        }

        private void txtusername_Leave(object sender, EventArgs e)
        {
            if (txtusername.Text == "")
            {
                txtusername.Text = "USERNAME";
                txtusername.ForeColor = Color.Silver;
            }
        }

        private void txtpaswd_Enter(object sender, EventArgs e)
        {
            if (txtpaswd.Text == "PASSWORD")
            {
                txtpaswd.Text = "";
                txtpaswd.ForeColor = Color.Black;
            }
        }

        private void txtpaswd_Leave(object sender, EventArgs e)
        {
            if (txtpaswd.Text == "")
            {
                txtpaswd.Text = "PASSWORD";
                txtpaswd.ForeColor = Color.Silver;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "your_username" && txtpaswd.Text == "your_paswd")
            {
                new Form2().Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("The username or password is incorrect,try again");
                txtusername.Clear();
                txtpaswd.Clear();
                txtusername.Focus();
            }

        }
    }
}
