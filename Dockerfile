FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

# Install dependecies
RUN pip install --upgrade pip && pip install scikit-learn pandas seaborn

# Install pbdlib-python
COPY pbdlib-python /pbdlib-python
RUN cd /pbdlib-python && pip install -e .

RUN cp -r /pbdlib-python/notebooks /tf