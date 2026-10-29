import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles748
def optimizedBody748_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 4)]

def optimizedBody748_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 745) ([0, 2, 4, 6]) (none)

def optimizedBody748_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody748_0 optimizedBody748_1

def oracle748 : Option (Spt Nat) :=
some (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln)
def optimized748 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(748, 3, optimizedBody748_2)
end InitECandidate.Proofs.SmallStages.Oracles748
