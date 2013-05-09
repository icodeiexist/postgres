--source http://www.youlikeprogramming.com/2012/12/indexing-postgresql-arrays-and-hstores

CREATE TABLE teams (
id serial primary key,
cities varchar[],
teams hstore
);

INSERT INTO teams (cities,teams) SELECT array['Miami'], hstore(array['Familly','Pop','Fun'],array['Mammal','1000','Very']);
INSERT INTO teams (cities,teams) SELECT array['Miami'], hstore(array['Familly','Pop','Fun'],array['Other','1000','Not much']);
INSERT INTO teams (cities,teams) SELECT array['Miami','Pitsburg'], hstore(array['Familly','Pop','Fun'],array['Other','2000','Not much']);


--index array
CREATE INDEX teams_cities_idx ON teams USING gin (cities);

--index hstore
CREATE INDEX teams_family_idx ON teams USING btree ((teams->'Familly'));

-- index on hstore casted value

CREATE INDEX teams_pop_idx ON teams USING btree(((teams->'Pop')::integer));
