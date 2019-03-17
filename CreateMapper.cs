using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CodeReaper
{
    public partial class CreateMapper : UserControl
    {
        public CreateMapper()
        {
            InitializeComponent();

            txtXMLPath.Text = Properties.Settings.Default["xmlPath"].ToString();
            txtInputFolderPath.Text = Properties.Settings.Default["inputPath"].ToString();
            txtOutputZipPath.Text = Properties.Settings.Default["outputPath"].ToString();
        }

        private void MySecondCustmControl_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Create a new instance of FolderBrowserDialog.
            FolderBrowserDialog folderBrowserDlg = new FolderBrowserDialog();
            // A new folder button will display in FolderBrowserDialog.
            folderBrowserDlg.ShowNewFolderButton = true;
            //Show FolderBrowserDialog
            DialogResult dlgResult = folderBrowserDlg.ShowDialog();
            if (dlgResult.Equals(DialogResult.OK))
            {
                //Show selected folder path in textbox1.
                txtXMLPath.Text = folderBrowserDlg.SelectedPath;
                //Browsing start from root folder.
                Environment.SpecialFolder rootFolder = folderBrowserDlg.RootFolder;
            }
        }

        private void button14_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://github.com/jithinanchanattu/CodeReaper"); 
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default["xmlPath"] = txtXMLPath.Text;
            Properties.Settings.Default["inputPath"] = txtInputFolderPath.Text;
            Properties.Settings.Default["outputPath"] = txtOutputZipPath.Text;
            Properties.Settings.Default.Save();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default["xmlPath"] = txtXMLPath.Text;
            Properties.Settings.Default["inputPath"] = txtInputFolderPath.Text;
            Properties.Settings.Default["outputPath"] = txtOutputZipPath.Text;
            Properties.Settings.Default.Save();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default["xmlPath"] = txtXMLPath.Text;
            Properties.Settings.Default["inputPath"] = txtInputFolderPath.Text;
            Properties.Settings.Default["outputPath"] = txtOutputZipPath.Text;
            Properties.Settings.Default.Save();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            // Create a new instance of FolderBrowserDialog.
            FolderBrowserDialog folderBrowserDlg = new FolderBrowserDialog();
            // A new folder button will display in FolderBrowserDialog.
            folderBrowserDlg.ShowNewFolderButton = true;
            //Show FolderBrowserDialog
            DialogResult dlgResult = folderBrowserDlg.ShowDialog();
            if (dlgResult.Equals(DialogResult.OK))
            {
                //Show selected folder path in textbox1.
                txtInputFolderPath.Text = folderBrowserDlg.SelectedPath;
                //Browsing start from root folder.
                Environment.SpecialFolder rootFolder = folderBrowserDlg.RootFolder;
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            // Create a new instance of FolderBrowserDialog.
            FolderBrowserDialog folderBrowserDlg = new FolderBrowserDialog();
            // A new folder button will display in FolderBrowserDialog.
            folderBrowserDlg.ShowNewFolderButton = true;
            //Show FolderBrowserDialog
            DialogResult dlgResult = folderBrowserDlg.ShowDialog();
            if (dlgResult.Equals(DialogResult.OK))
            {
                //Show selected folder path in textbox1.
                txtOutputZipPath.Text = folderBrowserDlg.SelectedPath;
                //Browsing start from root folder.
                Environment.SpecialFolder rootFolder = folderBrowserDlg.RootFolder;
            }
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button9_Click(object sender, EventArgs e)
        {
            if (btnCreateMapper.Text.ToString() == "Create Mapper!")
            {
                panel1.Visible = false;
                panel2.Visible = false;
                panel3.Visible = false;
                btnCreateMapper.Text = "Change Settings!";
            }
            else
            {
                panel1.Visible = true;
                panel2.Visible = true;
                panel3.Visible = true;
                btnCreateMapper.Text = "Create Mapper!";
            }
        }
    }
}
