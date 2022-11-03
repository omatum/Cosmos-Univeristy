import React, { useRef } from "react"
import Helmet from 'react-helmet'
import { withPrefix, Link } from "gatsby"

import emailjs from "@emailjs/browser"

import cu_logo from "../img/cosmos-university-seal.svg"
import sp_logo from "../img/sprtink_logo.svg"

import "../css/core.css"


export default function Home() {

  const form = useRef();

  const sendEjs = (e) =>
  {
    e.preventDefault();

    emailjs.sendForm('service_wxeq7pd', 'template_gmoqyxe', form.current, '0jg95xoh6llbhLPKz')
    .then(function() {
        document.getElementById('contact-form').innerHTML = `<h2>Thanks for signing up! We'll be in touch.</h2>`;
    }, function(error) {
        console.log('FAILED...', error);
    });
    
  }

  return (
    <>
      <Helmet>
        <title>Cosmos Univeristy - Esoteric Knowledge Databanks</title>
        <meta property="og:image" content="https://cosmos.university/social/og-cosmosuniversity-esotericknowledgedatabanks-seal.png" />
        <meta name="description" content="Cosmos University aims to unite bright minds, curious seekers, and ancient knowledge under a revolution in the understanding of our shared Universe." />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet" />
      </Helmet>
        
      <div id="outer-wrap">
        <div id="logo">
          <img src={cu_logo} alt="Cosmos University Seal" />
        </div>
        <section>
          <h2>Cosmos University: <i>A Practical Modern Mystery School</i></h2>
          <p>Have you ever wondered why it is so hard to research spiritual subjects such as Extra Sensory Perception, herbalism, the properties of crystals, rituals and spells, deities and their pantheons, spirit animals, sacred geometry, words, numbers, technologies, symbols, and more from the esoteric and occult realms?</p>

          <p>We believe that all of this information is presented in a fractured form, typically aligning to the individual or group that published the data’s beliefs and that the only way to objectively and accurately provide a resource to which we can all learn from is to codify and present all of this information in one place with thorough sourcing and intuitive interfaces.</p>

          <p>We are on a mission to fill our databanks with the endless tomes of information that we find from these various sources - ranging from intuitively channeled downloads to scientifically proven facts. By doing this, we can bring these multiple sources of diverse information together to see the different perspectives, and emerge patterns of cohesion and agreement.</p>

          <p>We are compiling thousands of texts and millions of experiences from every imaginable belief system and viewpoint into an easily accessible and quickly navigable format so seekers of knowledge can find an oasis of information that will quench their spirit’s thirst for truthful growth.</p>


          <p>Cosmos University aims to unite bright minds, curious seekers, and ancient knowledge under a revolution in the understanding of our shared Universe.</p> 

        </section>
      </div>
      <section id="form">
        <div id="outer-wrap">
          <form id="contact-form" ref={form} onSubmit={sendEjs}>
            <h2>Get Involved</h2>
            <p>Are you interested in being a part of the largest and most ambitious research project ever conducted in this space? <br /> <i>We're currently looking for curators to help us enter data, and to help brainstorm on the best way to present certain topics.</i></p>
            <p><b>Community Centers:</b> <a href="https://discord.gg/U7SHmbntuh">Join Our Discord</a> and <a href="https://www.facebook.com/groups/cosmos-university">Join Our Facebook Group</a></p>
            
            <div class="form-group">
              <h3>Your Email</h3>
              <input id="email" name="dt_email" type="email" aria-label="email" />
            </div>
            
            <div class="form-group">
              <h3>Are you?</h3>
              <div class="select-option">
                <input type="radio" id="select_student" name="dt_reason" value="Student" />
                <label for="select_student">Interested in Enrolling</label>
              </div>
              <div class="select-option">
                <input type="radio" id="select_curator" name="dt_reason" value="Curator" />
                <label for="select_curator">Interested in Being a Curator</label>
              </div>
              <div class="select-option">
                <input type="radio" id="select_professor" name="dt_reason" value="Professor" />
                <label for="select_professor">Interested in Being a Professor</label>
              </div>
              <div class="select-option">
                <input type="radio" id="select_launch" name="dt_reason" value="Launch" />
                <label for="select_launch">Just wanting to know when we launch</label>
              </div>
            </div>
            <input type="submit" value="Sign Up For Updates" />

          </form>
        </div>
        
        
      </section>
      <footer>
        <img src={sp_logo} alt="SPRTINC" />
      </footer>
    </>

    )
}