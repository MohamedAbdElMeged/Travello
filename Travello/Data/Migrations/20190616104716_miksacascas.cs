using Microsoft.EntityFrameworkCore.Migrations;

namespace Travello.Data.Migrations
{
    public partial class miksacascas : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "user_name",
                table: "Order",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "user_name",
                table: "Order");
        }
    }
}
