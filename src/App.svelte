<script>
  let links = [
    {
      href: "mailto:jacobestovall@gmail.com",
      text: "Email Me."
    },
    {
      href: "https://www.linkedin.com/in/jacob-stovall-14b2a093",
      text: "Look at LinkedIn."
    }
  ];

  let projects = [
    {
      linkToSrcCode:
        "https://github.com/JacobEmmersonStovall/TheBoothMomAttackGodot",
      linkToDeployed:
        "https://jacobstovall.com/TheBoothMomAttackHtml/index.html",
      title: "The Booth: Mom Attack",
      description:
        "A game I made using the Godot game engine. Code is based on a version of the game I made in Lua.",
      image: "./images/TheBoothMomAttackScreenshot.png"
    }
  ];
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
    color: #fff;
  }

  ul {
    list-style: none;
    padding: 0;
  }

  a {
    color: #fff;
    text-decoration: none;
  }

  a:hover {
    color: #777;
  }
</style>

<div class="appDiv">
  <h1>Jacob Stovall. Software Developer.</h1>
  <!--
  <img src="./images/Jacob_Vector.png" alt="Big Head of Jacob Stovall" />
-->
  <ul>
    {#each links as { href, text }}
      <li>
        <a {href}>{text}</a>
      </li>
    {/each}
  </ul>
  <h2>Projects.</h2>
  <ul>
    {#each projects as { linkToSrcCode, linkToDeployed, title, description, image }}
      <li>
        <div>
          <img
            class="projectImage"
            src={image}
            alt="{title} - Screenshot"
            width="200px"
            height="200px" />
          <div class="descriptionAndContent">
            <h3>{title}.</h3>
            <a href={linkToDeployed}>
              <h4>Link to Deployed App.</h4>
            </a>
            <a href={linkToSrcCode}>
              <h4>Link to Source Code.</h4>
            </a>
            <p>{description}</p>
          </div>
        </div>
      </li>
    {/each}
  </ul>
</div>
