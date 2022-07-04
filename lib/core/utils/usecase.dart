abstract class UseCase<Output, Input> {
  Output call(Input params);
}

class NoParams {
  const NoParams();
}
