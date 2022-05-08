local nvim_colorizer_status_ok, nvim_colorizer = pcall(require, "colorizer")
if not nvim_colorizer_status_ok then
  return
end

nvim_colorizer.setup()
