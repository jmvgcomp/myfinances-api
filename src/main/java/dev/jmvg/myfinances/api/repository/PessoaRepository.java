package dev.jmvg.myfinances.api.repository;

import dev.jmvg.myfinances.api.model.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {
}
