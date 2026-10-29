import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody518_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody518_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (0, 2), (6, 6), (44, 44)]

def optimizedBody518_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody518_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody518_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_2 optimizedBody518_3

def optimizedBody518_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_1, 518, 2)) (some 475) ([]) (some (2, optimizedBody518_4, 518, 3))

def optimizedBody518_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody518_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 4), (50, 8), (56, 0), (58, 6)]

def optimizedBody518_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44), (46, 46), (50, 50), (56, 56), (58, 58)]

def optimizedBody518_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (56, 56), (58, 58)]

def optimizedBody518_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_9 optimizedBody518_3

def optimizedBody518_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_8, 518, 4)) (some 475) ([]) (some (2, optimizedBody518_10, 518, 5))

def optimizedBody518_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody518_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 6), (50, 50), (52, 4), (54, 8), (56, 56), (58, 58), (60, 0)]

def optimizedBody518_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (8, 50), (48, 52), (50, 54), (0, 56), (6, 58), (52, 60)]

def optimizedBody518_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (46, 48), (8, 50), (48, 52), (50, 54), (0, 56), (6, 58), (52, 60)]

def optimizedBody518_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_15 optimizedBody518_3

def optimizedBody518_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_14, 518, 6)) (some 470) ([2]) (some (2, optimizedBody518_16, 518, 7))

def optimizedBody518_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody518_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46), (6, 48), (10, 50), (4, 52)]

def optimizedBody518_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48), (10, 50), (4, 52)]

def optimizedBody518_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_20 optimizedBody518_3

def optimizedBody518_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_19, 518, 8)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody518_21, 518, 9))

def optimizedBody518_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody518_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody518_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_24, 518, 10)) (some 145) ([2, 4, 6, 8, 10]) (some (2, optimizedBody518_4, 518, 11))

def optimizedBody518_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody518_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody518_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_27, 518, 12)) (some 477) ([2]) (some (2, optimizedBody518_4, 518, 13))

def optimizedBody518_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody518_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody518_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody518_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_31 optimizedBody518_3

def optimizedBody518_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody518_30, 518, 14)) (some 490) ([2]) (some (2, optimizedBody518_32, 518, 15))

def optimizedBody518_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody518_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody518_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody518_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_35 optimizedBody518_36

def optimizedBody518_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_34 optimizedBody518_37

def optimizedBody518_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_38

def optimizedBody518_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_33 optimizedBody518_39

def optimizedBody518_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_2 optimizedBody518_40

def optimizedBody518_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_29 optimizedBody518_41

def optimizedBody518_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_42

def optimizedBody518_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_28 optimizedBody518_43

def optimizedBody518_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_26 optimizedBody518_44

def optimizedBody518_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_45

def optimizedBody518_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_25 optimizedBody518_46

def optimizedBody518_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_23 optimizedBody518_47

def optimizedBody518_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_48

def optimizedBody518_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_22 optimizedBody518_49

def optimizedBody518_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_18 optimizedBody518_50

def optimizedBody518_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_51

def optimizedBody518_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_17 optimizedBody518_52

def optimizedBody518_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_13 optimizedBody518_53

def optimizedBody518_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_12 optimizedBody518_54

def optimizedBody518_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_55

def optimizedBody518_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_11 optimizedBody518_56

def optimizedBody518_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_7 optimizedBody518_57

def optimizedBody518_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_6 optimizedBody518_58

def optimizedBody518_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_5 optimizedBody518_59

def optimizedBody518_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody518_0 optimizedBody518_60

def optimized518 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(518, 1, optimizedBody518_61)
end InitECandidate.Proofs.StackAnalysis
