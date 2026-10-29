import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles676
def optimizedBody676_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2)]

def optimizedBody676_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody676_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody676_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody676_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_2 optimizedBody676_3

def optimizedBody676_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_1, 676, 2)) (some 69) ([]) (some (2, optimizedBody676_4, 676, 3))

def optimizedBody676_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody676_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 736#64)

def optimizedBody676_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody676_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (14, 48), (50, 50)]

def optimizedBody676_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (14, 48), (50, 50)]

def optimizedBody676_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_10 optimizedBody676_3

def optimizedBody676_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_9, 676, 4)) (some 68) ([2]) (some (2, optimizedBody676_11, 676, 5))

def optimizedBody676_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody676_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (2, 2), (14, 14), (48, 0), (50, 50)]

def optimizedBody676_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody676_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 23#64)

def optimizedBody676_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody676_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody676_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody676_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody676_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody676_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 11#64)

def optimizedBody676_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 18446744073709551605#64)))

def optimizedBody676_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody676_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_23 optimizedBody676_24

def optimizedBody676_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_15 optimizedBody676_25

def optimizedBody676_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_26

def optimizedBody676_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_24

def optimizedBody676_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody676_27 optimizedBody676_28

def optimizedBody676_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(52, 44), (54, 46), (48, 4), (56, 2), (46, 6), (58, 14), (50, 8), (60, 48), (62, 50), (44, 10), (0, 0)]

def optimizedBody676_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 56)]

def optimizedBody676_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 10 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody676_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody676_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody676_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 58)]

def optimizedBody676_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody676_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody676_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (64, 0), (14, 14)]

def optimizedBody676_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody676_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody676_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (14, 14)]

def optimizedBody676_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody676_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody676_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (64, 64), (56, 12)]

def optimizedBody676_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody676_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody676_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody676_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody676_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (56, 56), (14, 14)]

def optimizedBody676_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody676_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody676_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (56, 56), (58, 14)]

def optimizedBody676_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody676_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (56, 56), (58, 58)]

def optimizedBody676_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody676_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (54, 54), (48, 48), (56, 56),
    (46, 46), (58, 58), (50, 50), (60, 60), (62, 62), (44, 44), (64, 64)]

def optimizedBody676_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (10, 2), (14, 6), (12, 4), (52, 52), (54, 54), (6, 48), (56, 56), (4, 46), (58, 58), (8, 50), (60, 60),
    (62, 62), (0, 44), (44, 64)]

def optimizedBody676_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (54, 54), (6, 48), (56, 56), (4, 46), (58, 58), (8, 50), (60, 60), (62, 62), (0, 44), (44, 64)]

def optimizedBody676_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_58 optimizedBody676_3

def optimizedBody676_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_57, 676, 6)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody676_59, 676, 7))

def optimizedBody676_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (44, 44)]

def optimizedBody676_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (10, 2), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 44)]

def optimizedBody676_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 44)]

def optimizedBody676_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_63 optimizedBody676_3

def optimizedBody676_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_62, 676, 8)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody676_64, 676, 9))

def optimizedBody676_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody676_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 52), (54, 54), (48, 6), (56, 56), (46, 4), (58, 58), (50, 8), (60, 60), (62, 62), (44, 10), (0, 0)]

def optimizedBody676_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody676_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_67 optimizedBody676_68

def optimizedBody676_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_66 optimizedBody676_69

def optimizedBody676_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_33 optimizedBody676_70

def optimizedBody676_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_71

def optimizedBody676_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_65 optimizedBody676_72

def optimizedBody676_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_61 optimizedBody676_73

def optimizedBody676_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_74

def optimizedBody676_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_60 optimizedBody676_75

def optimizedBody676_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_56 optimizedBody676_76

def optimizedBody676_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_55 optimizedBody676_77

def optimizedBody676_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_54 optimizedBody676_78

def optimizedBody676_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_53 optimizedBody676_79

def optimizedBody676_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_52 optimizedBody676_80

def optimizedBody676_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_51 optimizedBody676_81

def optimizedBody676_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_50 optimizedBody676_82

def optimizedBody676_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_49 optimizedBody676_83

def optimizedBody676_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_48 optimizedBody676_84

def optimizedBody676_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_47 optimizedBody676_85

def optimizedBody676_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_46 optimizedBody676_86

def optimizedBody676_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_45 optimizedBody676_87

def optimizedBody676_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_44 optimizedBody676_88

def optimizedBody676_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_43 optimizedBody676_89

def optimizedBody676_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_41 optimizedBody676_90

def optimizedBody676_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_42 optimizedBody676_91

def optimizedBody676_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_41 optimizedBody676_92

def optimizedBody676_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_40 optimizedBody676_93

def optimizedBody676_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_39 optimizedBody676_94

def optimizedBody676_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_38 optimizedBody676_95

def optimizedBody676_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_37 optimizedBody676_96

def optimizedBody676_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_36 optimizedBody676_97

def optimizedBody676_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_35 optimizedBody676_98

def optimizedBody676_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_34 optimizedBody676_99

def optimizedBody676_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_33 optimizedBody676_100

def optimizedBody676_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_101

def optimizedBody676_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 12)]

def optimizedBody676_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody676_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_103 optimizedBody676_104

def optimizedBody676_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_105

def optimizedBody676_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 10) optimizedBody676_102 optimizedBody676_106

def optimizedBody676_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 2), (54, 4), (48, 6), (56, 8), (46, 10), (58, 12), (50, 14), (60, 16), (62, 18), (44, 20), (0, 0)]

def optimizedBody676_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_108

def optimizedBody676_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_107 optimizedBody676_109

def optimizedBody676_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_32 optimizedBody676_110

def optimizedBody676_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_31 optimizedBody676_111

def optimizedBody676_113 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody676_112 (Flapjack.Spt.bn
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

def optimizedBody676_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (4, 46), (6, 48), (8, 50), (10, 44), (12, 46), (14, 48), (16, 50), (44, 52), (46, 54), (48, 56), (50, 58),
    (58, 60), (60, 62)]

def optimizedBody676_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44), (46, 46), (12, 48), (14, 50), (58, 58), (60, 60)]

def optimizedBody676_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (14, 50), (58, 58), (60, 60)]

def optimizedBody676_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_116 optimizedBody676_3

def optimizedBody676_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_115, 676, 10)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody676_117, 676, 11))

def optimizedBody676_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody676_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody676_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody676_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody676_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody676_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 12), (14, 14)]

def optimizedBody676_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody676_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody676_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 50), (54, 14)]

def optimizedBody676_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody676_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 50), (54, 54)]

def optimizedBody676_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody676_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 14), (8, 16), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 6), (50, 50),
    (52, 4), (54, 54), (56, 8), (58, 58), (60, 60), (62, 0)]

def optimizedBody676_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (10, 2), (14, 6), (12, 4), (44, 44), (46, 46), (6, 48), (48, 50), (4, 52), (50, 54), (8, 56), (52, 58),
    (54, 60), (0, 62)]

def optimizedBody676_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 48), (48, 50), (4, 52), (50, 54), (8, 56), (52, 58), (54, 60), (0, 62)]

def optimizedBody676_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_133 optimizedBody676_3

def optimizedBody676_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody676_132, 676, 12)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody676_134, 676, 13))

def optimizedBody676_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54)]

def optimizedBody676_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44), (46, 46), (12, 48), (14, 50), (10, 52), (50, 54)]

def optimizedBody676_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (14, 50), (10, 52), (50, 54)]

def optimizedBody676_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_138 optimizedBody676_3

def optimizedBody676_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody676_137, 676, 14)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody676_139, 676, 15))

def optimizedBody676_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (6, 6), (12, 12), (4, 4), (14, 14), (8, 8), (10, 10), (50, 50), (0, 0)]

def optimizedBody676_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_141

def optimizedBody676_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_140 optimizedBody676_142

def optimizedBody676_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_136 optimizedBody676_143

def optimizedBody676_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_144

def optimizedBody676_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_135 optimizedBody676_145

def optimizedBody676_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_131 optimizedBody676_146

def optimizedBody676_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_130 optimizedBody676_147

def optimizedBody676_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_129 optimizedBody676_148

def optimizedBody676_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_128 optimizedBody676_149

def optimizedBody676_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_127 optimizedBody676_150

def optimizedBody676_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_126 optimizedBody676_151

def optimizedBody676_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_125 optimizedBody676_152

def optimizedBody676_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_124 optimizedBody676_153

def optimizedBody676_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_48 optimizedBody676_154

def optimizedBody676_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_123 optimizedBody676_155

def optimizedBody676_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_46 optimizedBody676_156

def optimizedBody676_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_122 optimizedBody676_157

def optimizedBody676_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_121 optimizedBody676_158

def optimizedBody676_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_119 optimizedBody676_159

def optimizedBody676_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_160

def optimizedBody676_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (6, 6), (12, 12), (4, 4), (14, 14), (8, 8), (10, 58), (50, 60), (0, 0)]

def optimizedBody676_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_162

def optimizedBody676_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody676_161 optimizedBody676_163

def optimizedBody676_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody676_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody676_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody676_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (8, 8), (6, 6), (4, 4)]

def optimizedBody676_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody676_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody676_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody676_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody676_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody676_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody676_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody676_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody676_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (2, 2), (14, 14), (48, 10), (50, 50)]

def optimizedBody676_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_177 optimizedBody676_68

def optimizedBody676_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_176 optimizedBody676_178

def optimizedBody676_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_119 optimizedBody676_179

def optimizedBody676_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_175 optimizedBody676_180

def optimizedBody676_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_174 optimizedBody676_181

def optimizedBody676_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_173 optimizedBody676_182

def optimizedBody676_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_172 optimizedBody676_183

def optimizedBody676_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_171 optimizedBody676_184

def optimizedBody676_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_170 optimizedBody676_185

def optimizedBody676_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_169 optimizedBody676_186

def optimizedBody676_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_168 optimizedBody676_187

def optimizedBody676_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_167 optimizedBody676_188

def optimizedBody676_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_166 optimizedBody676_189

def optimizedBody676_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_165 optimizedBody676_190

def optimizedBody676_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_119 optimizedBody676_191

def optimizedBody676_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_192

def optimizedBody676_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_164 optimizedBody676_193

def optimizedBody676_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_17 optimizedBody676_194

def optimizedBody676_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_120 optimizedBody676_195

def optimizedBody676_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_119 optimizedBody676_196

def optimizedBody676_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_197

def optimizedBody676_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_118 optimizedBody676_198

def optimizedBody676_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_114 optimizedBody676_199

def optimizedBody676_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_200

def optimizedBody676_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_113 optimizedBody676_201

def optimizedBody676_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_30 optimizedBody676_202

def optimizedBody676_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_203

def optimizedBody676_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_204

def optimizedBody676_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_29 optimizedBody676_205

def optimizedBody676_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_15 optimizedBody676_206

def optimizedBody676_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_22 optimizedBody676_207

def optimizedBody676_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_21 optimizedBody676_208

def optimizedBody676_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_20 optimizedBody676_209

def optimizedBody676_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_19 optimizedBody676_210

def optimizedBody676_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_18 optimizedBody676_211

def optimizedBody676_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_17 optimizedBody676_212

def optimizedBody676_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_213

def optimizedBody676_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_104

def optimizedBody676_216 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody676_214 optimizedBody676_215

def optimizedBody676_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (2, 2), (14, 14), (48, 6), (50, 8)]

def optimizedBody676_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_217

def optimizedBody676_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_216 optimizedBody676_218

def optimizedBody676_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_16 optimizedBody676_219

def optimizedBody676_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_15 optimizedBody676_220

def optimizedBody676_222 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody676_221 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody676_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody676_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody676_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody676_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_225 optimizedBody676_3

def optimizedBody676_227 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_224, 676, 16)) (some 674) ([2]) (some (2, optimizedBody676_226, 676, 17))

def optimizedBody676_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody676_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 384#64)

def optimizedBody676_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody676_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody676_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody676_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_232 optimizedBody676_3

def optimizedBody676_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_231, 676, 18)) (some 77) ([2, 4, 6]) (some (2, optimizedBody676_233, 676, 19))

def optimizedBody676_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody676_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody676_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody676_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_237 optimizedBody676_3

def optimizedBody676_239 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody676_236, 676, 20)) (some 70) ([2]) (some (2, optimizedBody676_238, 676, 21))

def optimizedBody676_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody676_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_15 optimizedBody676_240

def optimizedBody676_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_13 optimizedBody676_241

def optimizedBody676_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_242

def optimizedBody676_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_239 optimizedBody676_243

def optimizedBody676_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_235 optimizedBody676_244

def optimizedBody676_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_245

def optimizedBody676_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_234 optimizedBody676_246

def optimizedBody676_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_230 optimizedBody676_247

def optimizedBody676_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_229 optimizedBody676_248

def optimizedBody676_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_228 optimizedBody676_249

def optimizedBody676_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_250

def optimizedBody676_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_227 optimizedBody676_251

def optimizedBody676_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_223 optimizedBody676_252

def optimizedBody676_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_253

def optimizedBody676_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_222 optimizedBody676_254

def optimizedBody676_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_14 optimizedBody676_255

def optimizedBody676_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_256

def optimizedBody676_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_13 optimizedBody676_257

def optimizedBody676_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_258

def optimizedBody676_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_12 optimizedBody676_259

def optimizedBody676_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_8 optimizedBody676_260

def optimizedBody676_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_7 optimizedBody676_261

def optimizedBody676_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_6 optimizedBody676_262

def optimizedBody676_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_5 optimizedBody676_263

def optimizedBody676_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody676_0 optimizedBody676_264

def oracle676 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 6)) 32
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 28
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 Flapjack.Spt.ln))
                  23 (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 28 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 32 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 27
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 7 (Flapjack.Spt.ls 8)) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 7))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 29 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 24))) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 22)) 7 Flapjack.Spt.ln))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 28
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 5
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln)
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))
                25
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 6))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 5 (Flapjack.Spt.ls 7)) 7
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)) 32
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 23)) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 7
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 8))) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 32 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 7 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 8 (Flapjack.Spt.ls 6)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0 (Flapjack.Spt.ls 5)) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 31 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 25)) 2
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 2 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 24
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 5 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 5))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 29 Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 32
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))
                  5 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                24
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 0)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 32
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                  1 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) 7
                    (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                24 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                25 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                22
                (Flapjack.Spt.bs Flapjack.Spt.ln 25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))))))))
def optimized676 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(676, 3, optimizedBody676_265)
end InitECandidate.Proofs.SmallStages.Oracles676
