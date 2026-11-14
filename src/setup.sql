CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');



CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(150) NOT NULL,
    project_date DATE NOT NULL,

    CONSTRAINT fk_organization
        FOREIGN KEY (organization_id)
        REFERENCES organization(organization_id)
);

INSERT INTO project
(organization_id, title, description, location, project_date)
VALUES
-- BrightFuture Builders (Organization 1)
(1, 'School Renovation', 'Renovating classrooms for students.', 'Accra', '2026-11-20'),
(1, 'Reading Program', 'Providing books to school children.', 'Tema', '2026-11-22'),
(1, 'Computer Donation', 'Donating computers to schools.', 'Madina', '2026-11-25'),
(1, 'School Painting', 'Painting classrooms and school buildings.', 'Kasoa', '2026-11-28'),
(1, 'Student Mentorship', 'Providing career guidance to students.', 'Accra', '2026-12-01'),

-- GreenHarvest Growers (Organization 2)
(2, 'Community Garden', 'Creating a garden for local residents.', 'Tema', '2026-11-21'),
(2, 'Tree Planting', 'Planting trees to improve the environment.', 'Accra', '2026-11-23'),
(2, 'Farm Training', 'Teaching farmers modern farming methods.', 'Nsawam', '2026-11-26'),
(2, 'Clean Water Project', 'Improving access to clean water.', 'Koforidua', '2026-11-29'),
(2, 'Food Distribution', 'Distributing food to needy families.', 'Accra', '2026-12-02'),

-- UnityServe (Organization 3)
(3, 'Community Cleanup', 'Cleaning public spaces.', 'Accra', '2026-11-24'),
(3, 'Youth Outreach', 'Organizing activities for young people.', 'Tema', '2026-11-27'),
(3, 'Health Awareness', 'Educating residents about healthy living.', 'Madina', '2026-11-30'),
(3, 'Elderly Support', 'Providing assistance to elderly residents.', 'Accra', '2026-12-03'),
(3, 'Community Sports', 'Organizing sports activities for youth.', 'Kasoa', '2026-12-05');

