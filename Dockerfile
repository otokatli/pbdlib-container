FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN pip install --upgrade pip && pip install scikit-learn

COPY pbdlib-python /pbdlib-python
RUN cd /pbdlib-python && pip install -e .

RUN cp -r /pbdlib-python//notebooks /tf