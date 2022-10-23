import React from 'react'
import {AiFillGithub} from 'react-icons/ai'
import {AiFillLinkedin} from 'react-icons/ai'
import {BsTelegram} from 'react-icons/bs'
import './footer.css'

const Footer = () => {
  return (
    <footer>
      <a href="#" className='footer__logo'>EVGENII KORNYSHEV</a>
      <ul className="permalinks">
        <li><a href="#">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#experience">Experience</a></li>
        <li><a href="#portfolio">Portfolio</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>

      <div className="footer__socials">
        <a target="_blank" href="https://github.com/Kornyshev"><AiFillGithub/></a>
        <a target="_blank" href="https://www.linkedin.com/in/kornyshev/"><AiFillLinkedin/></a>
        <a target="_blank" href="https://telegram.me/kornyshev_e"><BsTelegram/></a>
      </div>

      <div className="footer__copyright">
        <small>&copy; Evgenii Kornyshev. All rights reserved.</small>
      </div>
    </footer>
  )
}

export default Footer