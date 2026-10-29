import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles685
def optimizedBody685_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 4), (0, 0)]

def optimizedBody685_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody685_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 0)]

def optimizedBody685_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody685_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody685_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody685_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_4 optimizedBody685_5

def optimizedBody685_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody685_3, 685, 2)) (some 78) ([2, 4]) (some (2, optimizedBody685_6, 685, 3))

def optimizedBody685_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody685_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody685_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody685_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody685_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_10 optimizedBody685_11

def optimizedBody685_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_9 optimizedBody685_12

def optimizedBody685_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_8 optimizedBody685_13

def optimizedBody685_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_7 optimizedBody685_14

def optimizedBody685_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_2 optimizedBody685_15

def optimizedBody685_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_1 optimizedBody685_16

def optimizedBody685_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody685_0 optimizedBody685_17

def oracle685 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
def optimized685 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(685, 3, optimizedBody685_18)
end InitECandidate.Proofs.SmallStages.Oracles685
