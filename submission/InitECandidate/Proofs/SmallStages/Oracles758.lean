import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source758
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles758
def optimizedBody758_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody758_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 288#64)

def optimizedBody758_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody758_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody758_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody758_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody758_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_4 optimizedBody758_5

def optimizedBody758_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody758_3, 758, 2)) (some 78) ([2, 4]) (some (2, optimizedBody758_6, 758, 3))

def optimizedBody758_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody758_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody758_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody758_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody758_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_10 optimizedBody758_11

def optimizedBody758_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_9 optimizedBody758_12

def optimizedBody758_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_8 optimizedBody758_13

def optimizedBody758_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_7 optimizedBody758_14

def optimizedBody758_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_2 optimizedBody758_15

def optimizedBody758_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_1 optimizedBody758_16

def optimizedBody758_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody758_0 optimizedBody758_17

def oracle758 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 0 (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
        Flapjack.Spt.ln)))
def optimized758 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(758, 2, optimizedBody758_18)
end InitECandidate.Proofs.SmallStages.Oracles758
