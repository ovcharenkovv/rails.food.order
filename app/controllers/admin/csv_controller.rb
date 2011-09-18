require 'csv'

class Admin::CsvController < Admin::AdminController
  def import
  end

  def upload
    table = ImportTable.new :original_path => params[:upload][:csv].original_filename
    row_index = 0
#    FasterCSV.parse(params[:upload][:csv]) do |cells|
    uploaded_file= params[:upload][:csv].read
    CSV.parse(uploaded_file) do |cells|
      column_index = 0
      cells.each do |cell|
        table.import_cells.build :column_index => column_index, :row_index => row_index, :contents => cell
        column_index += 1
      end
      row_index += 1
    end
    table.save
    redirect_to admin_import_table_path(table)
  end

end
