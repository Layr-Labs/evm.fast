import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles531
def optimizedBody531_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody531_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody531_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody531_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody531_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody531_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody531_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_4 optimizedBody531_5

def optimizedBody531_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody531_3, 531, 2)) (some 472) ([2]) (some (2, optimizedBody531_6, 531, 3))

def optimizedBody531_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody531_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody531_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody531_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_10 optimizedBody531_5

def optimizedBody531_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody531_9, 531, 4)) (some 492) ([2]) (some (2, optimizedBody531_11, 531, 5))

def optimizedBody531_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody531_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody531_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody531_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_14 optimizedBody531_15

def optimizedBody531_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_13 optimizedBody531_16

def optimizedBody531_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_8 optimizedBody531_17

def optimizedBody531_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_12 optimizedBody531_18

def optimizedBody531_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_4 optimizedBody531_19

def optimizedBody531_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_1 optimizedBody531_20

def optimizedBody531_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_8 optimizedBody531_21

def optimizedBody531_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_7 optimizedBody531_22

def optimizedBody531_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_2 optimizedBody531_23

def optimizedBody531_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_1 optimizedBody531_24

def optimizedBody531_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody531_0 optimizedBody531_25

def oracle531 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
        (Flapjack.Spt.bs Flapjack.Spt.ln 0
          (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
def optimized531 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(531, 1, optimizedBody531_26)
end InitECandidate.Proofs.SmallStages.Oracles531
