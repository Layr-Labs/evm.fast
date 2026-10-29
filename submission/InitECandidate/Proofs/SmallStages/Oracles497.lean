import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles497
def optimizedBody497_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody497_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 44)]

def optimizedBody497_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44)]

def optimizedBody497_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody497_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_2 optimizedBody497_3

def optimizedBody497_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody497_1, 497, 2)) (some 495) ([2]) (some (2, optimizedBody497_4, 497, 3))

def optimizedBody497_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody497_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody497_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody497_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 100#64)

def optimizedBody497_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody497_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody497_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_10 optimizedBody497_11

def optimizedBody497_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_9 optimizedBody497_12

def optimizedBody497_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_13

def optimizedBody497_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody497_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody497_14 optimizedBody497_15

def optimizedBody497_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody497_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_17 optimizedBody497_12

def optimizedBody497_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_18

def optimizedBody497_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_19

def optimizedBody497_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_16 optimizedBody497_20

def optimizedBody497_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_8 optimizedBody497_21

def optimizedBody497_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_7 optimizedBody497_22

def optimizedBody497_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_6 optimizedBody497_23

def optimizedBody497_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_5 optimizedBody497_24

def optimizedBody497_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody497_0 optimizedBody497_25

def oracle497 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
def optimized497 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(497, 2, optimizedBody497_26)
end InitECandidate.Proofs.SmallStages.Oracles497
