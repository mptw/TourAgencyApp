﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TourAgencyApp.Data.Migrations
{
    /// <inheritdoc />
    public partial class addedPicToEvent : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "ImageName",
                table: "Event",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImageName",
                table: "Event");
        }
    }
}
