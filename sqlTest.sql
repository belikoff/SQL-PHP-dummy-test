/* Выбрать всех людей, которые хоть раз путешествовали и отобразить около каждого список мест, где он бывал через запятую. Колонки: name, distinations */
SELECT 
  human.name,
  GROUP_CONCAT(vacation_dist.name) AS vacation_name
FROM
  human
  INNER JOIN human_vacation_dist ON (human.id = human_vacation_dist.human_id)
  INNER JOIN vacation_dist ON (human_vacation_dist.distination_id = vacation_dist.id)
  GROUP BY human.name;


/* Выбрать всех людей, которые были и на Кубе и в Сочи. Колонки: name */

  SELECT cuba.name FROM(
SELECT 
  human.name,
  `human`.`id`
FROM
  human
  INNER JOIN human_vacation_dist ON (human.id = human_vacation_dist.human_id)
  INNER JOIN vacation_dist ON (human_vacation_dist.distination_id = vacation_dist.id AND vacation_dist.`name` = 'Cuba')
  ) AS cuba
  INNER JOIN human_vacation_dist ON (cuba.id = human_vacation_dist.human_id )
  INNER JOIN vacation_dist ON (human_vacation_dist.distination_id = vacation_dist.id AND vacation_dist.`name` = 'Sochi');



/* Выбрать всех людей, которые были только и на Кубе и в Сочи. Колонки: name */
  SELECT 
  human.name
 FROM
  human
  INNER JOIN human_vacation_dist ON (human.id = human_vacation_dist.human_id)
  INNER JOIN vacation_dist ON (human_vacation_dist.distination_id = vacation_dist.id)
  WHERE  human.id NOT IN(
SELECT 
  `human`.`id`
FROM
  human
  JOIN human_vacation_dist ON (human.id = human_vacation_dist.human_id)
  JOIN vacation_dist ON (human_vacation_dist.distination_id = vacation_dist.id 
  AND vacation_dist.`name`<>'Cuba' AND vacation_dist.`name`<>'Sochi')  )
  GROUP BY human.name;


