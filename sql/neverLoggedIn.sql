select user_name from cwd_user where user_name not in
(SELECT cwd_user.user_name
FROM cwd_user, cwd_user_attribute
WHERE cwd_user_attribute.user_id = cwd_user.id
AND cwd_user_attribute.attribute_name = 'lastAuthenticated');
