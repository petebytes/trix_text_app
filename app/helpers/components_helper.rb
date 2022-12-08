# use it like this class: "#{btnDanger}" or class="<%= btnXsPrimary %>"
module ComponentsHelper
  # TYPOGRAPHY

  def fontSizeFluid
    "text-xs sm:text-sm md:text-base lg:text-lg xl:text-xl tracking-tight "
  end

  def fontSizeFluidLarge
    "text-xs sm:text-lg md:text-xl lg:text-2xl xl:text-3xl tracking-tight "
  end

  def prose
    "prose prose-slate prose-h1:text-color-h1 prose-h2:text-color-h2 prose-h3:text-color-h3 prose-headings:font-normal prose-h1:font-light "
  end

  def proseContentPage
    prose + fontSizeFluid
  end

  def proseLandingPage
    prose + fontSizeFluidLarge
  end

  # BUTTON
  def btn
    "btn text-center text-white visited:text-white shadow-sm transition ease-in-out duration-300 rounded leading-snug whitespace-nowrap no-underline "
  end

  # BUTTON SIZES

  def xs
    "px-2 py-0.25 xs:lowercase " + fontSizeFluid
  end

  def sm
    "px-2 sm:px-8 py-1 sm:py-1 " + fontSizeFluid
  end

  def md
    "px-2 sm:px-8 md:px-12 py-1 sm:py-1 py-2 " + fontSizeFluid
  end

  def lg
    "px-2 sm:px-8 md:px-12 lg:px-36 py-1 sm:py-1 md:py-2 py-3 " + fontSizeFluid
  end

  def xl
    "px-2 sm:px-8 md:px-12 lg:px-36 xl:px-48 py-1 sm:py-1 md:py-2 lg:py-3 py-4 xl:uppercase " + fontSizeFluid
  end

  # btn text-center text-white visited:text-white shadow-sm transition ease-in-out duration-300 rounded leading-snug whitespace-nowrap no-underline px-2 sm:px-8 md:px-12 lg:px-36 xl:px-48 py-0.5 sm:py-1 md:py-2 lg:py-3 py-4 xl:uppercase xs:block text-xs sm:text-sm md:text-base lg:text-lg xl:text-xl tracking-tight bg-color-primary hover:bg-color-primary

  # COLORS
  def primary
    "bg-color-primary hover:bg-color-primary "
  end

  def secondary
    "bg-color-secondary hover:bg-color-secondary "
  end

  def tertiary
    "bg-color-tertiary hover:bg-color-tertiary "
  end

  def danger
    "bg-color-danger hover:bg-color-danger "
  end

  def warning
    "bg-color-warning hover:bg-color-warning "
  end

  def success
    "bg-color-success hover:bg-color-success "
  end

  # BUTTONS
  # XS
  def btnXsPrimary
    btn + xs + primary
  end

  def btnXsSecondary
    btn + xs + secondary
  end

  def btnXsTertiary
    btn + xs + tertiary
  end

  def btnXsDanger
    btn + xs + danger
  end

  def btnXsWarning
    btn + xs + warning
  end

  def btnXsSuccess
    btn + xs + success
  end

  # SM
  def btnSmPrimary
    btn + sm + primary
  end

  def btnSmSecondary
    btn + sm + secondary
  end

  def btnSmTertiary
    btn + sm + tertiary
  end

  def btnSmDanger
    btn + sm + danger
  end

  def btnSmWarning
    btn + sm + warning
  end

  def btnSmSuccess
    btn + sm + success
  end

  # MD
  def btnMdPrimary
    btn + md + primary
  end

  def btnMdSecondary
    btn + md + secondary
  end

  def btnMdTertiary
    btn + md + tertiary
  end

  def btnMdDanger
    btn + md + danger
  end

  def btnMdSuccess
    btn + md + success
  end

  # LG
  def btnLgPrimary
    btn + lg + primary
  end

  def btnLgSecondary
    btn + lg + secondary
  end

  def btnLgTertiary
    btn + lg + tertiary
  end

  def btnLgDanger
    btn + lg + danger
  end

  def btnLgWarning
    btn + lg + warning
  end

  def btnLgSuccess
    btn + lg + success
  end

  # XL
  def btnXlPrimary
    btn + xl + primary
  end

  def btnXlSecondary
    btn + xl + secondary
  end

  def btnXlTertiary
    btn + xl + tertiary
  end

  def btnXlDanger
    btn + xl + danger
  end

  def btnXlWarning
    btn + xl + warning
  end

  def btnXlSuccess
    btn + xl + success
  end

  # OTHER
  def btnLink
    "bg-transparent shadow-none &:hover, &.outline bg-transparent shadow-none &:hover, &:focus text-black transform: none"
  end

  def btnUppyFileInput
    "text-center px-10 py-2 text-base shadow-sm transition ease-in-out duration-300 rounded leading-snug whitespace-nowrap font-semibold text-color-secondary-600 border border-color-secondary-600 bg-color-background-500 hover:bg-color-secondary-600 hover:text-color-secondary-400 px-10 py-1 text-sm"
  end
end
