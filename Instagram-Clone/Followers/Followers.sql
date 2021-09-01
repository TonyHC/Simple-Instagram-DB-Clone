CREATE TABLE Follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    followed_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(followee_id) REFERENCES Users(id) ON DELETE CASCADE,
    PRIMARY KEY(follower_id, followee_id)
);