import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody237_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (60, 6)]

def optimizedBody237_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (60, 60)]

def optimizedBody237_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (60, 60)]

def optimizedBody237_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody237_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_2 optimizedBody237_3

def optimizedBody237_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_1, 237, 2)) (some 69) ([]) (some (2, optimizedBody237_4, 237, 3))

def optimizedBody237_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody237_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 768#64)

def optimizedBody237_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (58, 0), (60, 60)]

def optimizedBody237_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (58, 58), (60, 60)]

def optimizedBody237_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (58, 58), (60, 60)]

def optimizedBody237_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_10 optimizedBody237_3

def optimizedBody237_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_9, 237, 4)) (some 68) ([2]) (some (2, optimizedBody237_11, 237, 5))

def optimizedBody237_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody237_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (58, 58), (60, 60), (50, 0)]

def optimizedBody237_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (10, 48), (58, 58), (60, 60), (12, 50)]

def optimizedBody237_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (10, 48), (58, 58), (60, 60), (12, 50)]

def optimizedBody237_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_16 optimizedBody237_3

def optimizedBody237_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_15, 237, 6)) (some 68) ([2]) (some (2, optimizedBody237_17, 237, 7))

def optimizedBody237_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody237_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody237_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody237_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 0), (52, 2), (50, 4), (56, 6), (48, 8), (54, 10), (58, 58), (60, 60), (62, 12)]

def optimizedBody237_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 50), (0, 52)]

def optimizedBody237_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody237_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody237_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 56)]

def optimizedBody237_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 6)]

def optimizedBody237_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_27

def optimizedBody237_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4)]

def optimizedBody237_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_29

def optimizedBody237_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody237_28 optimizedBody237_30

def optimizedBody237_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody237_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody237_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 54)]

def optimizedBody237_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody237_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 48), (6, 6), (4, 4)]

def optimizedBody237_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody237_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 62)]

def optimizedBody237_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.reg 16)))

def optimizedBody237_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 0), (50, 10), (52, 6), (54, 12), (56, 14), (58, 58),
    (60, 60), (62, 16)]

def optimizedBody237_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (8, 46), (6, 48), (50, 50), (4, 52), (0, 54), (54, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody237_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (6, 48), (50, 50), (4, 52), (0, 54), (54, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody237_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_42 optimizedBody237_3

def optimizedBody237_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_41, 237, 8)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody237_43, 237, 9))

def optimizedBody237_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody237_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody237_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (52, 2)]

def optimizedBody237_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody237_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (56, 2)]

def optimizedBody237_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody237_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 8), (52, 52), (50, 50), (56, 56), (48, 0), (54, 54), (58, 58), (60, 60), (62, 62)]

def optimizedBody237_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody237_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_51 optimizedBody237_52

def optimizedBody237_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_50 optimizedBody237_53

def optimizedBody237_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_49 optimizedBody237_54

def optimizedBody237_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_48 optimizedBody237_55

def optimizedBody237_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_47 optimizedBody237_56

def optimizedBody237_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_46 optimizedBody237_57

def optimizedBody237_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_45 optimizedBody237_58

def optimizedBody237_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_59

def optimizedBody237_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_44 optimizedBody237_60

def optimizedBody237_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_40 optimizedBody237_61

def optimizedBody237_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_39 optimizedBody237_62

def optimizedBody237_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_38 optimizedBody237_63

def optimizedBody237_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_37 optimizedBody237_64

def optimizedBody237_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_36 optimizedBody237_65

def optimizedBody237_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_35 optimizedBody237_66

def optimizedBody237_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_34 optimizedBody237_67

def optimizedBody237_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_33 optimizedBody237_68

def optimizedBody237_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_32 optimizedBody237_69

def optimizedBody237_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_70

def optimizedBody237_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_31 optimizedBody237_71

def optimizedBody237_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_26 optimizedBody237_72

def optimizedBody237_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_25 optimizedBody237_73

def optimizedBody237_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_24 optimizedBody237_74

def optimizedBody237_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_75

def optimizedBody237_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 0), (50, 10)]

def optimizedBody237_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody237_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_77 optimizedBody237_78

def optimizedBody237_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_79

def optimizedBody237_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 10) optimizedBody237_76 optimizedBody237_80

def optimizedBody237_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 2), (52, 4), (50, 6), (56, 8), (48, 10), (54, 12), (58, 14), (60, 16), (62, 18)]

def optimizedBody237_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_82

def optimizedBody237_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_81 optimizedBody237_83

def optimizedBody237_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_23 optimizedBody237_84

def optimizedBody237_86 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody237_85 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody237_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody237_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody237_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 2), (52, 52), (50, 50), (56, 56), (48, 48), (54, 54), (58, 58), (60, 60), (62, 62)]

def optimizedBody237_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 46), (52, 52), (50, 50), (56, 56), (0, 48), (54, 54), (46, 58), (48, 60), (4, 62)]

def optimizedBody237_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (52, 52), (50, 50), (56, 56), (0, 48), (54, 54), (46, 58), (48, 60), (4, 62)]

def optimizedBody237_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_91 optimizedBody237_3

def optimizedBody237_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_90, 237, 10)) (some 78) ([2, 4]) (some (2, optimizedBody237_92, 237, 11))

def optimizedBody237_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 6), (52, 52), (50, 50), (56, 56), (0, 0), (54, 54), (46, 46), (48, 48), (4, 4)]

def optimizedBody237_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody237_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody237_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody237_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 6), (6, 6), (44, 44), (46, 6), (52, 52), (50, 50), (56, 56), (48, 0), (54, 54), (58, 46), (60, 48),
    (62, 4)]

def optimizedBody237_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (6, 46), (8, 52), (10, 50), (12, 56), (0, 48), (14, 54), (46, 58), (16, 60), (4, 62)]

def optimizedBody237_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (6, 46), (8, 52), (10, 50), (12, 56), (0, 48), (14, 54), (46, 58), (16, 60), (4, 62)]

def optimizedBody237_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_100 optimizedBody237_3

def optimizedBody237_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_99, 237, 12)) (some 154) ([2, 4, 6]) (some (2, optimizedBody237_101, 237, 13))

def optimizedBody237_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (6, 6), (52, 8), (50, 10), (56, 12), (0, 0), (54, 14), (46, 46), (48, 16), (4, 4)]

def optimizedBody237_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_103 optimizedBody237_52

def optimizedBody237_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_104

def optimizedBody237_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_102 optimizedBody237_105

def optimizedBody237_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_98 optimizedBody237_106

def optimizedBody237_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_97 optimizedBody237_107

def optimizedBody237_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_96 optimizedBody237_108

def optimizedBody237_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_33 optimizedBody237_109

def optimizedBody237_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_32 optimizedBody237_110

def optimizedBody237_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_95 optimizedBody237_111

def optimizedBody237_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_32 optimizedBody237_112

def optimizedBody237_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_113

def optimizedBody237_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_78

def optimizedBody237_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody237_114 optimizedBody237_115

def optimizedBody237_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (6, 6), (52, 8), (50, 10), (56, 12), (0, 0), (54, 14), (46, 16), (48, 18), (4, 4)]

def optimizedBody237_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_117

def optimizedBody237_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_116 optimizedBody237_118

def optimizedBody237_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_119

def optimizedBody237_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_32 optimizedBody237_120

def optimizedBody237_122 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody237_121 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody237_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 6), (2, 48)]

def optimizedBody237_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody237_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody237_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody237_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody237_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_127 optimizedBody237_3

def optimizedBody237_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_126, 237, 14)) (some 77) ([2, 4, 6]) (some (2, optimizedBody237_128, 237, 15))

def optimizedBody237_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody237_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody237_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody237_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_132 optimizedBody237_3

def optimizedBody237_134 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody237_131, 237, 16)) (some 70) ([2]) (some (2, optimizedBody237_133, 237, 17))

def optimizedBody237_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody237_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody237_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_135 optimizedBody237_136

def optimizedBody237_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_137

def optimizedBody237_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_138

def optimizedBody237_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_134 optimizedBody237_139

def optimizedBody237_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_130 optimizedBody237_140

def optimizedBody237_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_141

def optimizedBody237_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_129 optimizedBody237_142

def optimizedBody237_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_125 optimizedBody237_143

def optimizedBody237_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_124 optimizedBody237_144

def optimizedBody237_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_123 optimizedBody237_145

def optimizedBody237_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_146

def optimizedBody237_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_122 optimizedBody237_147

def optimizedBody237_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_94 optimizedBody237_148

def optimizedBody237_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_149

def optimizedBody237_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_150

def optimizedBody237_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_93 optimizedBody237_151

def optimizedBody237_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_89 optimizedBody237_152

def optimizedBody237_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_88 optimizedBody237_153

def optimizedBody237_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_87 optimizedBody237_154

def optimizedBody237_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_155

def optimizedBody237_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_86 optimizedBody237_156

def optimizedBody237_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_22 optimizedBody237_157

def optimizedBody237_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_158

def optimizedBody237_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_21 optimizedBody237_159

def optimizedBody237_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_20 optimizedBody237_160

def optimizedBody237_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_19 optimizedBody237_161

def optimizedBody237_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_162

def optimizedBody237_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_18 optimizedBody237_163

def optimizedBody237_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_14 optimizedBody237_164

def optimizedBody237_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_13 optimizedBody237_165

def optimizedBody237_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_166

def optimizedBody237_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_12 optimizedBody237_167

def optimizedBody237_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_8 optimizedBody237_168

def optimizedBody237_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_7 optimizedBody237_169

def optimizedBody237_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_6 optimizedBody237_170

def optimizedBody237_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_5 optimizedBody237_171

def optimizedBody237_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody237_0 optimizedBody237_172

def optimized237 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(237, 4, optimizedBody237_173)
end InitECandidate.Proofs.StackAnalysis
