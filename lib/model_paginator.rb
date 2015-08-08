module ModelPaginator
  def paginate(resource)
    items_per_page = 3
    @page = params[:page_id].to_i
    @page = 1 unless @page > 0
    offset = (@page - 1) * items_per_page
    @pages_count = (resource.count.to_d / items_per_page).ceil
    resource.limit(items_per_page).offset(offset)
  end
end