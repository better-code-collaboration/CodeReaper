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
using Ionic.Zip;
using System.Diagnostics;
using System.Threading;

namespace CodeReaper
{
    public partial class CreatePlayground : UserControl
    {
        DataSet AuthorsDataSet = null;
        public CreatePlayground()
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
                MessageBox.Show("Input File/Folder Path is not defined. Please Re-enter and Continue.");
                IsSuccess = false;
            }

            if (loutputPath == "")
            {
                MessageBox.Show("Output File/Folder Path is not defined. Please Re-enter and Continue.");
                IsSuccess = false;
            }

            if (IsSuccess == true)
            {
                NoteWelcome.Visible = false;
                NoteHomeTitle.Visible = false;
                btnCreate.Visible = false;
                NoteHeader.Visible = false;
                NoteWarning.Visible = false;
                
                lblProcessing.Visible = true;
                imgProcessing.Visible = true;
                btnCancel.Visible = true;

                //Creating Temporary Copy of InputPath Folder
                linputPath = GetTemporaryFolderDir(linputPath);

                //Processing 
                ReadXmlData(lxmlPath, linputPath, loutputPath);

                lblProcessing.Visible = false;
                imgProcessing.Visible = false;
                btnCancel.Visible = false;

                infoCompleted.Visible = true;
                btnShowFiles.Visible = true;
                btnPlayAgain.Visible = true;
            }
        }

        public string GetTemporaryFolderDir(string linputPath)
        {
            string root = linputPath;
            string temp_root = root + "_temp";

            try
            {
                var dir = new DirectoryInfo(temp_root);
                dir.Attributes = dir.Attributes & ~FileAttributes.ReadOnly;
                dir.Delete(true);
            }
            catch (Exception)
            {
                //MessageBox.Show(ex.Message);
            }

            System.IO.Directory.CreateDirectory(root + "_temp");

            string[] files = Directory.GetFiles(root, "*.*", SearchOption.AllDirectories);
            
            foreach (string file in files)
            {
                var tempFile = file.Replace(linputPath, linputPath + "_temp");
                bool exists = System.IO.Directory.Exists(tempFile);

                if (!exists)
                    System.IO.Directory.CreateDirectory(System.IO.Path.GetDirectoryName(tempFile));
                                
                System.IO.File.Copy(file,tempFile);
            }
            return temp_root;
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
            NoteWelcome.Visible = true;
            NoteHomeTitle.Visible = true;
            btnCreate.Visible = true;
            NoteHeader.Visible = true;
            NoteWarning.Visible = true;

            lblProcessing.Visible = false;
            imgProcessing.Visible = false;
            btnCancel.Visible = false;
        }

        private void ReadXmlData(string lxmlPath, string linputPath, string loutputPath)
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
                        foreach (DataTable folder in AuthorsDataSet.Tables)
                        {
                            var mapFolder = "\\" + folder.TableName + "\\"; mapFolder = mapFolder.Replace(" ", "_");
                            mapFolder = mapFolder.ToLower();

                            var dirfile = file;
                            dirfile = dirfile.Replace(" ", "_");
                            dirfile = dirfile.ToLower();

                            if (dirfile.Contains(mapFolder))
                            {
                                foreach (DataRow dr in folder.Rows)
                                {
                                    foreach (DataColumn dc in dr.Table.Columns)  //loop through the columns. 
                                    {
                                        string contents = File.ReadAllText(file);
                                        contents = contents.Replace(dc.ColumnName.ToString(), dr[dc.ColumnName].ToString());
                                    }
                                }
                            }
                        }
                    }
                    catch(Exception Ex) {
                        MessageBox.Show("An unhandled exception occured. Please contact the maker of this code!");
                        try
                        {
                            var dir = new DirectoryInfo(linputPath);
                            dir.Attributes = dir.Attributes & ~FileAttributes.ReadOnly;
                            dir.Delete(true);
                        }
                        catch (IOException ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                        throw Ex;
                    }
                }

                //zipping and packing the file
                using (ZipFile zip = new ZipFile())
                {
                    string[] zipfiles = Directory.GetFiles(linputPath, "*.*", SearchOption.AllDirectories);
                    // add all those files to the ProjectX folder in the zip file
                    zip.AddFiles(zipfiles);
                    zip.Comment = "This zip was created at " + System.DateTime.Now.ToString("G");
                    zip.Save(loutputPath + "\\ReapedFile.zip");
                }

                //Deleting the temporary file off
                try
                {
                    var dir = new DirectoryInfo(linputPath);
                    dir.Attributes = dir.Attributes & ~FileAttributes.ReadOnly;
                    dir.Delete(true);
                }
                catch (IOException ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }  
            catch (Exception Ex)  
            {
                MessageBox.Show("An unhandled exception occured. Please contact the maker of this code!");
                try
                {
                    var dir = new DirectoryInfo(linputPath);
                    dir.Attributes = dir.Attributes & ~FileAttributes.ReadOnly;
                    dir.Delete(true);
                }
                catch (IOException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                throw Ex;
            }

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            var loutputPath = Properties.Settings.Default["outputPath"].ToString();
            Process.Start(loutputPath);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            NoteWelcome.Visible = true;
            NoteHomeTitle.Visible = true;
            btnCreate.Visible = true;
            NoteHeader.Visible = true;
            NoteWarning.Visible = true;

            lblProcessing.Visible = false;
            imgProcessing.Visible = false;
            btnCancel.Visible = false;

            infoCompleted.Visible = false;
            btnShowFiles.Visible = false;
            btnPlayAgain.Visible = false;
        }
    }
}
