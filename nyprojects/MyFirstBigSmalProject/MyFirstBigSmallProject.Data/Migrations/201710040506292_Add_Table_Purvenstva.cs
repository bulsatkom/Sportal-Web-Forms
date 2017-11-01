namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_Table_Purvenstva : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Purvenstvas",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 50),
                        Matches = c.Int(nullable: false),
                        Wins = c.Int(nullable: false),
                        Draws = c.Int(nullable: false),
                        Losses = c.Int(nullable: false),
                        ScoredGoals = c.Int(nullable: false),
                        DefeatGoals = c.Int(nullable: false),
                        Points = c.Int(nullable: false),
                        Purvenstvo = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Purvenstvas");
        }
    }
}
