FROM python:alpine
RUN pip install nltk
WORKDIR /app
RUN python -m nltk.downloader stopwords punkt
COPY random_paragraphs.txt /app
COPY word_count.py /app
CMD  ["python", "word_count.py"]