using Microsoft.EntityFrameworkCore.Migrations;

namespace Travello.Data.Migrations
{
    public partial class migratokvxcvxcssawqw : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Room_price",
                table: "Room");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<double>(
                name: "Room_price",
                table: "Room",
                nullable: false,
                defaultValue: 0.0);
        }
    }
}
