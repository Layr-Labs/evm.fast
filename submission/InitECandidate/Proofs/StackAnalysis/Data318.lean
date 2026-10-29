import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody318_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody318_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody318_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody318_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody318_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody318_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 10), (50, 8), (54, 4), (48, 12), (52, 2), (56, 6), (58, 14)]

def optimizedBody318_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48)]

def optimizedBody318_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody318_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody318_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 52)]

def optimizedBody318_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody318_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (54, 54), (48, 6), (52, 4), (56, 56), (4, 58)]

def optimizedBody318_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_10 optimizedBody318_11

def optimizedBody318_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_12

def optimizedBody318_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody318_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody318_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody318_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody318_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 46), (46, 50), (54, 54), (48, 6), (52, 4), (56, 0), (58, 56), (60, 58)]

def optimizedBody318_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (4, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody318_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (4, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody318_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody318_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_20 optimizedBody318_21

def optimizedBody318_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody318_19, 318, 2)) (some 286) ([2]) (some (2, optimizedBody318_22, 318, 3))

def optimizedBody318_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (4, 4), (56, 56), (58, 58), (60, 60)]

def optimizedBody318_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_24

def optimizedBody318_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_23 optimizedBody318_25

def optimizedBody318_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_18 optimizedBody318_26

def optimizedBody318_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_17 optimizedBody318_27

def optimizedBody318_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_28

def optimizedBody318_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (50, 46), (46, 50), (54, 54), (48, 6), (4, 4), (56, 0), (58, 56), (60, 58)]

def optimizedBody318_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_30

def optimizedBody318_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody318_29 optimizedBody318_31

def optimizedBody318_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (52, 4), (56, 56), (58, 58), (60, 60)]

def optimizedBody318_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (50, 50), (12, 46), (54, 54), (48, 48), (46, 52), (0, 56), (10, 58), (58, 60)]

def optimizedBody318_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (12, 46), (54, 54), (48, 48), (46, 52), (0, 56), (10, 58), (58, 60)]

def optimizedBody318_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_35 optimizedBody318_21

def optimizedBody318_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody318_34, 318, 4)) (some 299) ([2]) (some (2, optimizedBody318_36, 318, 5))

def optimizedBody318_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody318_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody318_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody318_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody318_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody318_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody318_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 54), (12, 12)]

def optimizedBody318_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody318_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (50, 12), (54, 8), (48, 48), (52, 0), (56, 10), (58, 58)]

def optimizedBody318_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody318_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody318_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_48 optimizedBody318_21

def optimizedBody318_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody318_47, 318, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody318_49, 318, 7))

def optimizedBody318_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody318_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody318_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_10 optimizedBody318_52

def optimizedBody318_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_53

def optimizedBody318_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_52

def optimizedBody318_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody318_54 optimizedBody318_55

def optimizedBody318_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 4)]

def optimizedBody318_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_57

def optimizedBody318_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_56 optimizedBody318_58

def optimizedBody318_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_7 optimizedBody318_59

def optimizedBody318_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_51 optimizedBody318_60

def optimizedBody318_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_61

def optimizedBody318_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_50 optimizedBody318_62

def optimizedBody318_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_46 optimizedBody318_63

def optimizedBody318_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_45 optimizedBody318_64

def optimizedBody318_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_44 optimizedBody318_65

def optimizedBody318_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_43 optimizedBody318_66

def optimizedBody318_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_67

def optimizedBody318_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_68

def optimizedBody318_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 12), (54, 54), (48, 48), (52, 0), (56, 10), (4, 58)]

def optimizedBody318_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_70

def optimizedBody318_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody318_69 optimizedBody318_71

def optimizedBody318_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_72 optimizedBody318_58

def optimizedBody318_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_42 optimizedBody318_73

def optimizedBody318_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_41 optimizedBody318_74

def optimizedBody318_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_40 optimizedBody318_75

def optimizedBody318_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_39 optimizedBody318_76

def optimizedBody318_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_77

def optimizedBody318_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody318_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 54), (12, 12), (4, 4), (2, 2)]

def optimizedBody318_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody318_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody318_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (58, 50), (50, 12), (54, 14), (60, 2), (48, 48), (52, 0), (56, 10),
    (46, 58), (62, 4)]

def optimizedBody318_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (58, 58), (50, 50), (54, 54), (60, 60), (48, 48), (52, 52), (56, 56), (46, 46), (0, 62)]

def optimizedBody318_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (58, 58), (50, 50), (54, 54), (60, 60), (48, 48), (52, 52), (56, 56), (46, 46), (0, 62)]

def optimizedBody318_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_85 optimizedBody318_21

def optimizedBody318_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody318_84, 318, 8)) (some 291) ([2, 4, 6, 8]) (some (2, optimizedBody318_86, 318, 9))

def optimizedBody318_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody318_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 52), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 46)]

def optimizedBody318_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_89

def optimizedBody318_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody318_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 58), (50, 50), (54, 54), (48, 60), (52, 52), (56, 56), (58, 46), (60, 0)]

def optimizedBody318_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (0, 46), (6, 50), (54, 54), (12, 48), (10, 52), (56, 56), (14, 58), (8, 60)]

def optimizedBody318_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (6, 50), (54, 54), (12, 48), (10, 52), (56, 56), (14, 58), (8, 60)]

def optimizedBody318_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_94 optimizedBody318_21

def optimizedBody318_96 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody318_93, 318, 10)) (some 74) ([2]) (some (2, optimizedBody318_95, 318, 11))

def optimizedBody318_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody318_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody318_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody318_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody318_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody318_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody318_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 2#64)

def optimizedBody318_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody318_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody318_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody318_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody318_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody318_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody318_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody318_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody318_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody318_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 48#64))

def optimizedBody318_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8), (52, 2)]

def optimizedBody318_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody318_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 2)]

def optimizedBody318_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (54, 54), (48, 2), (52, 52), (56, 56), (4, 4)]

def optimizedBody318_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_38 optimizedBody318_117

def optimizedBody318_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_116 optimizedBody318_118

def optimizedBody318_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_115 optimizedBody318_119

def optimizedBody318_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_114 optimizedBody318_120

def optimizedBody318_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_113 optimizedBody318_121

def optimizedBody318_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_112 optimizedBody318_122

def optimizedBody318_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_111 optimizedBody318_123

def optimizedBody318_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_110 optimizedBody318_124

def optimizedBody318_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_109 optimizedBody318_125

def optimizedBody318_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_126

def optimizedBody318_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_108 optimizedBody318_127

def optimizedBody318_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_107 optimizedBody318_128

def optimizedBody318_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_106 optimizedBody318_129

def optimizedBody318_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_130

def optimizedBody318_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_105 optimizedBody318_131

def optimizedBody318_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_104 optimizedBody318_132

def optimizedBody318_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_103 optimizedBody318_133

def optimizedBody318_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_102 optimizedBody318_134

def optimizedBody318_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_135

def optimizedBody318_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_101 optimizedBody318_136

def optimizedBody318_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_100 optimizedBody318_137

def optimizedBody318_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_99 optimizedBody318_138

def optimizedBody318_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_139

def optimizedBody318_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_98 optimizedBody318_140

def optimizedBody318_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_97 optimizedBody318_141

def optimizedBody318_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_142

def optimizedBody318_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_96 optimizedBody318_143

def optimizedBody318_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_92 optimizedBody318_144

def optimizedBody318_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_91 optimizedBody318_145

def optimizedBody318_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_146

def optimizedBody318_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody318_90 optimizedBody318_147

def optimizedBody318_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_148 optimizedBody318_58

def optimizedBody318_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_88 optimizedBody318_149

def optimizedBody318_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_150

def optimizedBody318_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_87 optimizedBody318_151

def optimizedBody318_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_83 optimizedBody318_152

def optimizedBody318_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_82 optimizedBody318_153

def optimizedBody318_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_41 optimizedBody318_154

def optimizedBody318_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_81 optimizedBody318_155

def optimizedBody318_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_80 optimizedBody318_156

def optimizedBody318_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_79 optimizedBody318_157

def optimizedBody318_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_158

def optimizedBody318_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_43 optimizedBody318_159

def optimizedBody318_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_39 optimizedBody318_160

def optimizedBody318_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_161

def optimizedBody318_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody318_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody318_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody318_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody318_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody318_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody318_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody318_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 12), (54, 54), (48, 48), (52, 2), (56, 10), (58, 58)]

def optimizedBody318_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody318_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody318_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_172 optimizedBody318_21

def optimizedBody318_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody318_171, 318, 12)) (some 316) ([2]) (some (2, optimizedBody318_173, 318, 13))

def optimizedBody318_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_174 optimizedBody318_58

def optimizedBody318_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_170 optimizedBody318_175

def optimizedBody318_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_168 optimizedBody318_176

def optimizedBody318_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_177

def optimizedBody318_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_165 optimizedBody318_178

def optimizedBody318_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_169 optimizedBody318_179

def optimizedBody318_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_104 optimizedBody318_180

def optimizedBody318_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_168 optimizedBody318_181

def optimizedBody318_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_182

def optimizedBody318_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_165 optimizedBody318_183

def optimizedBody318_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_167 optimizedBody318_184

def optimizedBody318_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_166 optimizedBody318_185

def optimizedBody318_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_186

def optimizedBody318_188 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody318_71 optimizedBody318_187

def optimizedBody318_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_188 optimizedBody318_58

def optimizedBody318_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_165 optimizedBody318_189

def optimizedBody318_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_164 optimizedBody318_190

def optimizedBody318_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_39 optimizedBody318_191

def optimizedBody318_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_192

def optimizedBody318_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54), (12, 12)]

def optimizedBody318_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody318_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody318_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 2)]

def optimizedBody318_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 12), (54, 0), (48, 46), (56, 10), (58, 58), (52, 52)]

def optimizedBody318_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 50), (6, 46), (54, 54), (8, 48), (56, 56), (12, 58), (10, 52)]

def optimizedBody318_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 50), (6, 46), (54, 54), (8, 48), (56, 56), (12, 58), (10, 52)]

def optimizedBody318_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_200 optimizedBody318_21

def optimizedBody318_202 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody318_199, 318, 14)) (some 74) ([2]) (some (2, optimizedBody318_201, 318, 15))

def optimizedBody318_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody318_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody318_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 3#64)

def optimizedBody318_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody318_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody318_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody318_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody318_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (52, 2)]

def optimizedBody318_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody318_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_211 optimizedBody318_119

def optimizedBody318_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_210 optimizedBody318_212

def optimizedBody318_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_209 optimizedBody318_213

def optimizedBody318_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_208 optimizedBody318_214

def optimizedBody318_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_207 optimizedBody318_215

def optimizedBody318_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_206 optimizedBody318_216

def optimizedBody318_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_112 optimizedBody318_217

def optimizedBody318_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_101 optimizedBody318_218

def optimizedBody318_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_100 optimizedBody318_219

def optimizedBody318_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_109 optimizedBody318_220

def optimizedBody318_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_221

def optimizedBody318_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_108 optimizedBody318_222

def optimizedBody318_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_104 optimizedBody318_223

def optimizedBody318_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_205 optimizedBody318_224

def optimizedBody318_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_102 optimizedBody318_225

def optimizedBody318_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_226

def optimizedBody318_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_111 optimizedBody318_227

def optimizedBody318_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_110 optimizedBody318_228

def optimizedBody318_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_99 optimizedBody318_229

def optimizedBody318_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_230

def optimizedBody318_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_204 optimizedBody318_231

def optimizedBody318_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_203 optimizedBody318_232

def optimizedBody318_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_233

def optimizedBody318_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_202 optimizedBody318_234

def optimizedBody318_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_198 optimizedBody318_235

def optimizedBody318_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_91 optimizedBody318_236

def optimizedBody318_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_197 optimizedBody318_237

def optimizedBody318_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_196 optimizedBody318_238

def optimizedBody318_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_195 optimizedBody318_239

def optimizedBody318_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_194 optimizedBody318_240

def optimizedBody318_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_241

def optimizedBody318_243 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 10) optimizedBody318_193 optimizedBody318_242

def optimizedBody318_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_243 optimizedBody318_58

def optimizedBody318_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_163 optimizedBody318_244

def optimizedBody318_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_245

def optimizedBody318_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody318_162 optimizedBody318_246

def optimizedBody318_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_247 optimizedBody318_58

def optimizedBody318_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_17 optimizedBody318_248

def optimizedBody318_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_249

def optimizedBody318_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_250

def optimizedBody318_252 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody318_78 optimizedBody318_251

def optimizedBody318_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_252 optimizedBody318_58

def optimizedBody318_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_38 optimizedBody318_253

def optimizedBody318_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_254

def optimizedBody318_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_255

def optimizedBody318_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_37 optimizedBody318_256

def optimizedBody318_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_33 optimizedBody318_257

def optimizedBody318_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_258

def optimizedBody318_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_32 optimizedBody318_259

def optimizedBody318_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_7 optimizedBody318_260

def optimizedBody318_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_261

def optimizedBody318_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_15 optimizedBody318_262

def optimizedBody318_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_14 optimizedBody318_263

def optimizedBody318_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_264

def optimizedBody318_266 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody318_13 optimizedBody318_265

def optimizedBody318_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 0), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (58, 4)]

def optimizedBody318_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody318_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_267 optimizedBody318_268

def optimizedBody318_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_269

def optimizedBody318_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_266 optimizedBody318_270

def optimizedBody318_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_10 optimizedBody318_271

def optimizedBody318_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_9 optimizedBody318_272

def optimizedBody318_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_8 optimizedBody318_273

def optimizedBody318_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_274

def optimizedBody318_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0)]

def optimizedBody318_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody318_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_276 optimizedBody318_277

def optimizedBody318_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_278

def optimizedBody318_280 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody318_275 optimizedBody318_279

def optimizedBody318_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2), (50, 4), (54, 6), (48, 8), (52, 10), (56, 12), (58, 14)]

def optimizedBody318_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_281

def optimizedBody318_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_280 optimizedBody318_282

def optimizedBody318_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_7 optimizedBody318_283

def optimizedBody318_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_6 optimizedBody318_284

def optimizedBody318_286 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody318_285 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody318_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (50, 50), (54, 54), (46, 48), (52, 52), (48, 56), (0, 58)]

def optimizedBody318_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody318_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody318_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2#64)

def optimizedBody318_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody318_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody318_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody318_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (54, 54), (46, 46), (52, 52), (48, 48), (56, 0)]

def optimizedBody318_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 44), (16, 50), (14, 54), (6, 46), (10, 52), (12, 48), (0, 56)]

def optimizedBody318_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (16, 50), (14, 54), (6, 46), (10, 52), (12, 48), (0, 56)]

def optimizedBody318_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_296 optimizedBody318_21

def optimizedBody318_298 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody318_295, 318, 16)) (some 317) ([2, 4, 6, 8]) (some (2, optimizedBody318_297, 318, 17))

def optimizedBody318_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (16, 16), (14, 14), (6, 6), (10, 10), (12, 12), (0, 0)]

def optimizedBody318_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_299

def optimizedBody318_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_298 optimizedBody318_300

def optimizedBody318_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_294 optimizedBody318_301

def optimizedBody318_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_293 optimizedBody318_302

def optimizedBody318_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_303

def optimizedBody318_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_292 optimizedBody318_304

def optimizedBody318_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_291 optimizedBody318_305

def optimizedBody318_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_306

def optimizedBody318_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody318_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody318_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody318_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody318_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody318_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody318_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (46, 46), (52, 52), (48, 48), (56, 0)]

def optimizedBody318_315 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody318_295, 318, 18)) (some 316) ([2]) (some (2, optimizedBody318_297, 318, 19))

def optimizedBody318_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_315 optimizedBody318_300

def optimizedBody318_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_314 optimizedBody318_316

def optimizedBody318_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_313 optimizedBody318_317

def optimizedBody318_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_312 optimizedBody318_318

def optimizedBody318_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_311 optimizedBody318_319

def optimizedBody318_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_310 optimizedBody318_320

def optimizedBody318_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_104 optimizedBody318_321

def optimizedBody318_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_309 optimizedBody318_322

def optimizedBody318_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_308 optimizedBody318_323

def optimizedBody318_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_324

def optimizedBody318_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_325

def optimizedBody318_327 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody318_307 optimizedBody318_326

def optimizedBody318_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody318_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (8, 8), (50, 16), (54, 14), (46, 6), (52, 10), (48, 12), (0, 0)]

def optimizedBody318_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_329 optimizedBody318_268

def optimizedBody318_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_328 optimizedBody318_330

def optimizedBody318_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_331

def optimizedBody318_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_332

def optimizedBody318_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_327 optimizedBody318_333

def optimizedBody318_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_290 optimizedBody318_334

def optimizedBody318_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_289 optimizedBody318_335

def optimizedBody318_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_336

def optimizedBody318_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_288 optimizedBody318_337

def optimizedBody318_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_338

def optimizedBody318_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_339

def optimizedBody318_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_277

def optimizedBody318_342 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody318_340 optimizedBody318_341

def optimizedBody318_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (8, 8), (50, 4), (54, 6), (46, 10), (52, 12), (48, 14), (0, 0)]

def optimizedBody318_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_343

def optimizedBody318_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_342 optimizedBody318_344

def optimizedBody318_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_7 optimizedBody318_345

def optimizedBody318_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_16 optimizedBody318_346

def optimizedBody318_348 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody318_347 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody318_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8)]

def optimizedBody318_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody318_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_349 optimizedBody318_350

def optimizedBody318_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_351

def optimizedBody318_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_348 optimizedBody318_352

def optimizedBody318_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_287 optimizedBody318_353

def optimizedBody318_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_354

def optimizedBody318_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_355

def optimizedBody318_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_286 optimizedBody318_356

def optimizedBody318_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_5 optimizedBody318_357

def optimizedBody318_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_4 optimizedBody318_358

def optimizedBody318_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_3 optimizedBody318_359

def optimizedBody318_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_2 optimizedBody318_360

def optimizedBody318_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_1 optimizedBody318_361

def optimizedBody318_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody318_0 optimizedBody318_362

def optimized318 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(318, 5, optimizedBody318_363)
end InitECandidate.Proofs.StackAnalysis
