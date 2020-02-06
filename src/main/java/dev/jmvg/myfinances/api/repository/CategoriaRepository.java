package dev.jmvg.myfinances.api.repository;

import dev.jmvg.myfinances.api.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}
