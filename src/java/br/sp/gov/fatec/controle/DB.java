
package br.sp.gov.fatec.controle;

import br.sp.gov.fatec.objetos.Cliente;
import br.sp.gov.fatec.objetos.Fornecedor;
import java.util.ArrayList;

public class DB {
    private static ArrayList<Cliente> clientes = null;
    private static ArrayList<Fornecedor> fornecedores = null;

    public static String[] nomesClientes = {"Matheus Oliveira Santos", "José da Silva", "Carlos Santos da Silva", "Manoel Roberto Santos "};
    public static String[] cpfClientes = {"123.456.789-20", "444.333.222-99", "121.231.233-23", "987.665.556-90"};
    public static String[] rgsClientes = {"10.123.456-X", "10.456.789-0", "90.987.654-1", "12.345.678-2"};
    public static String[] emailsClientes = {"matheus@oliveira.com", "jose@silva.com", "carlos@santos.com", "manoel@roberto"};
    public static String[] telefonesClientes = {"(13) 3300-9911", "(11) 3411-0000", "(20) 3400-1199", "(72) 3993-9939"};
    public static String[] enderecosClientes = {"R. Adalberto Matheus Oliveira, N°12, Vila Oliveira, Praia Grande - SP", "Av. Praça das Oliveiras, N°69, Vila Rosa, Santos - SP", "R. Presidente Santos, N°64, Vila Prudente, São Vicente - SP", "Av. Prefeito Souza, N°17, Vila Real, Peruíbe - SP"};
    
    public static String[] nomeFornecedores = {"Roberto Santos", "Melissa Batista", "Carlos Albuquerque", "João Ribeiro"};
    public static String[] razaoSocialFornecedores = {"Sorveteria Santista", "Padaria Pão de Mel", "Oficina Conserta Rápido", "Mercado Tem de Tudo"};
    public static String[] cnpjFornecedores = {"73.675.164/0001-92", "43.463.622/0001-69", "55.204.849/0001-79", "42.505.783/0001-05"};
    public static String[] emailsFornecedores = {"suporte@sorveteriasantista.com", "contato@padariapaodemel.com.br", "oficina@consertarapido.com.br", "mercado@temdetudo.com.br"};
    public static String[] telefonesFornecedores = {"(12) 3410-9922", "(10) 3566-1122", "(21) 3499-2288", "(77) 3576-8811"};
    public static String[] enderecosFornecedores = {"Rua Joaquim Ferreira, N°66, Vila Santista, Santos - SP", "Av. Praça Paraíba, N°10, Vila Ema, São Vicente - SP", "R. Cenno Sbrighi, 378, Vila Albuquerque, Guarujá - SP", "Av. Plácido de Castro, N°13, Vila dos Trabalhadores, Praia Grande - SP"};

    public static ArrayList<Cliente> getClientes(){
        if(clientes == null) {
            clientes = new ArrayList<>();
            Cliente cliente;

            for(int i=0; i<nomesClientes.length; i++) {
                    cliente = new Cliente();

                    cliente.setNome(nomesClientes[i]);
                    cliente.setCpf(cpfClientes[i]);
                    cliente.setRg(rgsClientes[i]);
                    cliente.setEmail(emailsClientes[i]);
                    cliente.setTelefone(telefonesClientes[i]);
                    cliente.setEndereco(enderecosClientes[i]);

                    clientes.add(cliente);
            }
        }
        return clientes;
    }

    public static ArrayList<Fornecedor> getFornecedores(){
        if(fornecedores == null) {
            fornecedores = new ArrayList<>();
            Fornecedor fornecedor = new Fornecedor();

            for(int i=0; i<nomeFornecedores.length; i++) {
                    fornecedor = new Fornecedor();

                    fornecedor.setNome(nomeFornecedores[i]);
                    fornecedor.setRazaoSocial(razaoSocialFornecedores[i]);
                    fornecedor.setCnpj(cnpjFornecedores[i]);
                    fornecedor.setEmail(emailsFornecedores[i]);
                    fornecedor.setTelefone(telefonesFornecedores[i]);
                    fornecedor.setEndereco(enderecosFornecedores[i]);

                    fornecedores.add(fornecedor);
            }
        }
        return fornecedores;
    }

}