DELIMITER $$

CREATE TRIGGER catch_unfollows
    AFTER DELETE ON Follows FOR EACH ROW
    BEGIN
        INSERT INTO Unfollows
        SET follower_id = OLD.follower_id,
            followee_id = OLD.followee_id;
    END;
$$

DELIMITER ;