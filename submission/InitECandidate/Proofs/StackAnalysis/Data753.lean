import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody753_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (50, 2)]

def optimizedBody753_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody753_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody753_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody753_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_2 optimizedBody753_3

def optimizedBody753_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_1, 753, 2)) (some 69) ([]) (some (2, optimizedBody753_4, 753, 3))

def optimizedBody753_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody753_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody753_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody753_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48), (50, 50)]

def optimizedBody753_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50)]

def optimizedBody753_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_10 optimizedBody753_3

def optimizedBody753_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_9, 753, 4)) (some 68) ([2]) (some (2, optimizedBody753_11, 753, 5))

def optimizedBody753_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody753_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody753_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 2)]

def optimizedBody753_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (52, 52)]

def optimizedBody753_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (52, 52)]

def optimizedBody753_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_17 optimizedBody753_3

def optimizedBody753_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_16, 753, 6)) (some 741) ([2, 4]) (some (2, optimizedBody753_18, 753, 7))

def optimizedBody753_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody753_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody753_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody753_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody753_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 6), (52, 52)]

def optimizedBody753_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50), (50, 52)]

def optimizedBody753_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50), (50, 52)]

def optimizedBody753_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_26 optimizedBody753_3

def optimizedBody753_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_25, 753, 8)) (some 729) ([2, 4]) (some (2, optimizedBody753_27, 753, 9))

def optimizedBody753_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody753_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody753_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody753_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody753_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_32 optimizedBody753_3

def optimizedBody753_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_31, 753, 10)) (some 729) ([2, 4]) (some (2, optimizedBody753_33, 753, 11))

def optimizedBody753_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody753_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody753_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody753_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_37 optimizedBody753_3

def optimizedBody753_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_36, 753, 12)) (some 729) ([2, 4]) (some (2, optimizedBody753_38, 753, 13))

def optimizedBody753_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody753_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody753_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody753_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_42 optimizedBody753_3

def optimizedBody753_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody753_41, 753, 14)) (some 70) ([2]) (some (2, optimizedBody753_43, 753, 15))

def optimizedBody753_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody753_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody753_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody753_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_46 optimizedBody753_47

def optimizedBody753_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_45 optimizedBody753_48

def optimizedBody753_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_49

def optimizedBody753_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_44 optimizedBody753_50

def optimizedBody753_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_40 optimizedBody753_51

def optimizedBody753_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_52

def optimizedBody753_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_39 optimizedBody753_53

def optimizedBody753_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_35 optimizedBody753_54

def optimizedBody753_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_55

def optimizedBody753_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_34 optimizedBody753_56

def optimizedBody753_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_30 optimizedBody753_57

def optimizedBody753_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_29 optimizedBody753_58

def optimizedBody753_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_22 optimizedBody753_59

def optimizedBody753_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_60

def optimizedBody753_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_28 optimizedBody753_61

def optimizedBody753_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_24 optimizedBody753_62

def optimizedBody753_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_23 optimizedBody753_63

def optimizedBody753_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_22 optimizedBody753_64

def optimizedBody753_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_21 optimizedBody753_65

def optimizedBody753_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_20 optimizedBody753_66

def optimizedBody753_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_67

def optimizedBody753_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_19 optimizedBody753_68

def optimizedBody753_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_15 optimizedBody753_69

def optimizedBody753_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_14 optimizedBody753_70

def optimizedBody753_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_13 optimizedBody753_71

def optimizedBody753_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_72

def optimizedBody753_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_12 optimizedBody753_73

def optimizedBody753_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_8 optimizedBody753_74

def optimizedBody753_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_7 optimizedBody753_75

def optimizedBody753_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_76

def optimizedBody753_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_5 optimizedBody753_77

def optimizedBody753_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_0 optimizedBody753_78

def optimized753 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(753, 3, optimizedBody753_79)
end InitECandidate.Proofs.StackAnalysis
