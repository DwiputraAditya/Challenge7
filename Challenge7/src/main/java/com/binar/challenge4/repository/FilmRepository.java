package com.binar.challenge4.repository;

import com.binar.challenge4.model.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FilmRepository extends JpaRepository<Film, Long> {
    List<Film> findFilmByIsPremiered(Boolean isPremiered);

}

