namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_Date_To_Komentari : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Komentaris", "Date", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Komentaris", "Date");
        }
    }
}
