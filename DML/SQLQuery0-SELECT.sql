USE PV_319_DDL;
GO

SELECT 
		--last_name	AS N'Фамилия',
		--first_name	AS N'ИМЯ',
		--middle_name	AS N'Отчество',
		last_name + ' ' + first_name + ' ' + middle_name AS N'Ф.И.О. студента',
		birth_date	AS N'Дата рождения',
		[group]		AS N'Группа'
		direction_name AS N'Направление обучения'
 FROM Students , Groups, Directions
 WHERE [group]=group_id     --условие отбора
 AND   direction  = direction_id
 ORDER BY  N'Дата рождения' DESC -- DESCENDING(В порядке убывания), --ASC(В порядке возростания)
 ; 