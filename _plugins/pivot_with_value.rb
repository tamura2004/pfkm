class PivotWithValue
  def initialize(col_keys, row_cols_values, no_label = "−")
    rows = []
    row_cols_values.each do |row_key, cols_values|
      row = []
      col_keys.each do |col_key|
        if cols_values.has_key?(col_key)
          row << cols_values[col_key]
        else
          row << no_label
        end
      end
      rows << row
    end
    rows
  end
end
