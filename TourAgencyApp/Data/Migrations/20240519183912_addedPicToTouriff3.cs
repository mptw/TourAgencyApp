using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TourAgencyApp.Data.Migrations
{
    /// <inheritdoc />
    public partial class addedPicToTouriff3 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ImagePath",
                table: "Tour",
                newName: "ImageName");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ImageName",
                table: "Tour",
                newName: "ImagePath");
        }
    }
}
