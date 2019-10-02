using Microsoft.EntityFrameworkCore.Migrations;

namespace Travello.Data.Migrations
{
    public partial class migratokvxcvxc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<double>(
                name: "Room_price",
                table: "Hotels",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.CreateIndex(
                name: "IX_Room_Hotel_id",
                table: "Room",
                column: "Hotel_id");

            migrationBuilder.CreateIndex(
                name: "IX_Hotels_city_id",
                table: "Hotels",
                column: "city_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Hotels_City_city_id",
                table: "Hotels",
                column: "city_id",
                principalTable: "City",
                principalColumn: "City_id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Room_Hotels_Hotel_id",
                table: "Room",
                column: "Hotel_id",
                principalTable: "Hotels",
                principalColumn: "Hotel_Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Hotels_City_city_id",
                table: "Hotels");

            migrationBuilder.DropForeignKey(
                name: "FK_Room_Hotels_Hotel_id",
                table: "Room");

            migrationBuilder.DropIndex(
                name: "IX_Room_Hotel_id",
                table: "Room");

            migrationBuilder.DropIndex(
                name: "IX_Hotels_city_id",
                table: "Hotels");

            migrationBuilder.DropColumn(
                name: "Room_price",
                table: "Hotels");
        }
    }
}
