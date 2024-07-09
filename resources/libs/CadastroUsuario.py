from faker import Faker

fake = Faker('pt_BR')

def get_fake_cadastro():
    cadastro = {
        "nome": fake.name(),
        "cpf": fake.cpf(),
        "email": fake.email(),
        "senha": fake.password(),
        "sexo": fake.random_element(elements=('Masculino', 'Feminino')),
        "nascimento": fake.date_of_birth(minimum_age=18, maximum_age=90).strftime('%d/%m/%Y'),
        "celular": fake.cellphone_number(),
        "cep": fake.postcode(),
        "endereco": fake.street_address(),
        "cidade": fake.city(),
        "uf": fake.state_abbr(),
        "bairro": fake.bairro(),
        "numero": fake.building_number(),
        "complemento": fake.street_address()
    }
    return cadastro