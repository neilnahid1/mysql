create table Articles(
ArticleID int primary key AUTO_INCREMENT,
Title varchar(45),
Header varchar(45),
Body text,
UserID int not null,
CategoryID int not null,
foreign key (UserID) references Users(UserID),
foreign key (CategoryID) references Categories(CategoryID)
)
