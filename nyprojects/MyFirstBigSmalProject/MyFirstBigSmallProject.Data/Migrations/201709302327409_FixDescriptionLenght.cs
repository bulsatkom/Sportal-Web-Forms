namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FixDescriptionLenght : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Statiis", "Description", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Statiis", "Description", c => c.String(nullable: false, maxLength: 100));
        }
    }
}
