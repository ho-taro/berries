function deleteColumn() {
  const deleteButton = document.querySelectorAll(".more-list")
  const ingredientColumn = document.querySelectorAll(".ingredient-column")

  for (let i = 0; i < ingredientColumn.length; i++){
    ingredientColumn[i].addEventListener('mouseover', function(){
      deleteButton[i].setAttribute("style", "display:block;")
    })

    ingredientColumn[i].addEventListener('mouseout', function(){
      deleteButton[i].removeAttribute("style", "display:none;")
    })
  }

}
setInterval(deleteColumn, 1000);