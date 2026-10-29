import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles498
def optimizedBody498_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody498_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3000#64)

def optimizedBody498_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody498_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody498_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody498_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody498_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody498_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_5 optimizedBody498_6

def optimizedBody498_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody498_4, 498, 2)) (some 496) ([2]) (some (2, optimizedBody498_7, 498, 3))

def optimizedBody498_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody498_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_2 optimizedBody498_9

def optimizedBody498_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_8 optimizedBody498_10

def optimizedBody498_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_3 optimizedBody498_11

def optimizedBody498_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_2 optimizedBody498_12

def optimizedBody498_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody498_13 optimizedBody498_10

def optimizedBody498_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody498_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody498_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody498_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_16 optimizedBody498_17

def optimizedBody498_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_15 optimizedBody498_18

def optimizedBody498_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_2 optimizedBody498_19

def optimizedBody498_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_14 optimizedBody498_20

def optimizedBody498_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_1 optimizedBody498_21

def optimizedBody498_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody498_0 optimizedBody498_22

def oracle498 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0 (Flapjack.Spt.ls 3))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
        Flapjack.Spt.ln)))
def optimized498 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(498, 3, optimizedBody498_23)
end InitECandidate.Proofs.SmallStages.Oracles498
