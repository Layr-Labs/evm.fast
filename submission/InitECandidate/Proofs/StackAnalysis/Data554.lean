import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody554_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody554_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44)]

def optimizedBody554_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody554_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody554_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_2 optimizedBody554_3

def optimizedBody554_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_1, 554, 2)) (some 475) ([]) (some (2, optimizedBody554_4, 554, 3))

def optimizedBody554_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody554_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody554_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody554_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_8, 554, 4)) (some 466) ([2, 4, 6, 8]) (some (2, optimizedBody554_4, 554, 5))

def optimizedBody554_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (48, 0)]

def optimizedBody554_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody554_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody554_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_12 optimizedBody554_3

def optimizedBody554_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_11, 554, 6)) (some 495) ([2]) (some (2, optimizedBody554_13, 554, 7))

def optimizedBody554_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody554_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody554_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody554_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_17 optimizedBody554_3

def optimizedBody554_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_16, 554, 8)) (some 470) ([2]) (some (2, optimizedBody554_18, 554, 9))

def optimizedBody554_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0)]

def optimizedBody554_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody554_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody554_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_22 optimizedBody554_3

def optimizedBody554_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_21, 554, 10)) (some 496) ([2, 4]) (some (2, optimizedBody554_23, 554, 11))

def optimizedBody554_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody554_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_8, 554, 12)) (some 407) ([2]) (some (2, optimizedBody554_4, 554, 13))

def optimizedBody554_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody554_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody554_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody554_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody554_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody554_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody554_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody554_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_33, 554, 14)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody554_4, 554, 15))

def optimizedBody554_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody554_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody554_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody554_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_37 optimizedBody554_3

def optimizedBody554_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody554_36, 554, 16)) (some 490) ([2]) (some (2, optimizedBody554_38, 554, 17))

def optimizedBody554_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody554_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody554_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody554_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_41 optimizedBody554_42

def optimizedBody554_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_40 optimizedBody554_43

def optimizedBody554_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_44

def optimizedBody554_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_39 optimizedBody554_45

def optimizedBody554_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_2 optimizedBody554_46

def optimizedBody554_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_35 optimizedBody554_47

def optimizedBody554_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_48

def optimizedBody554_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_34 optimizedBody554_49

def optimizedBody554_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_32 optimizedBody554_50

def optimizedBody554_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_31 optimizedBody554_51

def optimizedBody554_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_27 optimizedBody554_52

def optimizedBody554_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_30 optimizedBody554_53

def optimizedBody554_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_27 optimizedBody554_54

def optimizedBody554_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_29 optimizedBody554_55

def optimizedBody554_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_27 optimizedBody554_56

def optimizedBody554_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_28 optimizedBody554_57

def optimizedBody554_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_27 optimizedBody554_58

def optimizedBody554_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_59

def optimizedBody554_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_26 optimizedBody554_60

def optimizedBody554_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_25 optimizedBody554_61

def optimizedBody554_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_62

def optimizedBody554_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_24 optimizedBody554_63

def optimizedBody554_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_20 optimizedBody554_64

def optimizedBody554_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_65

def optimizedBody554_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_19 optimizedBody554_66

def optimizedBody554_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_15 optimizedBody554_67

def optimizedBody554_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_68

def optimizedBody554_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_14 optimizedBody554_69

def optimizedBody554_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_10 optimizedBody554_70

def optimizedBody554_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_71

def optimizedBody554_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_9 optimizedBody554_72

def optimizedBody554_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_7 optimizedBody554_73

def optimizedBody554_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_6 optimizedBody554_74

def optimizedBody554_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_5 optimizedBody554_75

def optimizedBody554_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody554_0 optimizedBody554_76

def optimized554 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(554, 1, optimizedBody554_77)
end InitECandidate.Proofs.StackAnalysis
