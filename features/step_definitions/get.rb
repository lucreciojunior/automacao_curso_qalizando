Dado('que o usuario consulte informcoes de funcionario') do
   @getlist = Employee_Requests.new
end
  
Quando('ele realiza a pesquisa') do
    @list_employee = @getlist.find_emploee
end
  
Entao('uma lista de funcionarios deve retorna') do
   expect(@list_employee.code).to eql 200
   expect(@list_employee.message).to eql 'OK'
end


Dado('que o usuario cadastre um novo funcionario') do
   @create = Employee_Requests.new
end
 
  Quando('ele enviar as informaçoes do funcionario') do
     @create_employee = @create.create_employee('jr', 3208, 32)
    puts @create_employee
   end

 
       Entao('esse funcionario sera cadastrado') do
          # puts @create_employee
          # puts @create_employee.code
          # puts @create_employee.msg
          # puts @create_employee["status"]
          # puts @create_employee["message"]
          # puts @create_employee.parsed_response['data']['employee_name']

          expect(@create_employee.code).to eql (200)
          expect(@create_employee.msg).to eql 'OK'
          expect(@create_employee["status"]). to eql 'success'
   
      end


             Dado('que o usuario altera uma informaçao de funcionario') do
               @request = Employee_Requests.new
            end
 
               Quando('ele envia as novas informaçoes') do
                  @update_employee = @request.update_employee(@request.find_emploee['data'][0]['id'], 'nil', 100, 40)
                  puts @update_employee

               end
 
               Entao('as informaçoes serao alteradas') do
                     expect(@update_employee.code).to eql (200)
                     expect(@update_employee.msg).to eql 'OK'
                     expect(@update_employee["status"]).to eql 'success'
                     expect(@update_employee["message"]).to eql 'Successfully! Record has been updated.'
                     expect(@update_employee['data']["employee_name"]).to eql 'nil'
                     
               end


               Dado('que usuario queira deletar um funcionario') do
                  @request = Employee_Requests.new
               end
                
                Quando('ele enviar a identificacao unica') do
                  @delete_employee = @request.delete_employee(@request.find_emploee['data'][0]['id'])
                 
                end
                
                Entao('esse funcionario sera deletado do sistema') do
                  expect(@delete_employee.code).to eql (200)
                  expect(@delete_employee.msg).to eql 'OK'
                  expect(@delete_employee["status"]).to eql 'success'
                  expect(@delete_employee['data']).to eql '1'
                  expect(@delete_employee["message"]).to eql 'Successfully! Record has been deleted'
                  
                end