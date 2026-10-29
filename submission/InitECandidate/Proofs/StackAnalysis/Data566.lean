import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody566_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody566_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody566_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody566_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody566_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_2 optimizedBody566_3

def optimizedBody566_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_1, 566, 2)) (some 475) ([]) (some (2, optimizedBody566_4, 566, 3))

def optimizedBody566_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody566_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody566_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody566_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_8, 566, 4)) (some 466) ([2, 4, 6, 8]) (some (2, optimizedBody566_4, 566, 5))

def optimizedBody566_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody566_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody566_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody566_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_12 optimizedBody566_3

def optimizedBody566_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_11, 566, 6)) (some 495) ([2]) (some (2, optimizedBody566_13, 566, 7))

def optimizedBody566_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody566_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 100#64)))

def optimizedBody566_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48)]

def optimizedBody566_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody566_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody566_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_19 optimizedBody566_3

def optimizedBody566_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_18, 566, 8)) (some 470) ([2]) (some (2, optimizedBody566_20, 566, 9))

def optimizedBody566_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0)]

def optimizedBody566_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody566_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody566_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_24 optimizedBody566_3

def optimizedBody566_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_23, 566, 10)) (some 496) ([2, 4]) (some (2, optimizedBody566_25, 566, 11))

def optimizedBody566_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody566_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (44, 44)]

def optimizedBody566_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_28, 566, 12)) (some 565) ([2]) (some (2, optimizedBody566_4, 566, 13))

def optimizedBody566_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44)]

def optimizedBody566_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody566_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_31, 566, 14)) (some 477) ([2]) (some (2, optimizedBody566_4, 566, 15))

def optimizedBody566_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody566_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody566_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody566_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_35 optimizedBody566_3

def optimizedBody566_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody566_34, 566, 16)) (some 490) ([2]) (some (2, optimizedBody566_36, 566, 17))

def optimizedBody566_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody566_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody566_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody566_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_39 optimizedBody566_40

def optimizedBody566_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_38 optimizedBody566_41

def optimizedBody566_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_42

def optimizedBody566_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_37 optimizedBody566_43

def optimizedBody566_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_2 optimizedBody566_44

def optimizedBody566_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_33 optimizedBody566_45

def optimizedBody566_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_46

def optimizedBody566_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_32 optimizedBody566_47

def optimizedBody566_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_30 optimizedBody566_48

def optimizedBody566_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_49

def optimizedBody566_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_29 optimizedBody566_50

def optimizedBody566_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_27 optimizedBody566_51

def optimizedBody566_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_52

def optimizedBody566_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_26 optimizedBody566_53

def optimizedBody566_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_22 optimizedBody566_54

def optimizedBody566_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_55

def optimizedBody566_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_21 optimizedBody566_56

def optimizedBody566_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_17 optimizedBody566_57

def optimizedBody566_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_16 optimizedBody566_58

def optimizedBody566_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_15 optimizedBody566_59

def optimizedBody566_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_60

def optimizedBody566_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_14 optimizedBody566_61

def optimizedBody566_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_10 optimizedBody566_62

def optimizedBody566_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_63

def optimizedBody566_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_9 optimizedBody566_64

def optimizedBody566_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_7 optimizedBody566_65

def optimizedBody566_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_6 optimizedBody566_66

def optimizedBody566_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_5 optimizedBody566_67

def optimizedBody566_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody566_0 optimizedBody566_68

def optimized566 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(566, 1, optimizedBody566_69)
end InitECandidate.Proofs.StackAnalysis
