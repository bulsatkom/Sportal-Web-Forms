namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Add_Team_To_Komentari : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Komentaris", "Team", c => c.String());
            DropColumn("dbo.Komentaris", "purvenstvoId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Komentaris", "purvenstvoId", c => c.Int(nullable: false));
            DropColumn("dbo.Komentaris", "Team");
        }
    }
}
