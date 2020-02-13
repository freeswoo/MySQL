USE emsDB;
CREATE TABLE tbl_movie(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    m_rank int UNIQUE,
    m_title VARCHAR(125),
    m_detail_url varchar(255),
    m_image_url varchar(255)
);