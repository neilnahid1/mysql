CREATE TABLE Users(
UserID INT PRIMARY KEY AUTO_INCREMENT,
FirstName varchar(45),
LastName varchar(45),
RoleID INT not null,
FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
)
