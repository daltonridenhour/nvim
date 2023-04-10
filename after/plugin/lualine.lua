require('lualine').setup{
  options = {
    theme = 'tokyonight-storm'
  },
  sections = {
    lualine_c = {
      {
        'filename',
        path = 1
      }
    }
  }
}
