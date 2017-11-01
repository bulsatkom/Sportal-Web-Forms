namespace MyFirstBigSmallProject.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class inition : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Statiis",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(nullable: false, maxLength: 100),
                        Image = c.String(nullable: false, maxLength: 100),
                        Description = c.String(nullable: false, maxLength: 100),
                        Date = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Statiis");
        }
    }
}
