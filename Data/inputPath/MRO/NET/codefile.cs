using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace CodeReaper
{
    public partial class FirstCustomControl : UserControl
    {
        DataSet AuthorsDataSet = null;
        public FirstCustomControl()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void FirstCustomControl_Load(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var lxmlPath = Properties.Settings.Default["xmlPath"].ToString();
            var linputPath = Properties.Settings.Default["inputPath"].ToString();
            var loutputPath = Properties.Settings.Default["outputPath"].ToString();

            bool IsSuccess = true;

            if (lxmlPath == "")
            {
                MessageBox.Show("XML Path is not defined. Please Re-enter and Continue.");
                IsSuccess = false;
            }

            if (linputPath == "")
            {
                MessageBox.Show("XML Path is not defined. Please Re-enter and Continue.");
                IsSuccess = false;
            }

            if (loutputPath == "")
            {
                MessageBox.Show("XML Path is not defined. Please Re-enter and Continue.");
                IsSuccess = false;
            }

            if (IsSuccess == true)
            {
                label5.Visible = false;
                label4.Visible = false;
                button1.Visible = false;
                label1.Visible = false;
                label6.Visible = false;
                
                label2.Visible = true;
                pictureBox1.Visible = true;
                button2.Visible = true;

                //Processing 
                ReadXmlData(lxmlPath, linputPath);
            }
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            label5.Visible = true;
            label4.Visible = true;
            button1.Visible = true;
            label1.Visible = true;
            label6.Visible = true;

            label2.Visible = false;
            pictureBox1.Visible = false;
            button2.Visible = false;
        }

        private void ReadXmlData(string lxmlPath, string linputPath)
        {
            int i = 0;
            string filePath = lxmlPath;

            foreach (string file in Directory.EnumerateFiles(filePath, "*.xml"))
            {
                if (i == 0)
                {
                    filePath = file;
                }
                else
                    break;

                i++;
            }

            //string contents = File.ReadAllText(filePath);
            
            try  
            {
                AuthorsDataSet = new DataSet();
                AuthorsDataSet.ReadXml(filePath);

                string rootfolder = linputPath;
                string[] files = Directory.GetFiles(rootfolder, "*.*", SearchOption.AllDirectories);
                foreach (string file in files)
                {
                    try
                    {
                        string contents = File.ReadAllText(file);
                        contents = contents.Replace(@"Text to find", @"Replacement text");
                    }
                    catch(Exception) { 
                    }
                }

                string[] folderEntries = Directory.GetDirectories(linputPath);
                foreach (string folderName in folderEntries)
                {
                    //Label1.Text += "<img src=\"" + Path.GetFileName(fileName) + "\" /><br />";
                }
            }  
            catch (Exception Ex)  
            {  
                throw Ex;  
            }

        }
    }
}
