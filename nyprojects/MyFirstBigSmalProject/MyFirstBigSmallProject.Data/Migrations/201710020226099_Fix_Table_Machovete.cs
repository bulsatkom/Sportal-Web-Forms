namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Fix_Table_Machovete : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Machoves", "Result", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Machoves", "Result");
        }
    }
}
