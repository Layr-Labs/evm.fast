import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles374
def optimizedBody374_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 6), (6, 4), (2, 2), (0, 0)]

def optimizedBody374_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody374_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody374_3 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 372) ([0, 2, 4, 6, 8]) (none)

def optimizedBody374_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_2 optimizedBody374_3

def optimizedBody374_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_1 optimizedBody374_4

def optimizedBody374_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody374_0 optimizedBody374_5

def oracle374 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
          (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))))
      Flapjack.Spt.ln))
def optimized374 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(374, 4, optimizedBody374_6)
end InitECandidate.Proofs.SmallStages.Oracles374
