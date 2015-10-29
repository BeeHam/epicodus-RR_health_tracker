module ApplicationHelper
  def exer_sortable(exer_column, exer_title = nil)
    exer_title ||= exer_column.titleize
    exer_direction = (exer_column == params[:exer_sort] && params[:exer_direction] == "asc") ? "desc" : "asc"
    link_to exer_title, exer_sort: exer_column, exer_direction: exer_direction, food_sort: params[:food_sort], food_direction: params[:food_direction]
  end

  def food_sortable(food_column, food_title = nil)
    food_title ||= food_column.titleize
    food_direction = (food_column == params[:food_sort] && params[:food_direction] == "asc") ? "desc" : "asc"
    link_to food_title, food_sort: food_column, food_direction: food_direction, exer_direction: params[:exer_direction], exer_sort: params[:exer_sort]
  end
end



# exer_direction = (exer_column == params[:exer_sort] && params[:exer_direction] == "asc") ? "desc" : "asc"
#
# if exer_column == params[:exer_sort]
#   if exer_direction == "asc"
#     exer_direction = "desc"
#   else
#     exer_direction = "asc"
#   end
# end

# exer_direction = exer_direction == "asc" ? "desc" : "asc"



# exer_title ||= exer_column.titleize
#
# if exer_title == nil
#   exer_title = exer_column.titleize
# end
