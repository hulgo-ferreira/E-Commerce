


def get_fake_login(nomeDoCenario):
    cenarios = {
        "cenario1": {
            "email": "hulgo@teste.com.br",
            "senha": "pwd123",
        },
        "cenario2": {
            "email": "hulgo@teste.com.br", 
            "senha": "pwd12345",
        },
        "cenario3": {
            "email": "hulgo123@teste.com.br", 
            "senha": "pwd123",
        },
        "cenario4": {
            "email": "admin@teste.com.br", 
            "senha": "admin"
        }
    }
    return cenarios.get(nomeDoCenario)