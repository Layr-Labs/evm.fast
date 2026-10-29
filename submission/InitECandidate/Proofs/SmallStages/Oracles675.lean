import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles675
def optimizedBody675_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2), (52, 6)]

def optimizedBody675_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody675_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52)]

def optimizedBody675_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody675_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_2 optimizedBody675_3

def optimizedBody675_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody675_1, 675, 2)) (some 69) ([]) (some (2, optimizedBody675_4, 675, 3))

def optimizedBody675_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody675_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 736#64)

def optimizedBody675_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52)]

def optimizedBody675_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48), (50, 50), (14, 52)]

def optimizedBody675_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50), (14, 52)]

def optimizedBody675_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_10 optimizedBody675_3

def optimizedBody675_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody675_9, 675, 4)) (some 68) ([2]) (some (2, optimizedBody675_11, 675, 5))

def optimizedBody675_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody675_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 0), (48, 4), (50, 50), (14, 14), (12, 12)]

def optimizedBody675_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody675_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 23#64)

def optimizedBody675_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody675_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody675_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody675_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody675_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody675_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 11#64)

def optimizedBody675_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 12 (Flapjack.WordRegImm.imm 18446744073709551605#64)))

def optimizedBody675_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (12, 12)]

def optimizedBody675_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_23 optimizedBody675_24

def optimizedBody675_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_25

def optimizedBody675_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_26

def optimizedBody675_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_24

def optimizedBody675_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 12) optimizedBody675_27 optimizedBody675_28

def optimizedBody675_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 12)]

def optimizedBody675_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 11#64)

def optimizedBody675_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody675_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_31 optimizedBody675_32

def optimizedBody675_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_33

def optimizedBody675_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_32

def optimizedBody675_36 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 18) optimizedBody675_34 optimizedBody675_35

def optimizedBody675_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (54, 2), (0, 0), (18, 18), (56, 4), (58, 48), (50, 50), (52, 6), (48, 8), (14, 14), (16, 16),
    (12, 12)]

def optimizedBody675_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody675_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody675_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody675_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody675_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody675_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody675_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16), (0, 0)]

def optimizedBody675_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody675_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody675_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16), (60, 0)]

def optimizedBody675_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody675_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16), (60, 60)]

def optimizedBody675_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody675_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (12, 12)]

def optimizedBody675_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 12 (Flapjack.WordRegImm.reg 16)))

def optimizedBody675_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody675_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody675_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody675_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody675_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 16), (68, 12), (14, 14)]

def optimizedBody675_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody675_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody675_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 66), (68, 68), (64, 14)]

def optimizedBody675_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody675_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (66, 66), (68, 68), (64, 64)]

def optimizedBody675_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody675_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (54, 54), (48, 60),
    (50, 18), (56, 56), (52, 58), (58, 50), (60, 52), (62, 48), (64, 64), (66, 66), (68, 68)]

def optimizedBody675_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 4), (14, 6), (16, 8), (10, 2), (44, 44), (46, 46), (6, 54), (48, 48), (50, 50), (4, 56), (52, 52), (54, 58),
    (8, 60), (0, 62), (56, 64), (58, 66), (60, 68)]

def optimizedBody675_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 54), (48, 48), (50, 50), (4, 56), (52, 52), (54, 58), (8, 60), (0, 62), (56, 64),
    (58, 66), (60, 68)]

def optimizedBody675_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_66 optimizedBody675_3

def optimizedBody675_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody675_65, 675, 6)) (some 668) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody675_67, 675, 7))

def optimizedBody675_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody675_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (22, 2), (44, 44), (46, 46), (0, 48), (18, 50), (20, 52), (50, 54), (14, 56), (10, 58),
    (12, 60)]

def optimizedBody675_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (18, 50), (20, 52), (50, 54), (14, 56), (10, 58), (12, 60)]

def optimizedBody675_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_71 optimizedBody675_3

def optimizedBody675_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody675_70, 675, 8)) (some 665) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody675_72, 675, 9))

def optimizedBody675_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody675_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody675_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (54, 6), (0, 0), (18, 18), (56, 4), (58, 20), (50, 50), (52, 8), (48, 22), (14, 14), (16, 16),
    (12, 12)]

def optimizedBody675_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody675_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_76 optimizedBody675_77

def optimizedBody675_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_75 optimizedBody675_78

def optimizedBody675_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_74 optimizedBody675_79

def optimizedBody675_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_80

def optimizedBody675_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_73 optimizedBody675_81

def optimizedBody675_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_69 optimizedBody675_82

def optimizedBody675_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_83

def optimizedBody675_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_68 optimizedBody675_84

def optimizedBody675_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_64 optimizedBody675_85

def optimizedBody675_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_63 optimizedBody675_86

def optimizedBody675_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_62 optimizedBody675_87

def optimizedBody675_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_61 optimizedBody675_88

def optimizedBody675_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_60 optimizedBody675_89

def optimizedBody675_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_59 optimizedBody675_90

def optimizedBody675_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_58 optimizedBody675_91

def optimizedBody675_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_57 optimizedBody675_92

def optimizedBody675_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_56 optimizedBody675_93

def optimizedBody675_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_55 optimizedBody675_94

def optimizedBody675_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_54 optimizedBody675_95

def optimizedBody675_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_53 optimizedBody675_96

def optimizedBody675_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_52 optimizedBody675_97

def optimizedBody675_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_51 optimizedBody675_98

def optimizedBody675_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_50 optimizedBody675_99

def optimizedBody675_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_49 optimizedBody675_100

def optimizedBody675_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_48 optimizedBody675_101

def optimizedBody675_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_47 optimizedBody675_102

def optimizedBody675_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_46 optimizedBody675_103

def optimizedBody675_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_45 optimizedBody675_104

def optimizedBody675_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_44 optimizedBody675_105

def optimizedBody675_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_43 optimizedBody675_106

def optimizedBody675_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_42 optimizedBody675_107

def optimizedBody675_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_41 optimizedBody675_108

def optimizedBody675_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_40 optimizedBody675_109

def optimizedBody675_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_39 optimizedBody675_110

def optimizedBody675_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_111

def optimizedBody675_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody675_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_113

def optimizedBody675_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 18 (Flapjack.WordRegImm.reg 16) optimizedBody675_112 optimizedBody675_114

def optimizedBody675_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (54, 6), (0, 0), (18, 18), (56, 8), (58, 10), (50, 20), (52, 22), (48, 24), (14, 14), (16, 16),
    (12, 12)]

def optimizedBody675_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_116

def optimizedBody675_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_115 optimizedBody675_117

def optimizedBody675_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_38 optimizedBody675_118

def optimizedBody675_120 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody675_119 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody675_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody675_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 58)]

def optimizedBody675_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody675_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 48), (2, 52), (6, 54), (8, 56)]

def optimizedBody675_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody675_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody675_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody675_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody675_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody675_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody675_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody675_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody675_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 10), (50, 50), (14, 14), (12, 12)]

def optimizedBody675_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_133 optimizedBody675_77

def optimizedBody675_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_132 optimizedBody675_134

def optimizedBody675_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_135

def optimizedBody675_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_131 optimizedBody675_136

def optimizedBody675_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_130 optimizedBody675_137

def optimizedBody675_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_129 optimizedBody675_138

def optimizedBody675_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_128 optimizedBody675_139

def optimizedBody675_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_127 optimizedBody675_140

def optimizedBody675_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_126 optimizedBody675_141

def optimizedBody675_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_125 optimizedBody675_142

def optimizedBody675_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_124 optimizedBody675_143

def optimizedBody675_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_123 optimizedBody675_144

def optimizedBody675_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_122 optimizedBody675_145

def optimizedBody675_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_121 optimizedBody675_146

def optimizedBody675_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_147

def optimizedBody675_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_148

def optimizedBody675_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_120 optimizedBody675_149

def optimizedBody675_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_37 optimizedBody675_150

def optimizedBody675_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_151

def optimizedBody675_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_152

def optimizedBody675_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_36 optimizedBody675_153

def optimizedBody675_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_30 optimizedBody675_154

def optimizedBody675_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_22 optimizedBody675_155

def optimizedBody675_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_156

def optimizedBody675_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_157

def optimizedBody675_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_29 optimizedBody675_158

def optimizedBody675_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_159

def optimizedBody675_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_22 optimizedBody675_160

def optimizedBody675_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_21 optimizedBody675_161

def optimizedBody675_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_20 optimizedBody675_162

def optimizedBody675_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_19 optimizedBody675_163

def optimizedBody675_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_18 optimizedBody675_164

def optimizedBody675_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_17 optimizedBody675_165

def optimizedBody675_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_166

def optimizedBody675_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody675_167 optimizedBody675_114

def optimizedBody675_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 4), (0, 0), (48, 6), (50, 8), (14, 14), (12, 12)]

def optimizedBody675_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_169

def optimizedBody675_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_168 optimizedBody675_170

def optimizedBody675_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_16 optimizedBody675_171

def optimizedBody675_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_15 optimizedBody675_172

def optimizedBody675_174 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody675_173 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody675_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody675_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody675_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody675_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_177 optimizedBody675_3

def optimizedBody675_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody675_176, 675, 10)) (some 674) ([2]) (some (2, optimizedBody675_178, 675, 11))

def optimizedBody675_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody675_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 384#64)

def optimizedBody675_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody675_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody675_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody675_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_184 optimizedBody675_3

def optimizedBody675_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody675_183, 675, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody675_185, 675, 13))

def optimizedBody675_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody675_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody675_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody675_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_189 optimizedBody675_3

def optimizedBody675_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody675_188, 675, 14)) (some 70) ([2]) (some (2, optimizedBody675_190, 675, 15))

def optimizedBody675_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody675_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody675_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_192 optimizedBody675_193

def optimizedBody675_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_19 optimizedBody675_194

def optimizedBody675_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_195

def optimizedBody675_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_191 optimizedBody675_196

def optimizedBody675_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_187 optimizedBody675_197

def optimizedBody675_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_198

def optimizedBody675_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_186 optimizedBody675_199

def optimizedBody675_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_182 optimizedBody675_200

def optimizedBody675_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_181 optimizedBody675_201

def optimizedBody675_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_180 optimizedBody675_202

def optimizedBody675_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_203

def optimizedBody675_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_179 optimizedBody675_204

def optimizedBody675_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_175 optimizedBody675_205

def optimizedBody675_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_206

def optimizedBody675_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_174 optimizedBody675_207

def optimizedBody675_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_14 optimizedBody675_208

def optimizedBody675_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_209

def optimizedBody675_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_13 optimizedBody675_210

def optimizedBody675_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_211

def optimizedBody675_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_12 optimizedBody675_212

def optimizedBody675_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_8 optimizedBody675_213

def optimizedBody675_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_7 optimizedBody675_214

def optimizedBody675_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_6 optimizedBody675_215

def optimizedBody675_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_5 optimizedBody675_216

def optimizedBody675_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody675_0 optimizedBody675_217

def oracle675 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 3))) 4
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 0))) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.ls 4)) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
                24
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 22)) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 8 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln))
                26
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 Flapjack.Spt.ln) 25
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23))) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 6 (Flapjack.Spt.ls 7)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 26)) 7 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 8 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 Flapjack.Spt.ln) 7
                  (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 8)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.ls 27)) 6 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 8 Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 29 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 30 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 7))))
                25
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 8 (Flapjack.Spt.ls 2)) 25
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 4))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 10) 9 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                24 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 24 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                26 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 26 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                22 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                25 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 25 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 22)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))))
def optimized675 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(675, 4, optimizedBody675_218)
end InitECandidate.Proofs.SmallStages.Oracles675
