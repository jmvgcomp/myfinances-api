package dev.jmvg.myfinances.api.resource;

import dev.jmvg.myfinances.api.model.Pessoa;
import dev.jmvg.myfinances.api.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.net.URI;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/pessoas")
public class PessoaResource {
    private PessoaRepository pessoaRepository;
    @Autowired
    public PessoaResource(PessoaRepository pessoaRepository) {
        this.pessoaRepository = pessoaRepository;
    }

    @GetMapping
    private List<Pessoa> listar(){
        return pessoaRepository.findAll();
    }

    @GetMapping("/{codigo}")
    private ResponseEntity<Pessoa> buscarPeloCodigo(@PathVariable Long codigo){
        Optional<Pessoa> pessoa = pessoaRepository.findById(codigo);
        return pessoa.map(value -> ResponseEntity.ok().body(value))
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Pessoa> criar(@Valid @RequestBody Pessoa pessoa, HttpServletResponse response){
        Pessoa pessoaSalva = pessoaRepository.save(pessoa);

        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{codigo}")
                .buildAndExpand(pessoaSalva.getCodigo()).toUri();
        response.setHeader("Location", uri.toASCIIString());

        return ResponseEntity.created(uri).body(pessoaSalva);
    }
}
