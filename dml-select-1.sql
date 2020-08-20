## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
select * from team order by name;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
SELECT * FROM player where name like 's%' and country!='south Africa' order by name DESC;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
SELECT event_no, clock_in_seconds from event order by Event_no ASC;
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
select event_no from event where SUM(raid_points) > = 3 AND SUM(DEFENDING_POINTS) > = 3 order by ASC;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
select name from player where country = 'IND' or country = 'Irac' order by name ASC;
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
CREATE TABLE SKILLSSS
(
id INT,
names VARCHAR(50)
);
insert into SKILLSSS values(1,'Defendtest');
insert into SKILLSSS values(1,'testDefend');
insert into SKILLSSS values(1,'Defendtry');
insert into SKILLSSS values(1,'well');

select names from SKILLSSS where names like 'Defend%' order by names ASC;
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
CREATE TABLE Stadium
(
id INT,
stadiumnames VARCHAR(50)
);
insert into Stadium values(1,'complexStadium1');
insert into Stadium values(2,'stadiumcomplex');
insert into Stadium values(3,'Testcomplex');
insert into Stadium values(4,'test');

select stadiumnames from stadium where stadiumnames like '%complex' order by stadiumnames ASC;
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
select winner _team_id,score from outcome where score < 35 order by DESC;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
select * from game where game_date BETWEEN to_date ( '2015-01-14', ' yyyy-mm-dd') AND to_date ( '2015-03-17', ' yyyy-mm-dd')  order by id DESC;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER
WHERE ID IN(SELECT RAIDER_ID FROM EVENT) ORDER BY NAME ASC;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
select EVENT_NO, RAID_POINTS,DEFENDING_POINTS from event WHERE ID IN (SELECT FIRST_INNINGS_ID FROM GAME WHERE GAME_DATE='26/JAN/2020') ORDER BY EVENT_NO ASC;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT NAME FROM TEAM WHERE ID IN(SELECT WINNER_TEAM_ID FROM OUTCOME WHERE ID IN(SELECT ID FROM GAME WHERE GAME_DATE='09/MAR/2020'))ORDER BY NAME ASC;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE ID IN(SELECT PLAYER_OF_MATCH FROM OUTCOME WHERE ID IN(SELECT ID FROM GAME WHERE GAME_DATE='09/MAR/2020'))ORDER BY ID DESC;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE SKILL_ID IN(SELECT NAME FROM SKILL WHERE NAME='ALL ROUNDER') ORDER BY NAME ASC;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
alter table venue
add venuedate DATE
update venue set venuedate=to_date ( '2020-03-09', ' yyyy-mm-dd') where ID=54
select * from venue
select STADIUM_NAME from venue where venuedate=to_date ( '2020-03-09', ' yyyy-mm-dd')
-- 17. **Write a query to display the Coach's name of the team `Iran`**
insert into team values(10,'test','Iran',12);
select * from team where COACH = 'Iran'
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
select * from event

alter table event
add  Name VARCHAR(40)

update event set Name='Fazel Atrachali' where ID=64
select  EVENT_NO, DEFENDING_POINTS from event where NAME='Fazel Atrachali' order by  EVENT_NO ASC
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
insert into game values(49,to_date ( '2020-03-17', ' yyyy-mm-dd'),22,23,54,34,4,5,2,3);
SELECT NAME FROM PLAYER
WHERE ID IN(SELECT WINNER_TEAM_ID FROM OUTCOME WHERE ID IN(SELECT ID FROM GAME WHERE GAME_DATE='17/MAR/2020')) ORDER BY NAME ASC;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER,OUTCOME,GAME WHERE GAME_DATE BETWEEN TO_DATE('01-MAR-2020', 'DD-MM-YYYY') AND '31-MAR-2020' ORDER BY NAME ASC;