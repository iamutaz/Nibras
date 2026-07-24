class FilterParams {
  final String? sortBy;   
  final String? price;   
  final int? rating;      

  const FilterParams({
    this.sortBy,
    this.price,
    this.rating,
  });

  Map<String, dynamic> toQueryParams() {
    final map = <String, dynamic>{};
    if (sortBy != null) map['sort'] = sortBy;
    if (price != null) map['price'] = price;
    if (rating != null) map['rating'] = rating;
    return map;
  }

  static String? sortValueFromLabel(String? label) {
    switch (label) {
      case 'Newest':
        return 'newest';
      case 'Popular':
        return 'popular';
      case 'Top rate':
        return 'top_rated';
      default:
        return null;
    }
  }
}