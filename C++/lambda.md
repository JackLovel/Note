### book
```
page 347
```

### exmaple code 
```cpp
#include <QCoreApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);


    // 值捕获
    auto f = [](int a, int b) { return a + b; };
    qDebug() << f(1, 2) << " ";

    size_t v1 = 42;
    auto f1 = [v1] { return v1; };
    v1 = 0;

    qDebug() << f1();

    // 引用捕获
    size_t v2 = 42;
    auto f2 = [&v2] { return v2; };

    v2 = 0;
    auto j = f2();
    qDebug() << j;

    //
    size_t v3 = 3;
    size_t v4 = 4;
    auto f4 = [=, &v3] { return v3 + v4; };

    qDebug() << f4();

    return a.exec();
}

```
