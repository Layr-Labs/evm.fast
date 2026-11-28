import InitECandidate.Solver.Divm.RuleA

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Divm
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def dma0 : ProgHOL 64 :=
  (ProgHOL.skip)

def dma1 : ProgHOL 64 :=
  (ProgHOL.assign .local (nm "j") (ExpHOL.var .local (nm "m")))

def dma2 : ProgHOL 64 :=
  (ProgHOL.seq (ProgHOL.store (ExpHOL.var .local (nm "r")) (ExpHOL.var .local (nm "k"))) (ProgHOL.return ((cw 0))))

end InitECandidate.Solver.Divm
