(define (problem strips-mprime-l6-f3-s3-v8-c12)
(:domain mprime-strips)
(:objects f0 f1 f2 f3 - fuel
          s0 s1 s2 s3 - space
          l0 l1 l2 l3 l4 l5 - location
          v0 v1 v2 v3 v4 v5 v6 v7 - vehicle
          c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 - cargo)
(:init
(not-equal l0 l1)
(not-equal l0 l2)
(not-equal l0 l3)
(not-equal l0 l4)
(not-equal l0 l5)
(not-equal l1 l0)
(not-equal l1 l2)
(not-equal l1 l3)
(not-equal l1 l4)
(not-equal l1 l5)
(not-equal l2 l0)
(not-equal l2 l1)
(not-equal l2 l3)
(not-equal l2 l4)
(not-equal l2 l5)
(not-equal l3 l0)
(not-equal l3 l1)
(not-equal l3 l2)
(not-equal l3 l4)
(not-equal l3 l5)
(not-equal l4 l0)
(not-equal l4 l1)
(not-equal l4 l2)
(not-equal l4 l3)
(not-equal l4 l5)
(not-equal l5 l0)
(not-equal l5 l1)
(not-equal l5 l2)
(not-equal l5 l3)
(not-equal l5 l4)
(fuel-neighbor f0 f1)
(fuel-neighbor f1 f2)
(fuel-neighbor f2 f3)
(space-neighbor s0 s1)
(space-neighbor s1 s2)
(space-neighbor s2 s3)
(conn l0 l1)
(conn l1 l0)
(conn l1 l2)
(conn l2 l1)
(conn l2 l3)
(conn l3 l2)
(conn l3 l4)
(conn l4 l3)
(conn l4 l5)
(conn l5 l4)
(conn l5 l0)
(conn l0 l5)
(has-fuel l0 f2)
(has-fuel l1 f2)
(has-fuel l2 f1)
(has-fuel l3 f3)
(has-fuel l4 f1)
(has-fuel l5 f0)
(has-space  v0 s2)
(has-space  v1 s2)
(has-space  v2 s1)
(has-space  v3 s1)
(has-space  v4 s1)
(has-space  v5 s3)
(has-space  v6 s3)
(has-space  v7 s2)
(at v0 l1)
(at v1 l4)
(at v2 l3)
(at v3 l1)
(at v4 l5)
(at v5 l1)
(at v6 l4)
(at v7 l0)
(at c0 l3)
(at c1 l1)
(at c2 l2)
(at c3 l1)
(at c4 l2)
(at c5 l1)
(at c6 l5)
(at c7 l4)
(at c8 l0)
(at c9 l0)
(at c10 l4)
(at c11 l4)
)
(:goal
(and
(at c0 l5)
(at c1 l2)
(at c2 l3)
(at c3 l3)
(at c4 l2)
(at c5 l2)
(at c6 l2)
(at c7 l1)
(at c8 l1)
(at c9 l1)
(at c10 l5)
(at c11 l0)
)
)
)
