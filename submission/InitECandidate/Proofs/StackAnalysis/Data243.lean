import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody243_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody243_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (0, 50), (52, 52)]

def optimizedBody243_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (52, 52)]

def optimizedBody243_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody243_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_2 optimizedBody243_3

def optimizedBody243_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody243_1, 243, 2)) (some 69) ([]) (some (2, optimizedBody243_4, 243, 3))

def optimizedBody243_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody243_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 4), (50, 6), (52, 52)]

def optimizedBody243_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (8, 46), (48, 48), (50, 50), (6, 52)]

def optimizedBody243_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (48, 48), (50, 50), (6, 52)]

def optimizedBody243_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_9 optimizedBody243_3

def optimizedBody243_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody243_8, 243, 4)) (some 241) ([2, 4]) (some (2, optimizedBody243_10, 243, 5))

def optimizedBody243_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 8), (48, 48), (50, 50)]

def optimizedBody243_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody243_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody243_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_14 optimizedBody243_3

def optimizedBody243_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody243_13, 243, 6)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody243_15, 243, 7))

def optimizedBody243_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody243_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody243_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody243_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_19 optimizedBody243_3

def optimizedBody243_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody243_18, 243, 8)) (some 70) ([2]) (some (2, optimizedBody243_20, 243, 9))

def optimizedBody243_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (44, 44)]

def optimizedBody243_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody243_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody243_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_24 optimizedBody243_3

def optimizedBody243_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody243_23, 243, 10)) (some 236) ([2, 4, 6]) (some (2, optimizedBody243_25, 243, 11))

def optimizedBody243_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody243_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody243_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody243_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_28 optimizedBody243_29

def optimizedBody243_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_27 optimizedBody243_30

def optimizedBody243_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_6 optimizedBody243_31

def optimizedBody243_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_26 optimizedBody243_32

def optimizedBody243_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_22 optimizedBody243_33

def optimizedBody243_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_6 optimizedBody243_34

def optimizedBody243_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_21 optimizedBody243_35

def optimizedBody243_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_17 optimizedBody243_36

def optimizedBody243_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_6 optimizedBody243_37

def optimizedBody243_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_16 optimizedBody243_38

def optimizedBody243_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_12 optimizedBody243_39

def optimizedBody243_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_6 optimizedBody243_40

def optimizedBody243_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_11 optimizedBody243_41

def optimizedBody243_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_7 optimizedBody243_42

def optimizedBody243_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_6 optimizedBody243_43

def optimizedBody243_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_5 optimizedBody243_44

def optimizedBody243_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody243_0 optimizedBody243_45

def optimized243 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(243, 5, optimizedBody243_46)
end InitECandidate.Proofs.StackAnalysis
