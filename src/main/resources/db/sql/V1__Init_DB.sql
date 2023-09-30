
CREATE TABLE orders
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    address      VARCHAR(255) NOT NULL,
    city         VARCHAR(255) NOT NULL,
    date         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email        VARCHAR(255) NOT NULL,
    first_name   VARCHAR(255) NOT NULL,
    last_name    VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    post_index   INT          NOT NULL,
    total_price  DOUBLE       NOT NULL,
    user_id      BIGINT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE orders_perfumes
(
    order_id    BIGINT NOT NULL,
    perfumes_id BIGINT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (perfumes_id) REFERENCES perfumes (id)
);

CREATE TABLE perfumes
(
    id                     BIGINT AUTO_INCREMENT PRIMARY KEY,
    country                VARCHAR(255) NOT NULL,
    description            VARCHAR(255),
    filename               VARCHAR(255),
    fragrance_base_notes   VARCHAR(255) NOT NULL,
    fragrance_middle_notes VARCHAR(255) NOT NULL,
    fragrance_top_notes    VARCHAR(255) NOT NULL,
    perfume_gender         VARCHAR(255) NOT NULL,
    perfume_title          VARCHAR(255) NOT NULL,
    perfumer               VARCHAR(255) NOT NULL,
    price                  INT          NOT NULL,
    type                   VARCHAR(255) NOT NULL,
    volume                 VARCHAR(255) NOT NULL,
    year                   INT          NOT NULL
);

CREATE TABLE user_role
(
    user_id BIGINT NOT NULL,
    roles   VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE users
(
    id                  BIGINT AUTO_INCREMENT PRIMARY KEY,
    activation_code     VARCHAR(255),
    active              BOOLEAN      NOT NULL,
    address             VARCHAR(255),
    city                VARCHAR(255),
    email               VARCHAR(255) NOT NULL,
    first_name          VARCHAR(255) NOT NULL,
    last_name           VARCHAR(255),
    password            VARCHAR(255) NOT NULL,
    password_reset_code VARCHAR(255),
    phone_number        VARCHAR(255),
    post_index          VARCHAR(255)
);

CREATE TABLE users_perfume_list
(
    user_id         BIGINT NOT NULL,
    perfume_list_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (perfume_list_id) REFERENCES perfumes (id)
);

alter table if exists orders
    add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users;
alter table if exists orders_perfumes
    add constraint FK9c3l5vucp0yrrwpc0v8vk8knt foreign key (perfumes_id) references perfumes;
alter table if exists orders_perfumes
    add constraint FK8jft4d30d5dgvauht7ssndwau foreign key (order_id) references orders;
alter table if exists user_role
    add constraint FKj345gk1bovqvfame88rcx7yyx foreign key (user_id) references users;
alter table if exists users_perfume_list
    add constraint FK9neiuundys2yde15o8tcybbvw foreign key (perfume_list_id) references perfumes;
alter table if exists users_perfume_list
    add constraint FKsnhp8qv0xdtp17dmdrhq201ym foreign key (user_id) references users;
