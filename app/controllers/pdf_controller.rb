class PDFController < ApplicationController
  def create
    pdf = WickedPdf.new.pdf_from_string(
      html_payload,
      print_media_type: true,
      orientation: 'landscape'
    )

    send_data pdf
  end

  private

  def html_payload
    params.fetch(:html_payload, params.fetch(:htmlPayload))
  end
end
