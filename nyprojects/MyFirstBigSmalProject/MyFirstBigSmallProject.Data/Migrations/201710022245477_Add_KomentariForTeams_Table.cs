namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_KomentariForTeams_Table : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.KomentariForTeams",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        User = c.String(nullable: false),
                        Message = c.String(nullable: false, maxLength: 500),
                        Date = c.DateTime(nullable: false),
                        team = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            DropColumn("dbo.Komentaris", "Team");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Komentaris", "Team", c => c.String());
            DropTable("dbo.KomentariForTeams");
        }
    }
}
