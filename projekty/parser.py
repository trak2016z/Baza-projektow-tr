def parse_project(project_text):
    newtext = project_text.replace("<obrazek>", '<div class="projectInnerPhoto"><img src="')
    newtext = newtext.replace("</obrazek>", '"/></div>')
    newtext = newtext.replace("<naglowek>", '<p><strong>')
    newtext = newtext.replace("</naglowek>", "</strong></p>")
    return newtext
