using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TourAgencyApp.Data.Migrations
{
    /// <inheritdoc />
    public partial class moddedTourBookings : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TourBooking_AspNetUsers_UserId",
                table: "TourBooking");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "TourBooking",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_TourBooking_AspNetUsers_UserId",
                table: "TourBooking",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TourBooking_AspNetUsers_UserId",
                table: "TourBooking");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "TourBooking",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddForeignKey(
                name: "FK_TourBooking_AspNetUsers_UserId",
                table: "TourBooking",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
