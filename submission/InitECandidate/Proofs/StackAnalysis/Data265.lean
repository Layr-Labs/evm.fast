import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody265_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (44, 8), (48, 4), (50, 2), (54, 10), (52, 6)]

def optimizedBody265_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (46, 46), (44, 44), (48, 48), (50, 50), (54, 54), (0, 52)]

def optimizedBody265_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (54, 54), (0, 52)]

def optimizedBody265_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody265_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_2 optimizedBody265_3

def optimizedBody265_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody265_1, 265, 2)) (some 69) ([]) (some (2, optimizedBody265_4, 265, 3))

def optimizedBody265_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody265_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody265_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody265_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody265_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (50, 50), (52, 4), (54, 54), (56, 0)]

def optimizedBody265_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (46, 46), (4, 44), (10, 48), (8, 50), (48, 52), (44, 54), (16, 56)]

def optimizedBody265_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (10, 48), (8, 50), (48, 52), (44, 54), (16, 56)]

def optimizedBody265_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_12 optimizedBody265_3

def optimizedBody265_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody265_11, 265, 4)) (some 68) ([2]) (some (2, optimizedBody265_13, 265, 5))

def optimizedBody265_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody265_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 48), (44, 44), (16, 16)]

def optimizedBody265_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody265_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody265_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody265_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4), (50, 4), (14, 14)]

def optimizedBody265_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody265_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody265_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody265_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody265_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody265_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody265_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody265_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (44, 50), (48, 10), (50, 14), (52, 12), (54, 8), (56, 48), (58, 44), (60, 16)]

def optimizedBody265_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (10, 48), (14, 50), (12, 52), (8, 54), (48, 56), (58, 58), (60, 60)]

def optimizedBody265_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (10, 48), (14, 50), (12, 52), (8, 54), (48, 56), (58, 58), (60, 60)]

def optimizedBody265_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_30 optimizedBody265_3

def optimizedBody265_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody265_29, 265, 6)) (some 260) ([2, 4]) (some (2, optimizedBody265_31, 265, 7))

def optimizedBody265_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 48), (58, 58), (60, 60)]

def optimizedBody265_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_33

def optimizedBody265_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_32 optimizedBody265_34

def optimizedBody265_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_28 optimizedBody265_35

def optimizedBody265_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_27 optimizedBody265_36

def optimizedBody265_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_26 optimizedBody265_37

def optimizedBody265_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_25 optimizedBody265_38

def optimizedBody265_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_24 optimizedBody265_39

def optimizedBody265_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_23 optimizedBody265_40

def optimizedBody265_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_22 optimizedBody265_41

def optimizedBody265_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_21 optimizedBody265_42

def optimizedBody265_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_20 optimizedBody265_43

def optimizedBody265_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_44

def optimizedBody265_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 48), (58, 44), (60, 16)]

def optimizedBody265_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_46

def optimizedBody265_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody265_45 optimizedBody265_47

def optimizedBody265_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody265_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 14), (4, 4), (44, 4), (14, 14)]

def optimizedBody265_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (44, 44), (48, 10), (50, 14), (52, 12), (54, 8), (56, 48), (58, 58), (60, 60)]

def optimizedBody265_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody265_29, 265, 8)) (some 261) ([2, 4]) (some (2, optimizedBody265_31, 265, 9))

def optimizedBody265_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_52 optimizedBody265_34

def optimizedBody265_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_51 optimizedBody265_53

def optimizedBody265_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_27 optimizedBody265_54

def optimizedBody265_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_26 optimizedBody265_55

def optimizedBody265_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_25 optimizedBody265_56

def optimizedBody265_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_24 optimizedBody265_57

def optimizedBody265_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_23 optimizedBody265_58

def optimizedBody265_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_22 optimizedBody265_59

def optimizedBody265_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_21 optimizedBody265_60

def optimizedBody265_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_50 optimizedBody265_61

def optimizedBody265_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_62

def optimizedBody265_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody265_63 optimizedBody265_34

def optimizedBody265_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody265_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody265_29, 265, 10)) (some 262) ([2, 4]) (some (2, optimizedBody265_31, 265, 11))

def optimizedBody265_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_66 optimizedBody265_34

def optimizedBody265_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_51 optimizedBody265_67

def optimizedBody265_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_27 optimizedBody265_68

def optimizedBody265_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_26 optimizedBody265_69

def optimizedBody265_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_25 optimizedBody265_70

def optimizedBody265_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_24 optimizedBody265_71

def optimizedBody265_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_23 optimizedBody265_72

def optimizedBody265_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_22 optimizedBody265_73

def optimizedBody265_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_21 optimizedBody265_74

def optimizedBody265_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_50 optimizedBody265_75

def optimizedBody265_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_76

def optimizedBody265_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody265_77 optimizedBody265_34

def optimizedBody265_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody265_80 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody265_29, 265, 12)) (some 263) ([2, 4]) (some (2, optimizedBody265_31, 265, 13))

def optimizedBody265_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_80 optimizedBody265_34

def optimizedBody265_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_51 optimizedBody265_81

def optimizedBody265_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_27 optimizedBody265_82

def optimizedBody265_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_26 optimizedBody265_83

def optimizedBody265_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_25 optimizedBody265_84

def optimizedBody265_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_24 optimizedBody265_85

def optimizedBody265_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_23 optimizedBody265_86

def optimizedBody265_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_22 optimizedBody265_87

def optimizedBody265_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_21 optimizedBody265_88

def optimizedBody265_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_50 optimizedBody265_89

def optimizedBody265_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_90

def optimizedBody265_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody265_91 optimizedBody265_34

def optimizedBody265_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody265_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (10, 48), (14, 50), (12, 52), (8, 54), (48, 56), (0, 58), (16, 60)]

def optimizedBody265_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (4, 44), (10, 48), (14, 50), (12, 52), (8, 54), (48, 56), (0, 58), (16, 60)]

def optimizedBody265_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_95 optimizedBody265_3

def optimizedBody265_97 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody265_94, 265, 14)) (some 264) ([2, 4]) (some (2, optimizedBody265_96, 265, 15))

def optimizedBody265_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 48), (0, 0), (16, 16)]

def optimizedBody265_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_98

def optimizedBody265_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_97 optimizedBody265_99

def optimizedBody265_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_51 optimizedBody265_100

def optimizedBody265_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_27 optimizedBody265_101

def optimizedBody265_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_26 optimizedBody265_102

def optimizedBody265_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_25 optimizedBody265_103

def optimizedBody265_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_24 optimizedBody265_104

def optimizedBody265_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_23 optimizedBody265_105

def optimizedBody265_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_22 optimizedBody265_106

def optimizedBody265_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_21 optimizedBody265_107

def optimizedBody265_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_50 optimizedBody265_108

def optimizedBody265_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_109

def optimizedBody265_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 48), (0, 58), (16, 60)]

def optimizedBody265_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_111

def optimizedBody265_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 0) optimizedBody265_110 optimizedBody265_112

def optimizedBody265_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody265_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 48), (44, 0), (16, 16)]

def optimizedBody265_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody265_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_115 optimizedBody265_116

def optimizedBody265_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_114 optimizedBody265_117

def optimizedBody265_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_24 optimizedBody265_118

def optimizedBody265_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_119

def optimizedBody265_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_113 optimizedBody265_120

def optimizedBody265_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_93 optimizedBody265_121

def optimizedBody265_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_18 optimizedBody265_122

def optimizedBody265_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_123

def optimizedBody265_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_92 optimizedBody265_124

def optimizedBody265_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_79 optimizedBody265_125

def optimizedBody265_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_18 optimizedBody265_126

def optimizedBody265_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_127

def optimizedBody265_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_78 optimizedBody265_128

def optimizedBody265_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_65 optimizedBody265_129

def optimizedBody265_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_18 optimizedBody265_130

def optimizedBody265_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_131

def optimizedBody265_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_64 optimizedBody265_132

def optimizedBody265_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_49 optimizedBody265_133

def optimizedBody265_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_18 optimizedBody265_134

def optimizedBody265_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_135

def optimizedBody265_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_48 optimizedBody265_136

def optimizedBody265_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_19 optimizedBody265_137

def optimizedBody265_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_18 optimizedBody265_138

def optimizedBody265_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_139

def optimizedBody265_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody265_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody265_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_141 optimizedBody265_142

def optimizedBody265_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_143

def optimizedBody265_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 16) optimizedBody265_140 optimizedBody265_144

def optimizedBody265_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (4, 4), (10, 10), (14, 14), (12, 12), (8, 8), (48, 2), (44, 6), (16, 16)]

def optimizedBody265_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_146

def optimizedBody265_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_145 optimizedBody265_147

def optimizedBody265_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_17 optimizedBody265_148

def optimizedBody265_150 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody265_149 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody265_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 12), (4, 16), (6, 16), (8, 44), (44, 46), (46, 48)]

def optimizedBody265_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody265_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody265_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_153 optimizedBody265_3

def optimizedBody265_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody265_152, 265, 16)) (some 238) ([2, 4, 6, 8]) (some (2, optimizedBody265_154, 265, 17))

def optimizedBody265_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody265_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody265_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody265_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_158 optimizedBody265_3

def optimizedBody265_160 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody265_157, 265, 18)) (some 70) ([2]) (some (2, optimizedBody265_159, 265, 19))

def optimizedBody265_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody265_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody265_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody265_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_162 optimizedBody265_163

def optimizedBody265_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_161 optimizedBody265_164

def optimizedBody265_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_165

def optimizedBody265_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_160 optimizedBody265_166

def optimizedBody265_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_156 optimizedBody265_167

def optimizedBody265_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_168

def optimizedBody265_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_155 optimizedBody265_169

def optimizedBody265_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_151 optimizedBody265_170

def optimizedBody265_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_171

def optimizedBody265_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_150 optimizedBody265_172

def optimizedBody265_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_16 optimizedBody265_173

def optimizedBody265_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_174

def optimizedBody265_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_15 optimizedBody265_175

def optimizedBody265_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_176

def optimizedBody265_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_14 optimizedBody265_177

def optimizedBody265_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_10 optimizedBody265_178

def optimizedBody265_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_9 optimizedBody265_179

def optimizedBody265_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_8 optimizedBody265_180

def optimizedBody265_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_7 optimizedBody265_181

def optimizedBody265_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_6 optimizedBody265_182

def optimizedBody265_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_5 optimizedBody265_183

def optimizedBody265_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody265_0 optimizedBody265_184

def optimized265 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(265, 6, optimizedBody265_185)
end InitECandidate.Proofs.StackAnalysis
