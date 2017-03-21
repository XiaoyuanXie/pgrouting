\i setup.sql

SELECT plan(348);


SELECT has_function('pgr_astar',
    ARRAY['text', 'bigint', 'bigint', 'boolean', 'integer', 'numeric', 'numeric']);
SELECT has_function('pgr_astar',
    ARRAY['text', 'bigint', 'anyarray', 'boolean', 'integer', 'numeric', 'numeric']);
SELECT has_function('pgr_astar',
    ARRAY['text', 'anyarray', 'bigint', 'boolean', 'integer', 'numeric', 'numeric']);
SELECT has_function('pgr_astar',
    ARRAY['text', 'anyarray', 'anyarray', 'boolean', 'integer', 'numeric', 'numeric']);

SELECT function_returns('pgr_astar',
    ARRAY['text', 'bigint', 'bigint', 'boolean', 'integer', 'numeric', 'numeric'],
    'setof record');
SELECT function_returns('pgr_astar',
    ARRAY['text', 'bigint', 'anyarray', 'boolean', 'integer', 'numeric', 'numeric'],
    'setof record');
SELECT function_returns('pgr_astar',
    ARRAY['text', 'anyarray', 'bigint', 'boolean', 'integer', 'numeric', 'numeric'],
    'setof record');
SELECT function_returns('pgr_astar',
    ARRAY['text', 'anyarray', 'anyarray', 'boolean', 'integer', 'numeric', 'numeric'],
    'setof record');



-- ONE TO ONE
SELECT style_astar('pgr_astar', ', 2, 3, true)');
-- ONE TO MANY
SELECT style_astar('pgr_astar', ', 2, ARRAY[3], true)');
-- MANY TO ONE
SELECT style_astar('pgr_astar', ', ARRAY[2], 3, true)');
-- MANY TO MANY
SELECT style_astar('pgr_astar', ', ARRAY[2], ARRAY[3], true)');


SELECT finish();
ROLLBACK;
