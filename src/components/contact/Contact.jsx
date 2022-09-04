import React from 'react'
import {MdOutlineMail} from 'react-icons/md'
import {BsTelegram} from 'react-icons/bs'
import {BsWhatsapp} from 'react-icons/bs'
import { useRef } from 'react'
import emailjs from 'emailjs-com'
import './contact.css'

const Contact = () => {
  const form = useRef();

  const sendEmail = (e) => {
    e.preventDefault();
    emailjs.sendForm('service_bucpri8', 'template_v572sdc', form.current, 'VKJlkc2yTTihzuTj4');
    e.target.reset();
  };

  return (
    <section id='contact'>
      <h5>Get In Touch</h5>
      <h2>Contact Me</h2>
      <div className="container contact__container">
        <div className="contact__options">
          <article className="contact__option">
            <MdOutlineMail className='contact__option-icon'/>
            <h4>Email</h4>
            <h5>kornyshev.e@ya.ru</h5>
            <a href="mailto:chronomailast@gmail.com" target='_blank'> Send a message</a>
          </article>
          <article className="contact__option">
            <BsTelegram className='contact__option-icon'/>
            <h4>Telegram</h4>
            <h5>@kornyshev_e</h5>
            <a href="https://telegram.me/kornyshev_e" target='_blank'> Send a message</a>
          </article>
        </div>
        <form ref={form} onSubmit={sendEmail}>
          <input type="text" name='name' placeholder='Your Full Name' required/>
          <input type="email" name="email" placeholder="Your Email" required />
          <textarea name="message" rows="10" placeholder='Your Message' required></textarea>
          <button type='submit' className='btn btn-primary'>Send Message</button>
        </form>
      </div>
    </section>
  )
}

export default Contact