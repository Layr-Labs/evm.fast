import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles320
def optimizedBody320_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody320_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody320_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody320_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody320_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody320_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 10), (50, 8), (54, 4), (48, 12), (52, 2), (56, 6), (58, 14)]

def optimizedBody320_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48)]

def optimizedBody320_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody320_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody320_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 52)]

def optimizedBody320_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody320_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (54, 54), (48, 6), (52, 4), (56, 56), (4, 58)]

def optimizedBody320_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_10 optimizedBody320_11

def optimizedBody320_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_12

def optimizedBody320_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody320_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody320_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody320_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody320_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 46), (46, 50), (54, 54), (48, 6), (52, 4), (56, 0), (58, 56), (60, 58)]

def optimizedBody320_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (4, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody320_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (4, 52), (56, 56), (58, 58), (60, 60)]

def optimizedBody320_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody320_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_20 optimizedBody320_21

def optimizedBody320_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_19, 320, 2)) (some 288) ([2]) (some (2, optimizedBody320_22, 320, 3))

def optimizedBody320_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (4, 4), (56, 56), (58, 58), (60, 60)]

def optimizedBody320_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_24

def optimizedBody320_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_23 optimizedBody320_25

def optimizedBody320_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_18 optimizedBody320_26

def optimizedBody320_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_17 optimizedBody320_27

def optimizedBody320_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_28

def optimizedBody320_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (50, 46), (46, 50), (54, 54), (48, 6), (4, 4), (56, 0), (58, 56), (60, 58)]

def optimizedBody320_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_30

def optimizedBody320_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody320_29 optimizedBody320_31

def optimizedBody320_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 4), (44, 44), (50, 50), (46, 46), (54, 54), (48, 48), (52, 4), (56, 56), (58, 58), (60, 60)]

def optimizedBody320_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (50, 50), (12, 46), (54, 54), (48, 48), (46, 52), (0, 56), (10, 58), (58, 60)]

def optimizedBody320_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (12, 46), (54, 54), (48, 48), (46, 52), (0, 56), (10, 58), (58, 60)]

def optimizedBody320_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_35 optimizedBody320_21

def optimizedBody320_37 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_34, 320, 4)) (some 301) ([2]) (some (2, optimizedBody320_36, 320, 5))

def optimizedBody320_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody320_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody320_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody320_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody320_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody320_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody320_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 54), (12, 12)]

def optimizedBody320_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.reg 8)))

def optimizedBody320_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (50, 12), (54, 8), (48, 48), (52, 0), (56, 10), (58, 58)]

def optimizedBody320_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody320_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody320_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_48 optimizedBody320_21

def optimizedBody320_50 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_47, 320, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody320_49, 320, 7))

def optimizedBody320_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody320_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody320_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_10 optimizedBody320_52

def optimizedBody320_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_53

def optimizedBody320_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_52

def optimizedBody320_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 2) optimizedBody320_54 optimizedBody320_55

def optimizedBody320_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 4)]

def optimizedBody320_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_57

def optimizedBody320_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_56 optimizedBody320_58

def optimizedBody320_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_7 optimizedBody320_59

def optimizedBody320_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_51 optimizedBody320_60

def optimizedBody320_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_61

def optimizedBody320_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_50 optimizedBody320_62

def optimizedBody320_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_46 optimizedBody320_63

def optimizedBody320_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_45 optimizedBody320_64

def optimizedBody320_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_44 optimizedBody320_65

def optimizedBody320_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_43 optimizedBody320_66

def optimizedBody320_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_67

def optimizedBody320_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_68

def optimizedBody320_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 12), (54, 54), (48, 48), (52, 0), (56, 10), (4, 58)]

def optimizedBody320_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_70

def optimizedBody320_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody320_69 optimizedBody320_71

def optimizedBody320_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_72 optimizedBody320_58

def optimizedBody320_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_42 optimizedBody320_73

def optimizedBody320_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_41 optimizedBody320_74

def optimizedBody320_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_40 optimizedBody320_75

def optimizedBody320_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_39 optimizedBody320_76

def optimizedBody320_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_77

def optimizedBody320_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody320_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 54), (12, 12), (4, 4), (2, 2)]

def optimizedBody320_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody320_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 10 (Flapjack.WordRegImm.reg 12)))

def optimizedBody320_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (58, 50), (50, 12), (54, 14), (60, 2), (48, 48), (52, 0), (56, 10),
    (46, 58), (62, 4)]

def optimizedBody320_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (58, 58), (50, 50), (54, 54), (60, 60), (48, 48), (52, 52), (56, 56), (46, 46), (0, 62)]

def optimizedBody320_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (58, 58), (50, 50), (54, 54), (60, 60), (48, 48), (52, 52), (56, 56), (46, 46), (0, 62)]

def optimizedBody320_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_85 optimizedBody320_21

def optimizedBody320_87 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_84, 320, 8)) (some 293) ([2, 4, 6, 8]) (some (2, optimizedBody320_86, 320, 9))

def optimizedBody320_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody320_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 52), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 46)]

def optimizedBody320_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_89

def optimizedBody320_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody320_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 58), (50, 50), (54, 54), (48, 60), (52, 52), (56, 56), (58, 46), (60, 0)]

def optimizedBody320_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (0, 46), (6, 50), (54, 54), (12, 48), (10, 52), (56, 56), (14, 58), (8, 60)]

def optimizedBody320_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (6, 50), (54, 54), (12, 48), (10, 52), (56, 56), (14, 58), (8, 60)]

def optimizedBody320_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_94 optimizedBody320_21

def optimizedBody320_96 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_93, 320, 10)) (some 74) ([2]) (some (2, optimizedBody320_95, 320, 11))

def optimizedBody320_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody320_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody320_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody320_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody320_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody320_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody320_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 2#64)

def optimizedBody320_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody320_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody320_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody320_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody320_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody320_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody320_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody320_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody320_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody320_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 10 48#64))

def optimizedBody320_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8), (52, 2)]

def optimizedBody320_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody320_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 2)]

def optimizedBody320_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (50, 50), (54, 54), (48, 2), (52, 52), (56, 56), (4, 4)]

def optimizedBody320_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_38 optimizedBody320_117

def optimizedBody320_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_116 optimizedBody320_118

def optimizedBody320_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_115 optimizedBody320_119

def optimizedBody320_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_114 optimizedBody320_120

def optimizedBody320_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_113 optimizedBody320_121

def optimizedBody320_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_112 optimizedBody320_122

def optimizedBody320_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_111 optimizedBody320_123

def optimizedBody320_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_110 optimizedBody320_124

def optimizedBody320_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_109 optimizedBody320_125

def optimizedBody320_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_126

def optimizedBody320_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_108 optimizedBody320_127

def optimizedBody320_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_107 optimizedBody320_128

def optimizedBody320_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_106 optimizedBody320_129

def optimizedBody320_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_130

def optimizedBody320_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_105 optimizedBody320_131

def optimizedBody320_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_104 optimizedBody320_132

def optimizedBody320_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_103 optimizedBody320_133

def optimizedBody320_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_102 optimizedBody320_134

def optimizedBody320_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_135

def optimizedBody320_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_101 optimizedBody320_136

def optimizedBody320_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_100 optimizedBody320_137

def optimizedBody320_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_99 optimizedBody320_138

def optimizedBody320_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_139

def optimizedBody320_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_98 optimizedBody320_140

def optimizedBody320_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_97 optimizedBody320_141

def optimizedBody320_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_142

def optimizedBody320_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_96 optimizedBody320_143

def optimizedBody320_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_92 optimizedBody320_144

def optimizedBody320_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_91 optimizedBody320_145

def optimizedBody320_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_146

def optimizedBody320_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody320_90 optimizedBody320_147

def optimizedBody320_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_148 optimizedBody320_58

def optimizedBody320_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_88 optimizedBody320_149

def optimizedBody320_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_150

def optimizedBody320_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_87 optimizedBody320_151

def optimizedBody320_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_83 optimizedBody320_152

def optimizedBody320_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_82 optimizedBody320_153

def optimizedBody320_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_41 optimizedBody320_154

def optimizedBody320_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_81 optimizedBody320_155

def optimizedBody320_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_80 optimizedBody320_156

def optimizedBody320_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_79 optimizedBody320_157

def optimizedBody320_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_158

def optimizedBody320_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_43 optimizedBody320_159

def optimizedBody320_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_39 optimizedBody320_160

def optimizedBody320_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_161

def optimizedBody320_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody320_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 168#64))

def optimizedBody320_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody320_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody320_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody320_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody320_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 168#64)))

def optimizedBody320_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 12), (54, 54), (48, 48), (52, 2), (56, 10), (58, 58)]

def optimizedBody320_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody320_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (4, 58)]

def optimizedBody320_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_172 optimizedBody320_21

def optimizedBody320_174 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_171, 320, 12)) (some 318) ([2]) (some (2, optimizedBody320_173, 320, 13))

def optimizedBody320_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_174 optimizedBody320_58

def optimizedBody320_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_170 optimizedBody320_175

def optimizedBody320_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_168 optimizedBody320_176

def optimizedBody320_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_177

def optimizedBody320_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_165 optimizedBody320_178

def optimizedBody320_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_169 optimizedBody320_179

def optimizedBody320_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_104 optimizedBody320_180

def optimizedBody320_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_168 optimizedBody320_181

def optimizedBody320_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_182

def optimizedBody320_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_165 optimizedBody320_183

def optimizedBody320_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_167 optimizedBody320_184

def optimizedBody320_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_166 optimizedBody320_185

def optimizedBody320_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_186

def optimizedBody320_188 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody320_71 optimizedBody320_187

def optimizedBody320_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_188 optimizedBody320_58

def optimizedBody320_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_165 optimizedBody320_189

def optimizedBody320_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_164 optimizedBody320_190

def optimizedBody320_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_39 optimizedBody320_191

def optimizedBody320_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_192

def optimizedBody320_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 54), (12, 12)]

def optimizedBody320_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody320_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody320_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 2)]

def optimizedBody320_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 12), (54, 0), (48, 46), (56, 10), (58, 58), (52, 52)]

def optimizedBody320_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 50), (6, 46), (54, 54), (8, 48), (56, 56), (12, 58), (10, 52)]

def optimizedBody320_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 50), (6, 46), (54, 54), (8, 48), (56, 56), (12, 58), (10, 52)]

def optimizedBody320_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_200 optimizedBody320_21

def optimizedBody320_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_199, 320, 14)) (some 74) ([2]) (some (2, optimizedBody320_201, 320, 15))

def optimizedBody320_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody320_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody320_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 3#64)

def optimizedBody320_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 10 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody320_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody320_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody320_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody320_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (52, 2)]

def optimizedBody320_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody320_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_211 optimizedBody320_119

def optimizedBody320_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_210 optimizedBody320_212

def optimizedBody320_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_209 optimizedBody320_213

def optimizedBody320_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_208 optimizedBody320_214

def optimizedBody320_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_207 optimizedBody320_215

def optimizedBody320_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_206 optimizedBody320_216

def optimizedBody320_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_112 optimizedBody320_217

def optimizedBody320_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_101 optimizedBody320_218

def optimizedBody320_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_100 optimizedBody320_219

def optimizedBody320_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_109 optimizedBody320_220

def optimizedBody320_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_221

def optimizedBody320_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_108 optimizedBody320_222

def optimizedBody320_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_104 optimizedBody320_223

def optimizedBody320_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_205 optimizedBody320_224

def optimizedBody320_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_102 optimizedBody320_225

def optimizedBody320_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_226

def optimizedBody320_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_111 optimizedBody320_227

def optimizedBody320_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_110 optimizedBody320_228

def optimizedBody320_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_99 optimizedBody320_229

def optimizedBody320_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_230

def optimizedBody320_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_204 optimizedBody320_231

def optimizedBody320_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_203 optimizedBody320_232

def optimizedBody320_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_233

def optimizedBody320_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_202 optimizedBody320_234

def optimizedBody320_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_198 optimizedBody320_235

def optimizedBody320_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_91 optimizedBody320_236

def optimizedBody320_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_197 optimizedBody320_237

def optimizedBody320_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_196 optimizedBody320_238

def optimizedBody320_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_195 optimizedBody320_239

def optimizedBody320_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_194 optimizedBody320_240

def optimizedBody320_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_241

def optimizedBody320_243 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 10) optimizedBody320_193 optimizedBody320_242

def optimizedBody320_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_243 optimizedBody320_58

def optimizedBody320_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_163 optimizedBody320_244

def optimizedBody320_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_245

def optimizedBody320_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody320_162 optimizedBody320_246

def optimizedBody320_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_247 optimizedBody320_58

def optimizedBody320_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_17 optimizedBody320_248

def optimizedBody320_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_249

def optimizedBody320_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_250

def optimizedBody320_252 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody320_78 optimizedBody320_251

def optimizedBody320_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_252 optimizedBody320_58

def optimizedBody320_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_38 optimizedBody320_253

def optimizedBody320_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_254

def optimizedBody320_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_255

def optimizedBody320_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_37 optimizedBody320_256

def optimizedBody320_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_33 optimizedBody320_257

def optimizedBody320_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_258

def optimizedBody320_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_32 optimizedBody320_259

def optimizedBody320_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_7 optimizedBody320_260

def optimizedBody320_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_261

def optimizedBody320_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_15 optimizedBody320_262

def optimizedBody320_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_263

def optimizedBody320_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_264

def optimizedBody320_266 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody320_13 optimizedBody320_265

def optimizedBody320_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 0), (50, 50), (54, 54), (48, 48), (52, 52), (56, 56), (58, 4)]

def optimizedBody320_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody320_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_267 optimizedBody320_268

def optimizedBody320_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_269

def optimizedBody320_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_266 optimizedBody320_270

def optimizedBody320_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_10 optimizedBody320_271

def optimizedBody320_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_9 optimizedBody320_272

def optimizedBody320_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_8 optimizedBody320_273

def optimizedBody320_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_274

def optimizedBody320_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 0)]

def optimizedBody320_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody320_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_276 optimizedBody320_277

def optimizedBody320_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_278

def optimizedBody320_280 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody320_275 optimizedBody320_279

def optimizedBody320_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2), (50, 4), (54, 6), (48, 8), (52, 10), (56, 12), (58, 14)]

def optimizedBody320_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_281

def optimizedBody320_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_280 optimizedBody320_282

def optimizedBody320_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_7 optimizedBody320_283

def optimizedBody320_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_284

def optimizedBody320_286 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody320_285 (Flapjack.Spt.bn
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

def optimizedBody320_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (8, 46), (50, 50), (54, 54), (46, 48), (52, 52), (48, 56), (0, 58)]

def optimizedBody320_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody320_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody320_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2#64)

def optimizedBody320_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody320_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody320_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody320_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (50, 50), (54, 54), (46, 46), (52, 52), (48, 48), (56, 0)]

def optimizedBody320_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (4, 44), (16, 50), (14, 54), (6, 46), (10, 52), (12, 48), (0, 56)]

def optimizedBody320_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (16, 50), (14, 54), (6, 46), (10, 52), (12, 48), (0, 56)]

def optimizedBody320_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_296 optimizedBody320_21

def optimizedBody320_298 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_295, 320, 16)) (some 319) ([2, 4, 6, 8]) (some (2, optimizedBody320_297, 320, 17))

def optimizedBody320_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (16, 16), (14, 14), (6, 6), (10, 10), (12, 12), (0, 0)]

def optimizedBody320_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_299

def optimizedBody320_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_298 optimizedBody320_300

def optimizedBody320_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_294 optimizedBody320_301

def optimizedBody320_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_293 optimizedBody320_302

def optimizedBody320_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_303

def optimizedBody320_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_292 optimizedBody320_304

def optimizedBody320_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_291 optimizedBody320_305

def optimizedBody320_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_306

def optimizedBody320_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody320_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody320_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody320_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody320_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody320_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody320_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54), (46, 46), (52, 52), (48, 48), (56, 0)]

def optimizedBody320_315 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody320_295, 320, 18)) (some 318) ([2]) (some (2, optimizedBody320_297, 320, 19))

def optimizedBody320_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_315 optimizedBody320_300

def optimizedBody320_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_314 optimizedBody320_316

def optimizedBody320_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_313 optimizedBody320_317

def optimizedBody320_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_312 optimizedBody320_318

def optimizedBody320_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_311 optimizedBody320_319

def optimizedBody320_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_310 optimizedBody320_320

def optimizedBody320_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_104 optimizedBody320_321

def optimizedBody320_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_309 optimizedBody320_322

def optimizedBody320_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_308 optimizedBody320_323

def optimizedBody320_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_324

def optimizedBody320_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_325

def optimizedBody320_327 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody320_307 optimizedBody320_326

def optimizedBody320_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody320_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 4), (8, 8), (50, 16), (54, 14), (46, 6), (52, 10), (48, 12), (0, 0)]

def optimizedBody320_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_329 optimizedBody320_268

def optimizedBody320_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_328 optimizedBody320_330

def optimizedBody320_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_331

def optimizedBody320_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_332

def optimizedBody320_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_327 optimizedBody320_333

def optimizedBody320_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_290 optimizedBody320_334

def optimizedBody320_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_289 optimizedBody320_335

def optimizedBody320_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_336

def optimizedBody320_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_288 optimizedBody320_337

def optimizedBody320_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_338

def optimizedBody320_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_339

def optimizedBody320_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_277

def optimizedBody320_342 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody320_340 optimizedBody320_341

def optimizedBody320_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (8, 8), (50, 4), (54, 6), (46, 10), (52, 12), (48, 14), (0, 0)]

def optimizedBody320_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_343

def optimizedBody320_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_342 optimizedBody320_344

def optimizedBody320_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_7 optimizedBody320_345

def optimizedBody320_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_346

def optimizedBody320_348 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody320_347 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def optimizedBody320_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8)]

def optimizedBody320_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody320_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_349 optimizedBody320_350

def optimizedBody320_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_351

def optimizedBody320_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_348 optimizedBody320_352

def optimizedBody320_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_287 optimizedBody320_353

def optimizedBody320_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_354

def optimizedBody320_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_355

def optimizedBody320_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_286 optimizedBody320_356

def optimizedBody320_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_5 optimizedBody320_357

def optimizedBody320_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_4 optimizedBody320_358

def optimizedBody320_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_3 optimizedBody320_359

def optimizedBody320_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_2 optimizedBody320_360

def optimizedBody320_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_1 optimizedBody320_361

def optimizedBody320_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_0 optimizedBody320_362

def oracle320 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1)))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 6
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 2))))
                28
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 6))) 23
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 2)))
                  0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 Flapjack.Spt.ln) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 5)))))
              2
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
                25
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 5 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
                  27
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8))) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 30 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))))
                24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 0))) 27
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))
                  2 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))) 23
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 26)))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 29
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 7 Flapjack.Spt.ln) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
                  24
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 25))))))
              7
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))))
                26
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 24
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 28 Flapjack.Spt.ln))
                  0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  22
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 3))) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 24)))))
                23
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 2)) 22
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))))
                  0
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
                  23
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 7)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 27 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22
                      (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))))))
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 6
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 6 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))))
                29
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 5))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 28)))
                  1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23)))))
                6
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 28 Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 28))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 28)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                    (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                    (Flapjack.Spt.ls 29))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 23 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.ls 26))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.ls 28))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 22 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                    (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))))))))))
def optimized320 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(320, 5, optimizedBody320_363)
end InitECandidate.Proofs.SmallStages.Oracles320
