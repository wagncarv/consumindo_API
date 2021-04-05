defmodule Test do
  alias ConsumindoApi.Github.Client
  alias ConsumindoApi.Users.User
  # alias Tesla.Env
  # @fields ["id", "name", "description", "html_url", "stargazers_count"]

  def test do
    list = Client.search("danilo-vieira")
    # Enum.map(list, fn e -> Jason.encode!(e) end)

    # Client.get_repos("ppp")
    # |> get_body()
    # |> Enum.map(fn e -> get_fields(e) end)

    #  |> IEx.Info.info

    # %{conn: %{assigns: %{user: user}}} =  %{
    #   conn: %Plug.Conn{
    #     adapter: {Plug.Cowboy.Conn, :...},
    #     assigns: %{
    #       layout: false,
    #       user: [
    #         %ConsumindoApi.Users.User{
    #           description: "Exemplo de uso de Agent em Elixir",
    #           html_url: "https://github.com/wagncarv/Agent",
    #           id: 315965964,
    #           name: "Agent",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Códigos fontes e arquivos de testes pessoais ou estudos",
    #           html_url: "https://github.com/wagncarv/C-digos",
    #           id: 75857769,
    #           name: "C-digos",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Funções para lidar com cartas de baralho",
    #           html_url: "https://github.com/wagncarv/Cards",
    #           id: 287148642,
    #           name: "Cards",
    #           stargazers_count: 1
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Certificados de cursos",
    #           html_url: "https://github.com/wagncarv/Certificados",
    #           id: 323144254,
    #           name: "Certificados",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/consumindo_API",
    #           id: 354455445,
    #           name: "consumindo_API",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/crud_refeicoes",
    #           id: 351634511,
    #           name: "crud_refeicoes",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Implementações de formatações usando CSS ou frameworks.",
    #           html_url: "https://github.com/wagncarv/CSS-e-Frameworks-front-end",
    #           id: 254772500,
    #           name: "CSS-e-Frameworks-front-end",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/CSS_Exemplos",
    #           id: 345132010,
    #           name: "CSS_Exemplos",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/DateGen",
    #           id: 323905359,
    #           name: "DateGen",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Desafio GoStack13, conceitos de NodeJS",
    #           html_url: "https://github.com/wagncarv/desafio-n1-conceitos-NodeJS",
    #           id: 289817235,
    #           name: "desafio-n1-conceitos-NodeJS",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Desafio GoStack13, conceitos de ReactJS",
    #           html_url: "https://github.com/wagncarv/desafio-n1-conceitos-reactjs",
    #           id: 289830911,
    #           name: "desafio-n1-conceitos-reactjs",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Desafio Node JS",
    #           html_url: "https://github.com/wagncarv/Desafio-NodeJS",
    #           id: 288578766,
    #           name: "Desafio-NodeJS",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Discuss",
    #           html_url: "https://github.com/wagncarv/Discuss",
    #           id: 299053864,
    #           name: "Discuss",
    #           stargazers_count: 1
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Elixir chunks of code",
    #           html_url: "https://github.com/wagncarv/Elixir",
    #           id: 270494311,
    #           name: "Elixir",
    #           stargazers_count: 1
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Criação de imagens sprite css",
    #           html_url: "https://github.com/wagncarv/emoji_sprite",
    #           id: 249602976,
    #           name: "emoji_sprite",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Exercícios e testes",
    #           html_url: "https://github.com/wagncarv/EXERC-CIOS",
    #           id: 75858421,
    #           name: "EXERC-CIOS",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/Exlivery",
    #           id: 350546683,
    #           name: "Exlivery",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "ExMon",
    #           html_url: "https://github.com/wagncarv/ExMon",
    #           id: 305136643,
    #           name: "ExMon",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/Fetch_API",
    #           id: 348059731,
    #           name: "Fetch_API",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/fetch_e_axios",
    #           id: 349548241,
    #           name: "fetch_e_axios",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/FilteredList",
    #           id: 345776928,
    #           name: "FilteredList",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "FizzBuzz",
    #           html_url: "https://github.com/wagncarv/FizzBuzz",
    #           id: 304996465,
    #           name: "FizzBuzz",
    #           stargazers_count: 1
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/FlightBooking",
    #           id: 350707387,
    #           name: "FlightBooking",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/Generate_Report_Async",
    #           id: 350483287,
    #           name: "Generate_Report_Async",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/GenStage",
    #           id: 323217365,
    #           name: "GenStage",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Repositório base",
    #           html_url: "https://github.com/wagncarv/GitBase",
    #           id: 75861354,
    #           name: "GitBase",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Aplicação que usa API do github para exibir repositórios",
    #           html_url: "https://github.com/wagncarv/Github-Explorer",
    #           id: 294275497,
    #           name: "Github-Explorer",
    #           stargazers_count: 1
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: nil,
    #           html_url: "https://github.com/wagncarv/GoBarber",
    #           id: 295039880,
    #           name: "GoBarber",
    #           stargazers_count: 1
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Projetos GoStack",
    #           html_url: "https://github.com/wagncarv/GoStack",
    #           id: 297478688,
    #           name: "GoStack",
    #           stargazers_count: 0
    #         },
    #         %ConsumindoApi.Users.User{
    #           description: "Implementações úteis de HTML e Javascript. Funções importantes e usuais.",
    #           html_url: "https://github.com/wagncarv/HTML5-e-Javascript",
    #           id: 254771518,
    #           name: "HTML5-e-Javascript",
    #           stargazers_count: 0
    #         }
    #       ]
    #     },
    #     before_send: [],
    #     body_params: %{},
    #     cookies: %{},
    #     halted: false,
    #     host: "localhost",
    #     method: "GET",
    #     params: %{"username" => "wagncarv"},
    #     path_info: ["api", "users", "wagncarv"],
    #     path_params: %{"username" => "wagncarv"},
    #     port: 4000,
    #     private: %{
    #       ConsumindoApiWeb.Router => {[], %{}},
    #       :phoenix_action => :show,
    #       :phoenix_controller => ConsumindoApiWeb.UsersController,
    #       :phoenix_endpoint => ConsumindoApiWeb.Endpoint,
    #       :phoenix_format => "json",
    #       :phoenix_layout => {ConsumindoApiWeb.LayoutView, :app},
    #       :phoenix_request_logger => {"request_logger", "request_logger"},
    #       :phoenix_router => ConsumindoApiWeb.Router,
    #       :phoenix_template => "users.json",
    #       :phoenix_view => ConsumindoApiWeb.UsersView,
    #       :plug_session_fetch => ""
    #     },
    #     query_params: %{},
    #     query_string: "",
    #     remote_ip: {127, 0, 0, 1},
    #     req_cookies: %{},
    #     req_headers: [
    #       {"accept", "*/*"},
    #       {"host", "localhost:4000"},
    #       {"user-agent", "insomnia/2021.2.2"}
    #     ],
    #     request_path: "/api/users/wagncarv",
    #     resp_body: nil,
    #     resp_cookies: %{},
    #     resp_headers: [
    #       {"cache-control", "max-age=0, private, must-revalidate"},
    #       {"x-request-id", "FnLUMX4BWhBCRGsAAAHC"}
    #     ],
    #     scheme: :http,
    #     script_name: [],
    #     secret_key_base: :...,
    #     state: :unset,
    #     status: 200
    #   },
    #   user: [
    #     %ConsumindoApi.Users.User{
    #       description: "Exemplo de uso de Agent em Elixir",
    #       html_url: "https://github.com/wagncarv/Agent",
    #       id: 315965964,
    #       name: "Agent",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Códigos fontes e arquivos de testes pessoais ou estudos",
    #       html_url: "https://github.com/wagncarv/C-digos",
    #       id: 75857769,
    #       name: "C-digos",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Funções para lidar com cartas de baralho",
    #       html_url: "https://github.com/wagncarv/Cards",
    #       id: 287148642,
    #       name: "Cards",
    #       stargazers_count: 1
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Certificados de cursos",
    #       html_url: "https://github.com/wagncarv/Certificados",
    #       id: 323144254,
    #       name: "Certificados",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/consumindo_API",
    #       id: 354455445,
    #       name: "consumindo_API",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/crud_refeicoes",
    #       id: 351634511,
    #       name: "crud_refeicoes",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Implementações de formatações usando CSS ou frameworks.",
    #       html_url: "https://github.com/wagncarv/CSS-e-Frameworks-front-end",
    #       id: 254772500,
    #       name: "CSS-e-Frameworks-front-end",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/CSS_Exemplos",
    #       id: 345132010,
    #       name: "CSS_Exemplos",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/DateGen",
    #       id: 323905359,
    #       name: "DateGen",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Desafio GoStack13, conceitos de NodeJS",
    #       html_url: "https://github.com/wagncarv/desafio-n1-conceitos-NodeJS",
    #       id: 289817235,
    #       name: "desafio-n1-conceitos-NodeJS",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Desafio GoStack13, conceitos de ReactJS",
    #       html_url: "https://github.com/wagncarv/desafio-n1-conceitos-reactjs",
    #       id: 289830911,
    #       name: "desafio-n1-conceitos-reactjs",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Desafio Node JS",
    #       html_url: "https://github.com/wagncarv/Desafio-NodeJS",
    #       id: 288578766,
    #       name: "Desafio-NodeJS",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Discuss",
    #       html_url: "https://github.com/wagncarv/Discuss",
    #       id: 299053864,
    #       name: "Discuss",
    #       stargazers_count: 1
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Elixir chunks of code",
    #       html_url: "https://github.com/wagncarv/Elixir",
    #       id: 270494311,
    #       name: "Elixir",
    #       stargazers_count: 1
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Criação de imagens sprite css",
    #       html_url: "https://github.com/wagncarv/emoji_sprite",
    #       id: 249602976,
    #       name: "emoji_sprite",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Exercícios e testes",
    #       html_url: "https://github.com/wagncarv/EXERC-CIOS",
    #       id: 75858421,
    #       name: "EXERC-CIOS",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/Exlivery",
    #       id: 350546683,
    #       name: "Exlivery",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "ExMon",
    #       html_url: "https://github.com/wagncarv/ExMon",
    #       id: 305136643,
    #       name: "ExMon",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/Fetch_API",
    #       id: 348059731,
    #       name: "Fetch_API",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/fetch_e_axios",
    #       id: 349548241,
    #       name: "fetch_e_axios",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/FilteredList",
    #       id: 345776928,
    #       name: "FilteredList",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "FizzBuzz",
    #       html_url: "https://github.com/wagncarv/FizzBuzz",
    #       id: 304996465,
    #       name: "FizzBuzz",
    #       stargazers_count: 1
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/FlightBooking",
    #       id: 350707387,
    #       name: "FlightBooking",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/Generate_Report_Async",
    #       id: 350483287,
    #       name: "Generate_Report_Async",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/GenStage",
    #       id: 323217365,
    #       name: "GenStage",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Repositório base",
    #       html_url: "https://github.com/wagncarv/GitBase",
    #       id: 75861354,
    #       name: "GitBase",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Aplicação que usa API do github para exibir repositórios",
    #       html_url: "https://github.com/wagncarv/Github-Explorer",
    #       id: 294275497,
    #       name: "Github-Explorer",
    #       stargazers_count: 1
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: nil,
    #       html_url: "https://github.com/wagncarv/GoBarber",
    #       id: 295039880,
    #       name: "GoBarber",
    #       stargazers_count: 1
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Projetos GoStack",
    #       html_url: "https://github.com/wagncarv/GoStack",
    #       id: 297478688,
    #       name: "GoStack",
    #       stargazers_count: 0
    #     },
    #     %ConsumindoApi.Users.User{
    #       description: "Implementações úteis de HTML e Javascript. Funções importantes e usuais.",
    #       html_url: "https://github.com/wagncarv/HTML5-e-Javascript",
    #       id: 254771518,
    #       name: "HTML5-e-Javascript",
    #       stargazers_count: 0
    #     }
    #   ],
    #   view_module: ConsumindoApiWeb.UsersView,
    #   view_template: "users.json"
    # }

    # user
    # list
  end
end
