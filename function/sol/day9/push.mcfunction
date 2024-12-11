$execute unless data storage temp filem.$(size) run data modify storage temp filem.$(size) set value []
$data modify storage temp filem.$(size) prepend value $(index)

#TODO use a heap?
$function iter:util/sort_int {in:"temp filem.$(size)"}