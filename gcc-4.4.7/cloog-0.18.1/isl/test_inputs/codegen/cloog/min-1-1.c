for (int c0 = 1; c0 <= N; c0 += 1)
  for (int c1 = 0; c1 <= min(min(N - c0, c0), M); c1 += 1)
    S1(c0, c1);
