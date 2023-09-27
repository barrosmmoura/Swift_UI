// Classe pai
class Pessoa {
    
    var nome: String
    var sobrenome: String
    var cpf: String
    
    var nomeCompleto: String {
        return "\(nome) \(sobrenome)"
    }
    
    init(nome: String, sobrenome: String, cpf: String) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.cpf = cpf
        
        mensagem()
    }
    
    func mensagem() {
        print("Bem vindo. Você é aluno, professor ou colaborador?")
    }
}

// Classe filha
class Aluno: Pessoa {
    
    var instituicao: String = ""
    var matricula: String = ""
    
    init(nome: String, sobrenome: String, cpf: String, instituicao: String, matricula: String) {
        super.init(nome: nome, sobrenome: sobrenome, cpf: cpf)
        self.instituicao = instituicao
        self.matricula = matricula
    }
    
    // função sobrescrita
    override func mensagem() {
        print("Olá, aluno. Preencha seus dados: ")
    }
}


// Criando uma instância de Aluno
let aluna = Aluno(
    nome: "Mariana",
    sobrenome: "Barros",
    cpf: "000.000.000-00",
    instituicao: "Unifor",
    matricula: "1110879"
)



print(aluna.nomeCompleto)

// Propriedade armazenada
print("Nome: \(aluna.nome)")
print("Sobrenome: \(aluna.sobrenome)")
print("CPF: \(aluna.cpf)")
print("Instituição: \(aluna.instituicao)")
print("Matrícula: \(aluna.matricula)")


// Array
let faculdades = ["Unifor", "Estacio", "UFC", "IFCE"]


    
//Função que filtra array
func nomesComM(from listaDeAlunos: [String]) -> [String] {
    let nomesFiltrados = listaDeAlunos.filter { nome in
        let letrasMinusculas = nome.lowercased()
        return letrasMinusculas.hasPrefix("m")
    }
    return nomesFiltrados
}

let listaDeAlunos = ["Mariana", "Marcelle", "Raissa", "Saulo"]


let nomesFiltrados = nomesComM(from: listaDeAlunos)
print("Os nomes com a letra M são: ", nomesFiltrados)
 
func filtrarAlunos(_ alunos: [Aluno], da instituicaoPesquisada: String) -> [Aluno] {
    let alunosFiltrados = alunos.filter { aluno in 
                return aluno.instituicao == instituicaoPesquisada
    }
    return []
}


let alunosDaUnifor = filtrarAlunos([], da: "Unifor")

print(alunosDaUnifor)

