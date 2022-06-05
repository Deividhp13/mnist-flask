FROM continuumio/miniconda3:4.7.12
COPY . /mnist-fastapi
WORKDIR /mnist-fastapi
RUN conda install --yes --file requirements.txt
CMD ["python", "app.py"]



