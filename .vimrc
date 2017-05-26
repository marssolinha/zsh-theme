map ,pd :call PhpDoc()<Cr>
imap ,pd <Esc>,pd

colorscheme desert
" set font
set gfn=Consolas:h10:cANSI

noh
syntax on

set nocompatible
set nobackup
set fdm=marker
set nu                  " numero de linas
set ai                  " auto-indent
set smartindent
set enc=utf-8           " codificacao
set et st=4 sts=4 
set ts=4  " ExpandTabs SmartTabS SoftTabStop TabSize
"set bs=4                " BackSpace
set sw=4                " Shift Width
set mouse=a
set history=100
set ruler
set title
set hls
set is ic scs
set js
set showcmd showmode showmatch
fixdel
set incsearch " habilita busca incremental
set wildmode=list:longest,full

syntax enable
let php_htmlInStrings=1 "Reconheçe html dentro de strings php
filetype on
filetype plugin on


cab W w
cab Q q
cab Wq wq
cab wQ wq
cab X x

" Editar e recarregar o _vimrc
nmap <f9> :source ~/.vimrc<Cr>:echo ".vimrc reloaded!"<Cr>
nmap <s-F9> :tabnew ~/.vimrc<Cr>

" Navegando entre as Abas
nmap <C-left> :tabprevious<Cr>
nmap <C-right> :tabnext<Cr>
nmap <C-Up> :ls<Cr>

" Copiar e mover linhas
nmap <C-d> Yp
imap <C-d> <Esc>Yp
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Mapeamento de comando geral
nmap <F4> :noh<Cr>

" Geral
imap <Home> <Esc>I

imap '<Tab> ''<Left>
imap "<Tab> ""<Left>
imap (<Tab> ()<Left>
imap [<Tab> []<Left>
imap {<Tab> {}<Left>

imap ';<Tab> '';<Left><Left>
imap ";<Tab> "";<Left><Left>
imap (;<Tab> ();<Left><Left>
imap [;<Tab> [];<Left><Left>
imap {;<Tab> {};<Left><Left>
imap ['<Tab> [<Tab>'<Tab>
imap {'<Tab> {<Tab>'<Tab>

imap (';<Tab> (;<Tab>'<Tab>
imap [';<Tab> [;<Tab>'<Tab>
imap {';<Tab> {;<Tab>'<Tab>

" HTML
imap ><Tab> ></><Esc>hmm?<\w<Cr>:noh<Cr><Right>yiw`mpF>a
imap !-<Tab> <!--  --><Esc>F i
imap <!<Tab> !-<Tab>

" JS
imap jcl<Tab> console.log();<Esc>F(a


" PHP
imap pprint<Tab> print '<pre>'.print_r($, true)."</pre>";<Esc>F$a
imap dier<Tab> die(print '<pre>'.print_r($, true)."</pre>");<Esc>F$a
imap =<Tab> <?php echo  ?><left><left><left>
imap ?<Tab> <?php  ?><Esc>F?hi
imap '=<Tab> '' => '',<Esc>3F'i
imap fn<Tab> public function () {<Cr>}<Esc>O<Esc>k$F(hi
imap pfn<Tab> private function () {<Cr>}<Esc>O<Esc>k$F(hi
imap fore<Tab> foreach ($ as $item) {<Cr>}<Esc>O<Esc>k0f$a
imap ?fore<Tab> <?php foreach ($ as $item): ?><Cr><?php endforeach; ?><Esc>O<Esc>k$2F$a
imap ?if<Tab> <?php if ($ ): ?><Cr><?php endif; ?><Esc>O<Esc>k$2F$a

" Arrays
imap arr<Tab> array(<Tab>
imap ar;<Tab> array(;<Tab>
imap ar'<Tab> array('<Tab>
imap ar';<Tab> array(';<Tab>

" CodeIgniter
imap dbjoin<Tab> $this->db->join('','');<Esc>F'i
imap cilm<Tab> $this->load->model('','');<Esc>F'i
imap cilv<Tab> $this->load->view('', $this->data);<Esc>F'i
imap cill<Tab> $this->load->library('');<Esc>F'i
imap cilh<Tab> $this->load->helper('');<Esc>F'i
imap cicon<Tab> <?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');<Cr>class  extends CI_Controller<Cr>{<Cr>}<Esc>O<Esc>kk0ela
imap cimod<Tab> <?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');<Cr>class  extends My_Model<Cr>{<Cr>}<Esc>O<Esc>kk0ela
imap inp<Tab> $this->input->post('')<left><left>
imap lang<Tab> $this->lang->line('')<left><left>
imap inps<Tab> $this->input->posts()
imap uri<Tab> $this->uri->segment()<left>
imap sess<Tab> $this->session->userdata('')<left><left>
imap dlq<Tab> die($this->db->last_query());
imap pincs<Tab> <?php include_once(dirname(__FILE__).'/header.php'); ?><Cr><Cr><?php include_once(dirname(__FILE__).'/footer.php'); ?><up>
imap jout<Tab> $this->output->set_content_type('application/json')<cr>->set_output(json_encode());<esc>2<left>i

" Maps para Comandos
nmap ,p :!php %<Cr>
nmap ,c :!phpcs %<Cr>
nmap ,a :!svn add %<Cr>
map <F11> :lvimgrep /function /%<Cr>:lw<Cr>
map <C-o> :tabf 
map <C-n> :tabnew 
map <C-m> :%s///g <cr>

