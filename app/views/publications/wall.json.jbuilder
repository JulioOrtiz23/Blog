json.array! @publications, partial: 'publications/publication', as: :publication
json.array! @comments, partial: 'comments/comment', as: :comment
