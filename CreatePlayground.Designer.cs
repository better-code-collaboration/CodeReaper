namespace CodeReaper
{
    partial class CreatePlayground
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CreatePlayground));
            this.NoteHomeTitle = new System.Windows.Forms.Label();
            this.NoteWelcome = new System.Windows.Forms.Label();
            this.btnCreate = new System.Windows.Forms.Button();
            this.NoteWarning = new System.Windows.Forms.Label();
            this.NoteHeader = new System.Windows.Forms.Label();
            this.imgProcessing = new System.Windows.Forms.PictureBox();
            this.lblProcessing = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.infoCompleted = new System.Windows.Forms.Label();
            this.btnShowFiles = new System.Windows.Forms.Button();
            this.btnPlayAgain = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.imgProcessing)).BeginInit();
            this.SuspendLayout();
            // 
            // NoteHomeTitle
            // 
            this.NoteHomeTitle.AutoSize = true;
            this.NoteHomeTitle.Font = new System.Drawing.Font("Century Gothic", 22.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NoteHomeTitle.Location = new System.Drawing.Point(25, 100);
            this.NoteHomeTitle.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NoteHomeTitle.Name = "NoteHomeTitle";
            this.NoteHomeTitle.Size = new System.Drawing.Size(616, 44);
            this.NoteHomeTitle.TabIndex = 0;
            this.NoteHomeTitle.Text = "Click to create your playground!";
            this.NoteHomeTitle.Click += new System.EventHandler(this.label4_Click);
            // 
            // NoteWelcome
            // 
            this.NoteWelcome.AutoSize = true;
            this.NoteWelcome.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NoteWelcome.Location = new System.Drawing.Point(29, 65);
            this.NoteWelcome.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NoteWelcome.Name = "NoteWelcome";
            this.NoteWelcome.Size = new System.Drawing.Size(398, 22);
            this.NoteWelcome.TabIndex = 0;
            this.NoteWelcome.Text = "Welcome to the CodeReaper playground!";
            this.NoteWelcome.Click += new System.EventHandler(this.label5_Click);
            // 
            // btnCreate
            // 
            this.btnCreate.BackColor = System.Drawing.Color.LightSeaGreen;
            this.btnCreate.FlatAppearance.BorderSize = 0;
            this.btnCreate.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCreate.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCreate.ForeColor = System.Drawing.Color.White;
            this.btnCreate.Location = new System.Drawing.Point(33, 159);
            this.btnCreate.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnCreate.Name = "btnCreate";
            this.btnCreate.Size = new System.Drawing.Size(219, 47);
            this.btnCreate.TabIndex = 1;
            this.btnCreate.Text = "Create!";
            this.btnCreate.UseVisualStyleBackColor = false;
            this.btnCreate.Click += new System.EventHandler(this.button1_Click);
            // 
            // NoteWarning
            // 
            this.NoteWarning.AutoSize = true;
            this.NoteWarning.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NoteWarning.Location = new System.Drawing.Point(43, 436);
            this.NoteWarning.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NoteWarning.Name = "NoteWarning";
            this.NoteWarning.Size = new System.Drawing.Size(362, 40);
            this.NoteWarning.TabIndex = 0;
            this.NoteWarning.Text = "Sorry, we can\'t guarantee your files, \r\nif you messed up your playground in Setti" +
    "ngs Tab.";
            this.NoteWarning.Click += new System.EventHandler(this.label6_Click);
            // 
            // NoteHeader
            // 
            this.NoteHeader.AutoSize = true;
            this.NoteHeader.Font = new System.Drawing.Font("Century Gothic", 9F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NoteHeader.Location = new System.Drawing.Point(43, 410);
            this.NoteHeader.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NoteHeader.Name = "NoteHeader";
            this.NoteHeader.Size = new System.Drawing.Size(99, 18);
            this.NoteHeader.TabIndex = 2;
            this.NoteHeader.Text = "Please Note:";
            this.NoteHeader.Click += new System.EventHandler(this.label1_Click);
            // 
            // imgProcessing
            // 
            this.imgProcessing.Image = ((System.Drawing.Image)(resources.GetObject("imgProcessing.Image")));
            this.imgProcessing.InitialImage = ((System.Drawing.Image)(resources.GetObject("imgProcessing.InitialImage")));
            this.imgProcessing.Location = new System.Drawing.Point(435, 100);
            this.imgProcessing.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.imgProcessing.Name = "imgProcessing";
            this.imgProcessing.Size = new System.Drawing.Size(218, 256);
            this.imgProcessing.TabIndex = 3;
            this.imgProcessing.TabStop = false;
            this.imgProcessing.Visible = false;
            this.imgProcessing.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // lblProcessing
            // 
            this.lblProcessing.AutoSize = true;
            this.lblProcessing.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProcessing.Location = new System.Drawing.Point(477, 54);
            this.lblProcessing.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblProcessing.Name = "lblProcessing";
            this.lblProcessing.Size = new System.Drawing.Size(102, 17);
            this.lblProcessing.TabIndex = 4;
            this.lblProcessing.Text = "Processing..!";
            this.lblProcessing.Visible = false;
            this.lblProcessing.Click += new System.EventHandler(this.label2_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.BackColor = System.Drawing.Color.Tomato;
            this.btnCancel.FlatAppearance.BorderSize = 0;
            this.btnCancel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancel.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.ForeColor = System.Drawing.Color.White;
            this.btnCancel.Location = new System.Drawing.Point(420, 415);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(219, 47);
            this.btnCancel.TabIndex = 5;
            this.btnCancel.Text = "Cancel!";
            this.btnCancel.UseVisualStyleBackColor = false;
            this.btnCancel.Visible = false;
            this.btnCancel.Click += new System.EventHandler(this.button2_Click);
            // 
            // infoCompleted
            // 
            this.infoCompleted.AutoSize = true;
            this.infoCompleted.Font = new System.Drawing.Font("Century Gothic", 22.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.infoCompleted.Location = new System.Drawing.Point(217, 238);
            this.infoCompleted.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.infoCompleted.Name = "infoCompleted";
            this.infoCompleted.Size = new System.Drawing.Size(636, 44);
            this.infoCompleted.TabIndex = 6;
            this.infoCompleted.Text = "Reaping Completed. Well Played!";
            this.infoCompleted.Visible = false;
            this.infoCompleted.Click += new System.EventHandler(this.label3_Click);
            // 
            // btnShowFiles
            // 
            this.btnShowFiles.BackColor = System.Drawing.Color.LightSeaGreen;
            this.btnShowFiles.FlatAppearance.BorderSize = 0;
            this.btnShowFiles.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnShowFiles.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnShowFiles.ForeColor = System.Drawing.Color.White;
            this.btnShowFiles.Location = new System.Drawing.Point(319, 287);
            this.btnShowFiles.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnShowFiles.Name = "btnShowFiles";
            this.btnShowFiles.Size = new System.Drawing.Size(219, 47);
            this.btnShowFiles.TabIndex = 7;
            this.btnShowFiles.Text = "Show Files";
            this.btnShowFiles.UseVisualStyleBackColor = false;
            this.btnShowFiles.Visible = false;
            this.btnShowFiles.Click += new System.EventHandler(this.button3_Click);
            // 
            // btnPlayAgain
            // 
            this.btnPlayAgain.BackColor = System.Drawing.Color.Gold;
            this.btnPlayAgain.FlatAppearance.BorderSize = 0;
            this.btnPlayAgain.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPlayAgain.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPlayAgain.ForeColor = System.Drawing.Color.Black;
            this.btnPlayAgain.Location = new System.Drawing.Point(545, 287);
            this.btnPlayAgain.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnPlayAgain.Name = "btnPlayAgain";
            this.btnPlayAgain.Size = new System.Drawing.Size(219, 47);
            this.btnPlayAgain.TabIndex = 8;
            this.btnPlayAgain.Text = "Play Again!";
            this.btnPlayAgain.UseVisualStyleBackColor = false;
            this.btnPlayAgain.Visible = false;
            this.btnPlayAgain.Click += new System.EventHandler(this.button4_Click);
            // 
            // CreatePlayground
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.btnPlayAgain);
            this.Controls.Add(this.btnShowFiles);
            this.Controls.Add(this.infoCompleted);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.lblProcessing);
            this.Controls.Add(this.imgProcessing);
            this.Controls.Add(this.NoteHeader);
            this.Controls.Add(this.btnCreate);
            this.Controls.Add(this.NoteHomeTitle);
            this.Controls.Add(this.NoteWelcome);
            this.Controls.Add(this.NoteWarning);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "CreatePlayground";
            this.Size = new System.Drawing.Size(1084, 521);
            this.Load += new System.EventHandler(this.FirstCustomControl_Load);
            ((System.ComponentModel.ISupportInitialize)(this.imgProcessing)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label NoteHomeTitle;
        private System.Windows.Forms.Label NoteWelcome;
        private System.Windows.Forms.Button btnCreate;
        private System.Windows.Forms.Label NoteWarning;
        private System.Windows.Forms.Label NoteHeader;
        private System.Windows.Forms.PictureBox imgProcessing;
        private System.Windows.Forms.Label lblProcessing;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Label infoCompleted;
        private System.Windows.Forms.Button btnShowFiles;
        private System.Windows.Forms.Button btnPlayAgain;
    }
}
