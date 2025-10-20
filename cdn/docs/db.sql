create table users (
    id serial primary key,
    nom varchar(100) not null,
    email varchar(100) not null unique,
    profil varchar(100) not null unique,
    etat varchar(100) not null unique,
    created_at timestamp default current_timestamp
);
create table organisation(
    id serial primary key,
    org_nom varchar(100) not null,
    siege_social varchar(100) not null,
    type_acteur varchar(100) not null,
    etat varchar(100) not null,
    created_at timestamp default current_timestamp    
);
create table agent(
    id serial primary key,
    nom_agent varchar(100) not null,
    prenom_agent varchar(100) not null,
    contact_agent varchar(100) not null,
    email_agent varchar(100) not null unique,
    fonction_agent varchar(100) not null,
    organisation_id int references organisation(id),
    created_at timestamp default current_timestamp
)