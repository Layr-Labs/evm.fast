import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source722
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles722
def optimizedBody722_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 2), (16, 4), (18, 6), (20, 8), (22, 10), (24, 12)]

def optimizedBody722_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 719) ([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (none)

def optimizedBody722_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody722_0 optimizedBody722_1

def oracle722 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0 Flapjack.Spt.ln)
def optimized722 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(722, 7, optimizedBody722_2)
end InitECandidate.Proofs.SmallStages.Oracles722
