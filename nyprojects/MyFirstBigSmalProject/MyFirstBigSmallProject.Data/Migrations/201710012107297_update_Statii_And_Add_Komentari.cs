namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class update_Statii_And_Add_Komentari : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Komentaris",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        User = c.String(nullable: false),
                        Message = c.String(nullable: false, maxLength: 500),
                        StatiiId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Statiis", t => t.StatiiId, cascadeDelete: true)
                .Index(t => t.StatiiId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Komentaris", "StatiiId", "dbo.Statiis");
            DropIndex("dbo.Komentaris", new[] { "StatiiId" });
            DropTable("dbo.Komentaris");
        }
    }
}
