# Problem-1
/*Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
tweets Table:
Column Name	Type
1. tweet_id	integer
2. user_id	integer
3. msg	string
4. tweet_date	timestamp /*

*Solution:

SELECT tweet_count as tweet_bucket, count(*) as user_count
FROM (SELECT user_id, count(*) as tweet_count
FROM tweets
WHERE YEAR(tweet_date) =2022
GROUP BY user_id) as user_tweetscounts
GROUP BY tweet_count
ORDER BY tweet_bucket;

