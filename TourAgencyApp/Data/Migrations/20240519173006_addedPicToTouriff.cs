using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TourAgencyApp.Data.Migrations
{
    /// <inheritdoc />
    public partial class addedPicToTouriff : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PicturePath",
                table: "Tour");

            migrationBuilder.AddColumn<string>(
                name: "ImagePath",
                table: "Tour",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImagePath",
                table: "Tour");

            migrationBuilder.AddColumn<string>(
                name: "PicturePath",
                table: "Tour",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
