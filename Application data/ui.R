library(shiny)


shinyUI <-  navbarPage((title="ひらがな"),
                       
                       tabPanel("Procvičování",
                                
                                sidebarLayout(
                                  sidebarPanel(actionButton("button_1", "Nový znak",width = 170), actionButton("button_2","Čtení znaku", width = 170), width = 4),
                                  mainPanel(
                                    
                                    tags$head(tags$style(type="text/css", 
                                                         ".test_type {color: black;
                                                         font-size: 200px; 
                                                         }"
                                    ) ),
                                    
                                    
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                    br(),
                                     #h1(strong("Znak:"), align = "center"),
                                   # h1(textOutput("Output_1"), align = "center")
                                   div(class="test_type",
                                       textOutput("Output_1"), align = "center"
                                  )
                                    
                                    
                                  )
                                )
                       ),
                       tabPanel("O hiraganě",
                                h1("1 Stručná historie japonska"),
                                HTML("Japonsko je velmi zajímavou a stále vcelku uzavřenou zemí. Jednou z možností pro lepší proniknutí do japonské
                                     kultury může být právě japonština. Považuji za nutné uvést minimálně video se stručnou historií tohoto půvabného státu: <br>"),
                                HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/Mh5LY4Mz15o" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
                                h1("2 Jak vypadá kompletní hiragana?"),
                                HTML("Podoba kompletní hiaragany je diskutabilní. Za zmínku rozhodně stojí, že některé slabiky podléhají takzvané nigorizaci. Nigorizace je přidání speciálních znaků (formou přidáním koleček či čárek nad slabiky). 
                                Dalším specifikem hiragany je taktéž jóon, který využívá psaní malých znaků ja, ju a jo taktéž pro změnu čtení. Veškerý přehled znaků, který může sloužit taktéž jako nápověda je dostupný
                                například na stránkách <a href=https://www.omniglot.com/writing/japanese_hiragana.htm>www.omniglot.com</a>. <br>"),
                                img(src="Table_hiragana.jpg", width = 600, height = 350, alt = "Tabulka abecedy hiragana"),
                                HTML("<br> <strong>Zdroj obrázku:</strong> File:Table hiragana.jpg. (2015, October 31). Wikimedia Commons, the free media repository. Retrieved 15:22, January 20, 2019 from https://commons.wikimedia.org/w/index.php?title=File:Table_hiragana.jpg&oldid=177465948."),
                                h1("3 Jaké jsou další japonské abecedy/znakové sady?"),
                                h2("3.1 Katakana"),
                                "Katakana je abecedou, která v zásadě kopíruje hiraganu s rozdílem psaní znaků. Tato abeceda je specifická především svým využitím
                                pro zápis jmen a případně taktéž svým využitím pro přepis zahraničních (především anglických) slov, pro které by standardní japonština neměla ekvivalent. Pracuje taktéž rozdílněji například
                                s prodlužováním jednotlivých slabik.",
                                h2("3.2 Kanji"),
                                "Kanji je kolekce znaků, které byly převzaty z čínštiny. Pro dané znaky existuje mnohdy vícero čtění
                                a to jak japonské, tak čínské (při převzetí znaků již japonci pro některé prvky měli svá pojmenování). Říká se, že
                                japonský absolvent střední školy těchto znaků zná okolo 1800 (takzvané common kanji)",
                                h2("3.3 Arabské číslice"),
                                "Ačkoliv japonci mají různé systémy pro počítání věcí a taktéž disponují možností
                                zápisu čísel skrze přejaté znaky Kanji, tak arabské číslice jsou již standardně využívaným prvkem."
                                
                       ),
                       tabPanel("O aplikaci",
                       
                       h1("Hlavní účel aplikace"),
                       HTML("Aplikace byla vytvořena v rámci předmětu Úvod do programování jakožto zápočtový projekt. Téma aplikace bylo autorem vybráno na základě zájmu o japonštinu a chuti
                       toto poznání říšit i dále ve společnosti. Primárně slouží aplikace především pro osobní potřebu procvičování (v průběhu doby dle časových možností bych zhodnotil přidání
                       dalších modulů například pro podporu procvičování slovíček či gramatických cvičení). <br> V případě dalších dotazů
                            ohledně japonštiny, japonska či této aplikace je možné kontaktovat tvůrce na e-mailové adrese <strong>rozek1app2@gmail.com</strong>.")
                     
))
