SELECT count(*)
FROM sessions
WHERE expired_at IS NULL;