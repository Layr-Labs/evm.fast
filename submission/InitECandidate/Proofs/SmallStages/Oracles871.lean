import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source871
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles871
def optimizedBody871_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody871_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 200#64)

def optimizedBody871_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody871_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody871_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody871_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody871_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_4 optimizedBody871_5

def optimizedBody871_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody871_3, 871, 2)) (some 68) ([2]) (some (2, optimizedBody871_6, 871, 3))

def optimizedBody871_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody871_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody871_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 200#64)

def optimizedBody871_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody871_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody871_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody871_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_13 optimizedBody871_5

def optimizedBody871_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody871_12, 871, 4)) (some 78) ([2, 4]) (some (2, optimizedBody871_14, 871, 5))

def optimizedBody871_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody871_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody871_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_16 optimizedBody871_17

def optimizedBody871_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_8 optimizedBody871_18

def optimizedBody871_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_15 optimizedBody871_19

def optimizedBody871_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_11 optimizedBody871_20

def optimizedBody871_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_10 optimizedBody871_21

def optimizedBody871_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_9 optimizedBody871_22

def optimizedBody871_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_8 optimizedBody871_23

def optimizedBody871_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_7 optimizedBody871_24

def optimizedBody871_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_2 optimizedBody871_25

def optimizedBody871_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_1 optimizedBody871_26

def optimizedBody871_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody871_0 optimizedBody871_27

def oracle871 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))) 0
          (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          Flapjack.Spt.ln))))
def optimized871 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(871, 1, optimizedBody871_28)
end InitECandidate.Proofs.SmallStages.Oracles871
