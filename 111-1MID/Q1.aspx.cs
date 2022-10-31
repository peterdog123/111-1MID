using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _111_1MID
{
    public partial class Q1 : System.Web.UI.Page
    {
        string[] s_IdSet = new string[3] { "A123456789", "P123456789", "YD321" };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tb_Account_TextChanged(object sender, EventArgs e)
        {
            for (int c = 0; c < s_IdSet.Length; c++)
            {
                if(tb_Account.Text == s_IdSet[c] && tb_Account.Text == "")
                {
                    btn_Submit.Visible = true;
                    lb_Type.Text = "複診";
                    break;
                }
                else if(tb_Account.Text != s_IdSet[c] && tb_Account.Text == "")
                {
                    btn_Submit.Visible = true;
                    lb_Type.Text = "初診";
                }
                else
                {
                    btn_Submit.Visible = true;
                    lb_Type.Text = "初診";
                }
            }
            p1_Msg.Visible = false;
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            p1_Msg.Visible = true;
            lb_Msg.Text = "";
            if(tb_Phone.Text == "")
            {
                lb_Msg.Text += lb_Type.Text + "<br />" + tb_Account.Text + "先生/小姐，已完成掛號。" + "<br />" + "<br />";
            }
            else
            {
                lb_Msg.Text += lb_Type.Text + "<br />" + tb_Account.Text + "先生/小姐，已完成掛號。" + "<br />" + "連絡電話為" + tb_Phone.Text + "<br />" + "<br />";
            }
        }
    }
}