CREATE TABLE IF NOT EXISTS rooms (
    id INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS devices (
    id INT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
    ip VARCHAR(30) NOT NULL,

    PRIMARY KEY (id)
);