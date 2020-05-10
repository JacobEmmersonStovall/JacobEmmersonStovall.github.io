<script>
  let links = [{
    href: "mailto:jacobestovall@gmail.com",
    text: "Email Me."
  }, {
    href: "https://www.linkedin.com/in/jacob-stovall-14b2a093",
    text: "Look at LinkedIn."
  }];
</script>

<style>
  :global(body) {
    font-family: "Source Code Pro", monospace;
    background: #000;
    color: #fff;
  }
  .appDiv {
  font-size: 32px;
  text-align: center;
  width: 100%;
  color: #fff
}

ul{
  list-style: none;
}

a{
  color: #fff;
  text-decoration: none;
}

a:hover{
  color: #777;
}

</style>

<div class="appDiv">
  <img src="./images/Jacob_Vector.png" alt="Big Head of Jacob Stovall" />
  <p>Software Developer. Improvisor. Just a Person.</p>
  <ul>
    {#each links as {href, text}}
      <li><a {href} >{text}</a></li>
    {/each}
  </ul>
</div>
