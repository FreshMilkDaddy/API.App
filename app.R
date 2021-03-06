# -------------------------------------------------------
# Environment
# -------------------------------------------------------


source("global.R", local = TRUE)
source("01_Jstage/ui_about.R", local = TRUE)
source("01_Jstage/ui_jstage.R", local = TRUE)

# --------------------------------
# User Interface
# --------------------------------


ui <- dashboardPage(
    dashboardHeader(title = "APIアプリ"),
    dashboardSidebar(sidebarMenu(
        menuItem("0. About", tabName = "about"),
        menuItem("1. Jstage", tabName = "jstage")
        )
    ),
    dashboardBody(
        tabItems(
            tabItem_about,
            tabItem_jstage
            )
        )
    )


# --------------------------------
# Server
# --------------------------------

server <- function(input, output, session) {
    
    source("01_Jstage/server_jstage.R", local = TRUE)
    
}


# --------------------------------
# Run App!
# --------------------------------

shinyApp(ui, server)
