using Microsoft.EntityFrameworkCore.Migrations;

namespace Travello.Data.Migrations
{
    public partial class migratokvxcvxcssa : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Gymnesium",
                table: "Hotels",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "Restaurant",
                table: "Hotels",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "RoomService",
                table: "Hotels",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "SwimmingPool",
                table: "Hotels",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "Wi_fi",
                table: "Hotels",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Gymnesium",
                table: "Hotels");

            migrationBuilder.DropColumn(
                name: "Restaurant",
                table: "Hotels");

            migrationBuilder.DropColumn(
                name: "RoomService",
                table: "Hotels");

            migrationBuilder.DropColumn(
                name: "SwimmingPool",
                table: "Hotels");

            migrationBuilder.DropColumn(
                name: "Wi_fi",
                table: "Hotels");
        }
    }
}
