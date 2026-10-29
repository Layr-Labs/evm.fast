import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody786_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (52, 2)]

def optimizedBody786_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (52, 52)]

def optimizedBody786_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (52, 52)]

def optimizedBody786_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody786_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_2 optimizedBody786_3

def optimizedBody786_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_1, 786, 2)) (some 69) ([]) (some (2, optimizedBody786_4, 786, 3))

def optimizedBody786_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody786_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody786_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (50, 50), (52, 52)]

def optimizedBody786_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody786_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody786_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_10 optimizedBody786_3

def optimizedBody786_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_9, 786, 4)) (some 68) ([2]) (some (2, optimizedBody786_11, 786, 5))

def optimizedBody786_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52)]

def optimizedBody786_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52)]

def optimizedBody786_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52)]

def optimizedBody786_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_15 optimizedBody786_3

def optimizedBody786_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_14, 786, 6)) (some 68) ([2]) (some (2, optimizedBody786_16, 786, 7))

def optimizedBody786_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50), (52, 6)]

def optimizedBody786_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (0, 52)]

def optimizedBody786_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (0, 52)]

def optimizedBody786_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_20 optimizedBody786_3

def optimizedBody786_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_19, 786, 8)) (some 740) ([2, 4]) (some (2, optimizedBody786_21, 786, 9))

def optimizedBody786_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 4), (52, 0)]

def optimizedBody786_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (6, 50), (4, 52)]

def optimizedBody786_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (4, 52)]

def optimizedBody786_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_25 optimizedBody786_3

def optimizedBody786_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_24, 786, 10)) (some 740) ([2, 4]) (some (2, optimizedBody786_26, 786, 11))

def optimizedBody786_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 4)]

def optimizedBody786_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50)]

def optimizedBody786_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50)]

def optimizedBody786_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_30 optimizedBody786_3

def optimizedBody786_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_29, 786, 12)) (some 739) ([2, 4, 6]) (some (2, optimizedBody786_31, 786, 13))

def optimizedBody786_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody786_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody786_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody786_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody786_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody786_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody786_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody786_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody786_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_40 optimizedBody786_3

def optimizedBody786_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_39, 786, 14)) (some 734) ([2, 4, 6]) (some (2, optimizedBody786_41, 786, 15))

def optimizedBody786_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody786_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody786_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody786_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_45 optimizedBody786_3

def optimizedBody786_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_44, 786, 16)) (some 733) ([2, 4]) (some (2, optimizedBody786_46, 786, 17))

def optimizedBody786_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody786_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody786_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody786_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_50 optimizedBody786_3

def optimizedBody786_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody786_49, 786, 18)) (some 70) ([2]) (some (2, optimizedBody786_51, 786, 19))

def optimizedBody786_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody786_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody786_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_53 optimizedBody786_54

def optimizedBody786_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_55

def optimizedBody786_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_52 optimizedBody786_56

def optimizedBody786_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_48 optimizedBody786_57

def optimizedBody786_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_58

def optimizedBody786_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_47 optimizedBody786_59

def optimizedBody786_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_43 optimizedBody786_60

def optimizedBody786_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_61

def optimizedBody786_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_42 optimizedBody786_62

def optimizedBody786_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_28 optimizedBody786_63

def optimizedBody786_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_38 optimizedBody786_64

def optimizedBody786_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_37 optimizedBody786_65

def optimizedBody786_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_36 optimizedBody786_66

def optimizedBody786_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_35 optimizedBody786_67

def optimizedBody786_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_34 optimizedBody786_68

def optimizedBody786_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_33 optimizedBody786_69

def optimizedBody786_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_70

def optimizedBody786_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_32 optimizedBody786_71

def optimizedBody786_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_28 optimizedBody786_72

def optimizedBody786_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_73

def optimizedBody786_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_27 optimizedBody786_74

def optimizedBody786_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_23 optimizedBody786_75

def optimizedBody786_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_76

def optimizedBody786_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_22 optimizedBody786_77

def optimizedBody786_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_18 optimizedBody786_78

def optimizedBody786_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_79

def optimizedBody786_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_17 optimizedBody786_80

def optimizedBody786_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_13 optimizedBody786_81

def optimizedBody786_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_7 optimizedBody786_82

def optimizedBody786_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_83

def optimizedBody786_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_12 optimizedBody786_84

def optimizedBody786_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_8 optimizedBody786_85

def optimizedBody786_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_7 optimizedBody786_86

def optimizedBody786_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_6 optimizedBody786_87

def optimizedBody786_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_5 optimizedBody786_88

def optimizedBody786_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody786_0 optimizedBody786_89

def optimized786 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(786, 3, optimizedBody786_90)
end InitECandidate.Proofs.StackAnalysis
