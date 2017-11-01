namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FixBug_WithDateTime : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Machoves", "Date", c => c.String(nullable: false));
            AlterColumn("dbo.Machoves", "Timeofmatch", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Machoves", "Timeofmatch", c => c.DateTime(nullable: false));
            AlterColumn("dbo.Machoves", "Date", c => c.DateTime(nullable: false));
        }
    }
}
