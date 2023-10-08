FROM python:3.9
LABEL authors="Yuchen Pan"
ADD ./ /thought-cloning
WORKDIR /thought-cloning
RUN ["mkdir", "/TC_STORAGE"]
RUN pip3 install --upgrade pip && pip3 install --editable . && pip3 install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

CMD ["/bin/bash"]