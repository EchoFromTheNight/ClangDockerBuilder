FROM alpine:edge

RUN echo "ipv6" >> /etc/modules

RUN apk update && apk upgrade

RUN apk update
RUN apk add --no-cache clang clang-dev clang-libs clang-static alpine-sdk dpkg
RUN apk add --update --no-cache cmake
RUN apk add --update --no-cache ccache


RUN clang --version

CMD echo '#include <functional>                                     ' >> temp.cpp && \
    echo '#include <iostream>                                       ' >> temp.cpp && \
    echo '#include <memory>                                         ' >> temp.cpp && \
    echo 'template< class T, class U >                              ' >> temp.cpp && \
    echo 'concept SameHelper = std::is_same_v<T, U>;                ' >> temp.cpp && \
    echo 'int main()                                                ' >> temp.cpp && \
    echo '{                                                         ' >> temp.cpp && \
    echo '  std::cout<<"test"<<std::endl;                           ' >> temp.cpp && \
    echo '  return 0;                                               ' >> temp.cpp && \
    echo '}                                                         ' >> temp.cpp && \
    clang++ -xc++ -std=c++20  temp.cpp -o temp.out && \
    ./temp.out && \
    rm -f temp.cpp temp.out

