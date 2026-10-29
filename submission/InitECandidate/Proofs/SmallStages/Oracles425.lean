import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles425
def optimizedBody425_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody425_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody425_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody425_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody425_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_2 optimizedBody425_3

def optimizedBody425_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody425_1, 425, 2)) (some 421) ([2, 4]) (some (2, optimizedBody425_4, 425, 3))

def optimizedBody425_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody425_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody425_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody425_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody425_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_9 optimizedBody425_3

def optimizedBody425_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody425_8, 425, 4)) (some 418) ([2]) (some (2, optimizedBody425_10, 425, 5))

def optimizedBody425_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody425_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody425_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44)]

def optimizedBody425_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody425_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody425_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_16 optimizedBody425_3

def optimizedBody425_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody425_15, 425, 6)) (some 424) ([2]) (some (2, optimizedBody425_17, 425, 7))

def optimizedBody425_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody425_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_6 optimizedBody425_19

def optimizedBody425_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_18 optimizedBody425_20

def optimizedBody425_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_14 optimizedBody425_21

def optimizedBody425_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_6 optimizedBody425_22

def optimizedBody425_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody425_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_6 optimizedBody425_24

def optimizedBody425_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody425_23 optimizedBody425_25

def optimizedBody425_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody425_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody425_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_27 optimizedBody425_28

def optimizedBody425_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_13 optimizedBody425_29

def optimizedBody425_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_6 optimizedBody425_30

def optimizedBody425_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_26 optimizedBody425_31

def optimizedBody425_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_13 optimizedBody425_32

def optimizedBody425_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_12 optimizedBody425_33

def optimizedBody425_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_6 optimizedBody425_34

def optimizedBody425_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_11 optimizedBody425_35

def optimizedBody425_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_7 optimizedBody425_36

def optimizedBody425_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_6 optimizedBody425_37

def optimizedBody425_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_5 optimizedBody425_38

def optimizedBody425_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody425_0 optimizedBody425_39

def oracle425 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 22))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            Flapjack.Spt.ln)))))
def optimized425 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(425, 3, optimizedBody425_40)
end InitECandidate.Proofs.SmallStages.Oracles425
