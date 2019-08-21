import Foundation

struct Place: Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}


//Não esqueca de importar o Foundation
func getRequest(url: String,
                completion: @escaping (Place?, Error?) -> Void){
    //URL válida
    guard let URL = URL(string: url) else {
        completion(nil, nil)
        return
    }
    
    
    //Cria a representacão da requisição
    let request = NSMutableURLRequest(url: URL)
    
    
    //Atribui à requisiçāo o método GET
    request.httpMethod = "GET"
    
    
    //Cria a tarefa de requisição
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        (data, response, error) in
        
        guard let data = data, error == nil else {
            completion(nil,nil)
            return
        }
        
        do {
            
            let response = try JSONDecoder().decode(Place.self, from: data)
            completion(response, nil)
            
        } catch let error as NSError {
            // Houve um erro na comunicao com o servidor
            completion(nil, error)
        }
    }
    
    
    //Aciona a tarefa
    task.resume()
    
}


//Coloque a URL da sua API aqui
let url = "https://jsonplaceholder.typicode.com/todos/1"
//let url = "https://uselessfacts.jsph.pl/random.json?language=en"


//Chamando a funcão GET
getRequest(url: url){
    (resultado, erro)  in
    guard let resultado = resultado else {
        print("Arequisição não funcionou")
        return
    }
    print(resultado.userId)
}
