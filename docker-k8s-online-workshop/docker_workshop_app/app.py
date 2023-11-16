import streamlit as st
from PIL import Image


st.title('Hi from Streamlit 👋')

image = Image.open('images/undraw_programmer_logo.png')
st.image(image, caption='© unDraw (undraw.co/handcrafts)')