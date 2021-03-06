usethis::use_directory("exclude", ignore = TRUE)
usethis::use_git_ignore("exclude/package_builder.R")
usethis::use_git_ignore("exclude")
usethis::use_build_ignore("exclude")
usethis::use_package("utils")
usethis::use_package("rlang")
usethis::use_package("dplyr")
usethis::use_package("purrr")
usethis::use_package("tidyselect")
usethis::use_package("tag")
usethis::use_package("beepr","Suggests")
usethis::use_package("tcltk","Suggests")
usethis::use_package("withr","Suggests")
usethis::use_gpl3_license("GPL-3")

usethis::use_readme_rmd()

usethis::use_testthat()

usethis::use_version()
usethis::use_news_md()


shell("git remote add origin https://github.com/moodymudskipper/tags.git",intern = TRUE)
shell("git push -u origin master -f",intern = TRUE)

devtools::install_github("moodymudskipper/tags")


