namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Machove : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Machoves",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        HomeTeam = c.String(nullable: false),
                        AwayTeam = c.String(nullable: false),
                        Date = c.DateTime(nullable: false),
                        Timeofmatch = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Machoves");
        }
    }
}
