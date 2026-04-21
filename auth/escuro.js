  if (localStorage.getItem('modo') === 'dark') {
    $html.classList.add('dark-mode');
    if ($checkbox) $checkbox.checked = true;
    modo();
   
  }

  function modo(){
     const imagem = document.getElementById("logo");
    const srcAtual = imagem.getAttribute("src");

   if (srcAtual === "TracoLivre/imgs/logoEscuro.png") {
    imagem.setAttribute("src", "TracoLivre/imgs/logo.png");
  } else {
    imagem.setAttribute("src", "TracoLivre/imgs/logoEscuro.png");
  }

  }

  