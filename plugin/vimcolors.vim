" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   Shift-F8          previous scheme
"   Alt-F8            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)
" Set the current color scheme based on time of day:
"   :SetColors now
if v:version < 700 || exists('loaded_setcolors') || &cp
  finish
endif

let loaded_setcolors = 1
let s:mycolors = ['0x7A69_dark.vim', '1989.vim', '256-grayvim.vim', '256-jungle.vim', '256_noir.vim', '3dglasses.vim', 'abbott.vim', 'abra.vim', 'adam.vim', 'adaryn.vim', 'adobe.vim', 'adrian.vim', 'advantage.vim', 'af.vim', 'aiseered.vim', 'alduin.vim', 'anderson.vim', 'anotherdark.vim', 'ansi_blows.vim', 'antares.vim', 'apprentice.vim', 'aqua.vim', 'argonaut.vim', 'ashen.vim', 'asmanian2.vim', 'asmanian_blood.vim', 'asmdev2.vim', 'asmdev.vim', 'astronaut.vim', 'asu1dark.vim', 'atom.vim', 'aurora.vim', 'automation.vim', 'autumnleaf.vim', 'autumn.vim', 'babymate256.vim', 'badwolf.vim', 'bandit.vim', 'base16-ateliercave.vim', 'base16-atelierdune.vim', 'base16-atelierestuary.vim', 'base16-atelierforest.vim', 'base16-atelierheath.vim', 'base16-atelierlakeside.vim', 'base16-atelierplateau.vim', 'base16-ateliersavanna.vim', 'base16-atelierseaside.vim', 'base16-ateliersulphurpool.vim', 'base16-railscasts.vim', 'base.vim', 'basic.vim', 'baycomb.vim', 'bayQua.vim', 'bclear.vim', 'beachcomber.vim', 'beauty256.vim', 'beekai.vim', 'behelit.vim', 'benlight.vim', 'Benokai.vim', 'bensday.vim', 'billw.vim', 'biogoo.vim', 'birds-of-paradise.vim', 'black_angus.vim', 'blackbeauty.vim', 'blackboard.vim', 'blackdust.vim', 'blacklight.vim', 'BlackSea.vim', 'Black.vim', 'blaquemagick.vim', 'blazer.vim', 'blink.vim', 'Blue2.vim', 'bluechia.vim', 'bluedrake.vim', 'bluegreen.vim', 'blueprint.vim', 'blueshift.vim', 'blue.vim', 'bluez.vim', 'blugrine.vim', 'bmichaelsen.vim', 'bocau.vim', 'bog.vim', 'borland.vim', 'breeze.vim', 'brogrammer.vim', 'brookstream.vim', 'brown.vim', 'bubblegum-256-dark.vim', 'bubblegum-256-light.vim', 'bubblegum.vim', 'buddy.vim', 'burnttoast256.vim', 'busierbee.vim', 'busybee.vim', 'buttercream.vim', 'bvemu.vim', 'bw.vim', 'c16gui.vim', 'C64.vim', 'cabin.vim', 'cake16.vim', 'cake.vim', 'calmar256-dark.vim', 'calmar256-light.vim', 'camo.vim', 'campfire.vim', 'candycode.vim', 'candyman.vim', 'CandyPaper.vim', 'candy.vim', 'caramel.vim', 'carrot.vim', 'carvedwoodcool.vim', 'carvedwood.vim', 'cascadia.vim', 'cgpro.vim', 'chance-of-storm.vim', 'charged-256.vim', 'charon.vim', 'Chasing_Logic.vim', 'chela_light.vim', 'chlordane.vim', 'ChocolateLiquor.vim', 'ChocolatePapaya.vim', 'chocolate.vim', 'chrysoprase.vim', 'clarity.vim', 'cleanphp.vim', 'cleanroom.vim', 'clearance.vim', 'cloudy.vim', 'clue.vim', 'cobalt2.vim', 'cobaltish.vim', 'cobalt.vim', 'coda.vim', 'codeblocks_dark.vim', 'codeburn.vim', 'CodeFactoryv3.vim', 'codeschool.vim', 'coffee.vim', 'coldgreen.vim', 'colorer.vim', 'colorful256.vim', 'colorful.vim', 'colorsbox-faff.vim', 'colorsbox-greenish.vim', 'colorsbox-material.vim', 'colorsbox-stblue.vim', 'colorsbox-stbright.vim', 'colorsbox-steighties.vim', 'colorsbox-stnight.vim', 'colorzone.vim', 'contrasty.vim', 'cool.vim', 'corn.vim', 'corporation.vim', 'crayon.vim', 'crt.vim', 'cthulhian.vim', 'custom.vim', 'c.vim', 'd8g_01.vim', 'd8g_02.vim', 'd8g_03.vim', 'd8g_04.vim', 'dante.vim', 'Dark2.vim', 'darkblack.vim', 'darkblue2.vim', 'darkblue.vim', 'darkbone.vim', 'darkburn.vim', 'DarkDefault.vim', 'darkdevel.vim', 'darkdot.vim', 'darkeclipse.vim', 'darkerdesert.vim', 'darker-robin.vim', 'darkocean.vim', 'darkrobot.vim', 'dark-ruby.vim', 'darkslategray.vim', 'darkspectrum.vim', 'darktango.vim', 'Dark.vim', 'darkzen.vim', 'darkZ.vim', 'darth.vim', 'dawn.vim', 'deepsea.vim', 'default.vim', 'delek.vim', 'delphi.vim', 'denim.vim', 'derefined.vim', 'desert256v2.vim', 'desert256.vim', 'desertedoceanburnt.vim', 'desertedocean.vim', 'desertEx.vim', 'desertink.vim', 'desert.vim', 'detailed.vim', 'devbox-dark-256.vim', 'DevC++.vim', 'Dev_Delight.vim', 'deveiate.vim', 'developer.vim', 'Dim2.vim', 'DimBlue.vim', 'DimGreens.vim', 'DimGreen.vim', 'DimGrey.vim', 'DimRed.vim', 'DimSlate.vim', 'Dim.vim', 'disciple.vim', 'distinguished.vim', 'django.vim', 'donbass.vim', 'doorhinge.vim', 'doriath.vim', 'dracula.vim', 'dual.vim', 'dull.vim', 'duotone-darkcave.vim', 'duotone-darkdesert.vim', 'duotone-darkearth.vim', 'duotone-darkforest.vim', 'duotone-darkheath.vim', 'duotone-darklake.vim', 'duotone-darkmeadow.vim', 'duotone-darkpark.vim', 'duotone-darkpool.vim', 'duotone-darksea.vim', 'duotone-darkspace.vim', 'duotone-dark.vim', 'dusk.vim', 'dw_blue.vim', 'dw_cyan.vim', 'dw_green.vim', 'dw_orange.vim', 'dw_purple.vim', 'dw_red.vim', 'dw_yellow.vim', 'earendel.vim', 'earthburn.vim', 'earth.vim', 'eclipse.vim', 'eclm_wombat.vim', 'ecostation.vim', 'editplus.vim', 'edo_sea.vim', 'ego.vim', 'ekinivim.vim', 'ekvoli.vim', 'elda.vim', 'elflord.vim', 'elise.vim', 'elisex.vim', 'elrodeo.vim', 'elrond.vim', 'emacs.vim', 'enigma.vim', 'enzyme.vim', 'erez.vim', 'eva01.vim', 'eva.vim', 'evening1.vim', 'evening.vim', 'evolution.vim', 'far.vim', 'felipec.vim', 'feral.vim', 'flatcolor.vim', 'flatlandia.vim', 'flatland.vim', 'flattened_dark.vim', 'flattened_light.vim', 'flattown.vim', 'flattr.vim', 'flatui.vim', 'fnaqevan.vim', 'fog.vim', 'fokus.vim', 'forneus.vim', 'freya.vim', 'frood.vim', 'frozen.vim', 'fruidle.vim', 'fruit.vim', 'fruity.vim', 'fu.vim', 'fx.vim', 'gardener.vim', 'gemcolors.vim', 'genericdc-light.vim', 'genericdc.vim', 'gentooish.vim', 'getafe.vim', 'getfresh.vim', 'github.vim', 'gobo.vim', 'golded.vim', 'golden.vim', 'goodwolf.vim', 'google.vim', 'gor.vim', 'gotham256.vim', 'gotham.vim', 'gothic.vim', 'grape.vim', 'gravity.vim', 'grayorange.vim', 'graywh.vim', 'grb256.vim', 'greens.vim', 'Green.vim', 'greenvision.vim', 'grey2.vim', 'greyblue.vim', 'grishin.vim', 'gruvbox.vim', 'gryffin.vim', 'guardian.vim', 'guepardo.vim', 'h80.vim', 'habiLight.vim', 'harlequin.vim', 'heliotrope.vim', 'hemisu.vim', 'herald.vim', 'herokudoc-gvim.vim', 'herokudoc.vim', 'heroku-terminal.vim', 'heroku.vim', 'hhazure.vim', 'hhdblue.vim', 'hhdcyan.vim', 'hhdgray.vim', 'hhdgreen.vim', 'hhdmagenta.vim', 'hhdred.vim', 'hhdyellow.vim', 'hhorange.vim', 'hhpink.vim', 'hhspring.vim', 'hhteal.vim', 'hhviolet.vim', 'hilal.vim', 'holokai.vim', 'hornet.vim', 'hotpot.vim', 'hybrid-light.vim', 'hybrid_material.vim', 'hybrid_reverse.vim', 'hybrid.vim', 'iangenzo.vim', 'ibmedit.vim', 'icansee.vim', 'iceberg.vim', 'impactG.vim', 'impactjs.vim', 'impact.vim', 'industrial.vim', 'industry.vim', 'ingretu.vim', 'inkpot.vim', 'inori.vim', 'ir_black.vim', 'ironman.vim', 'itg_flat.vim', 'jaime.vim', 'jammy.vim', 'janah.vim', 'jelleybeans.vim', 'jellybeans.vim', 'jellyx.vim', 'jhdark.vim', 'jhlight.vim', 'jiks.vim', 'kalahari.vim', 'kalisi.vim', 'kaltex.vim', 'kalt.vim', 'kate.vim', 'kellys.vim', 'khaki.vim', 'kib_darktango.vim', 'kib_plastic.vim', 'kiss.vim', 'kkruby.vim', 'koehler.vim', 'kolor.vim', 'kruby.vim', 'kyle.vim', 'laederon.vim', 'landscape.vim', 'lanzarotta.vim', 'lapis256.vim', 'last256.vim', 'late_evening.vim', 'lazarus.vim', 'legiblelight.vim', 'leglight2.vim', 'leo.vim', 'less.vim', 'lettuce.vim', 'leya.vim', 'lightcolors.vim', 'LightDefaultGrey.vim', 'LightDefault.vim', 'lightning.vim', 'LightTan.vim', 'Light.vim', 'LightYellow.vim', 'lilac.vim', 'lilydjwg_dark.vim', 'lilydjwg_green.vim', 'lilypink.vim', 'lingodirector.vim', 'liquidcarbon.vim', 'literal_tango.vim', 'lizard256.vim', 'lizard.vim', 'lodestone.vim', 'loogica.vim', 'louver.vim', 'lucid.vim', 'lucius.vim', 'luinnar.vim', 'lumberjack.vim', 'luna-term.vim', 'luna.vim', 'lxvc.vim', 'mac_classic.vim', 'made_of_code.vim', 'madeofcode.vim', 'magicwb.vim', 'mango.vim', 'manuscript.vim', 'manxome.vim', 'marklar.vim', 'maroloccio2.vim', 'maroloccio3.vim', 'maroloccio.vim', 'mars.vim', 'martin_krischik.vim', 'materialbox.vim', 'material-theme.vim', 'materialtheme.vim', 'material.vim', 'matrix.vim', 'maui.vim', 'mayansmoke.vim', 'mdark.vim', 'mellow.vim', 'meta5.vim', 'metacosm.vim', 'midnight.vim', 'miko.vim', 'minimalist.vim', 'mint.vim', 'mizore.vim', 'mod8.vim', 'mod_tcsoft.vim', 'mojave.vim', 'molokai_dark.vim', 'molokai.vim', 'monoacc.vim', 'monochrome.vim', 'monokai-chris.vim', 'monokain.vim', 'Monokai.vim', 'montz.vim', 'moonshine_lowcontrast.vim', 'moonshine.vim', 'mophiaDark.vim', 'mophiaSmoke.vim', 'mopkai.vim', 'moria.vim', 'morning.vim', 'moss.vim', 'motus.vim', 'MountainDew.vim', 'mrkn256.vim', 'mrpink.vim', 'mud.vim', 'muon.vim', 'murphy.vim', 'mushroom.vim', 'mustang.vim', 'native.vim', 'nature.vim', 'navajo-night.vim', 'navajo.vim', 'nazca.vim', 'nedit2.vim', 'nedit.vim', 'nefertiti.vim', 'neon.vim', 'neonwave.vim', 'nerv-ous.vim', 'neutron.vim', 'neverland2-darker.vim', 'neverland2.vim', 'neverland-darker.vim', 'neverland.vim', 'neverness.vim', 'nevfn.vim', 'newspaper.vim', 'newsprint.vim', 'nicotine.vim', 'nightflight2.vim', 'nightflight.vim', 'nightshade_print.vim', 'nightshade.vim', 'nightshimmer.vim', 'nightsky.vim', 'night.vim', 'night_vision.vim', 'nightVision.vim', 'nightwish.vim', 'no_quarter.vim', 'northland.vim', 'northsky.vim', 'norwaytoday.vim', 'nour.vim', 'nuvola.vim', 'obsidian2.vim', 'obsidian.vim', 'oceanblack256.vim', 'oceanblack.vim', 'oceandeep.vim', 'OceanicNext.vim', 'oceanlight.vim', 'olive.vim', 'onedark.vim', 'orange.vim', 'osx_like.vim', 'otaku.vim', 'oxeded.vim', 'pablo.vim', 'pacific.vim', 'paintbox.vim', 'PapayaWhip.vim', 'PaperColor.vim', 'parsec.vim', 'peachpuff.vim', 'peaksea.vim', 'pencil.vim', 'penultimate.vim', 'peppers.vim', 'perfect.vim', 'pf_earth.vim', 'phd.vim', 'phoenix.vim', 'phphaxor.vim', 'phpx.vim', 'pink.vim', 'playroom.vim', 'pleasant.vim', 'potts.vim', 'predawn.vim', 'preto.vim', 'pride.vim', 'primary.vim', 'print_bw.vim', 'prmths.vim', 'professional.vim', 'proton.vim', 'ps_color.vim', 'pspad.vim', 'pt_black.vim', 'putty.vim', 'pw.vim', 'pyte.vim', 'python.vim', 'quagmire.vim', 'radicalgoodspeed.vim', 'railscasts.vim', 'rainbow_autumn.vim', 'rainbow_fine_blue.vim', 'rainbow_night.vim', 'rainbow_sea.vim', 'rakr-light.vim', 'random.vim', 'rastafari.vim', 'rcg_gui.vim', 'rcg_term.vim', 'rdark-terminal.vim', 'rdark.vim', 'readme.txt', 'redblack.vim', 'redstring.vim', 'Red.vim', 'refactor.vim', 'relaxedgreen.vim', 'reliable.vim', 'reloaded.vim', 'revolutions.vim', 'Revolution.vim', 'robinhood.vim', 'ron.vim', 'rootwater.vim', 'sadek1.vim', 'sand.vim', 'sandydune.vim', 'satori.vim', 'saturn.vim', 'scheakur.vim', 'scite.vim', 'scooby.vim', 'sean.vim', 'seashell.vim', 'seattle.vim', 'selenitic.vim', 'seoul256-light.vim', 'seoul256.vim', 'seoul.vim', 'seti.vim', 'settlemyer.vim', 'sexy-railscasts.vim', 'sf.vim', 'shadesofamber.vim', 'shades-of-teal.vim', 'shine.vim', 'shobogenzo.vim', 'sienna.vim', 'sierra.vim', 'sift.vim', 'silent.vim', 'simple256.vim', 'simpleandfriendly.vim', 'simple_b.vim', 'simplewhite.vim', 'simplon.vim', 'skittles_berry.vim', 'skittles_dark.vim', 'sky.vim', 'slate2.vim', 'SlateDark.vim', 'slate.vim', 'smpl.vim', 'smp.vim', 'smyck.vim', 'soda.vim', 'softbluev2.vim', 'softblue.vim', 'softlight.vim', 'solarized.vim', 'sole.vim', 'sol-term.vim', 'sol.vim', 'sonofobsidian.vim', 'sonoma.vim', 'sorcerer.vim', 'soruby.vim', 'soso.vim', 'sourcerer.vim', 'southernlights.vim', 'southwest-fog.vim', 'spacegray.vim', 'spectro.vim', 'spiderhawk.vim', 'Spink.vim', 'spring.vim', 'sprinkles.vim', 'stackoverflow.vim', 'stingray.vim', 'stonewashed-256.vim', 'stonewashed-gui.vim', 'strange.vim', 'strawimodo.vim', 'summerfruit256.vim', 'summerfruit.vim', 'sunburst.vim', 'surveyor.vim', 'swamplight.vim', 'sweater.vim', 'SweetCandy.vim', 'symfony.vim', 'synic.vim', 'tabula.vim', 'tango2.vim', 'tango-desert.vim', 'tango-morning.vim', 'tangoshady.vim', 'tango.vim', 'tangoX.vim', 'taqua.vim', 'tayra.vim', 'tchaba2.vim', 'tchaba.vim', 'tcsoft.vim', 'telstar.vim', 'termschool.vim', 'tesla.vim', 'tetragrammaton.vim', 'textmate16.vim', 'thegoodluck.vim', 'thestars.vim', 'thornbird.vim', 'thor.vim', 'tibet.vim', 'tidy.vim', 'tir_black.vim', 'tolerable.vim', 'tomatosoup.vim', 'Tomorrow-Night-Blue.vim', 'Tomorrow-Night-Bright.vim', 'Tomorrow-Night-Eighties.vim', 'Tomorrow-Night.vim', 'Tomorrow.vim', 'tony_light.vim', 'toothpik.vim', 'torte.vim', 'transparent.vim', 'triplejelly.vim', 'trivial256.vim', 'trogdor.vim', 'tropikos.vim', 'turbo.vim', 'tutticolori.vim', 'twilight256.vim', 'twilight.vim', 'twitchy.vim', 'two2tango.vim', 'ubaryd.vim', 'ubloh.vim', 'umber-green.vim', 'understated.vim', 'underwater-mod.vim', 'underwater.vim', 'up.vim', 'valloric.vim', 'vanzan_color.vim', 'vcbc.vim', 'vc.vim', 'vexorian.vim', 'vibrantink.vim', 'vilight.vim', 'vimbrant.vim', 'visualstudio.vim', 'vividchalk.vim', 'VIvid.vim', 'vj.vim', 'void.vim', 'vydark.vim', 'vylight.vim', 'wargrey.vim', 'warm_grey.vim', 'wasabi256.vim', 'watermark.vim', 'wellsokai.vim', 'White2.vim', 'whitebox.vim', 'whitedust.vim', 'white.vim', 'widower.vim', 'win9xblueback.vim', 'wintersday.vim', 'winter.vim', 'woju.vim', 'wolfpack.vim', 'wombat256i.vim', 'wombat256mod.vim', 'wombat256.vim', 'wombat.vim', 'wood.vim', 'wuye.vim', 'xemacs.vim', 'xian.vim', 'xmaslights.vim', 'xoria256.vim', 'xterm16.vim', 'yeller.vim', 'zazen.vim', 'zellner.vim', 'zenburn.vim', 'zenesque.vim', 'zen.vim', 'zephyr.vim', 'zmrok.vim', 'znake.vim']  " colorscheme names that we use to set color

" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
  if len(a:args) == 0
    echo 'Current color scheme names:'
    let i = 0
    while i < len(s:mycolors)
      echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
      let i += 5
    endwhile
  elseif a:args == 'all'
    let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
    let s:mycolors = uniq(sort(map(paths, 'fnamemodify(v:val, ":t:r")')))
    echo 'List of colors set from all installed color schemes'
  elseif a:args == 'my'
    let c1 = 'default elflord peachpuff desert256 breeze morning'
    let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
    let c3 = 'darkblack freya motus impact less chocolateliquor'
    let s:mycolors = split(c1.' '.c2.' '.c3)
    echo 'List of colors set from built-in names'
  elseif a:args == 'now'
    call s:HourColor()
  else
    let s:mycolors = split(a:args)
    echo 'List of colors set from argument (space-separated names)'
  endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
  call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.
function! s:NextColor(how, echo_color)
  if len(s:mycolors) == 0
    call s:SetColors('all')
  endif
  if exists('g:colors_name')
    let current = index(s:mycolors, g:colors_name)
  else
    let current = -1
  endif
  let missing = []
  let how = a:how
  for i in range(len(s:mycolors))
    if how == 0
      let current = localtime() % len(s:mycolors)
      let how = 1  " in case random color does not exist
    else
      let current += how
      if !(0 <= current && current < len(s:mycolors))
        let current = (how>0 ? 0 : len(s:mycolors)-1)
      endif
    endif
    try
      execute 'colorscheme '.s:mycolors[current]
      break
    catch /E185:/
      call add(missing, s:mycolors[current])
    endtry
  endfor
  redraw
  if len(missing) > 0
    echo 'Error: colorscheme not found:' join(missing)
  endif
  if (a:echo_color)
    echo g:colors_name
  endif
endfunction

nnoremap <F8> :call NextColor(1)<CR>
nnoremap <S-F8> :call NextColor(-1)<CR>
nnoremap <A-F8> :call NextColor(0)<CR>

" Set color scheme according to current time of day.
function! s:HourColor()
  let hr = str2nr(strftime('%H'))
  if hr <= 3
    let i = 0
  elseif hr <= 7
    let i = 1
  elseif hr <= 14
    let i = 2
  elseif hr <= 18
    let i = 3
  else
    let i = 4
  endif
  let nowcolors = 'elflord morning desert evening pablo'
  execute 'colorscheme '.split(nowcolors)[i]
  redraw
  echo g:colors_name
endfunction