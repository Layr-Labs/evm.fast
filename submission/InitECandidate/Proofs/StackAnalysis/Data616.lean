import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody616_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 2), (16, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14)]

def optimizedBody616_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 131072#64)

def optimizedBody616_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody616_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody616_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody616_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody616_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody616_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody616_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody616_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody616_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_8 optimizedBody616_9

def optimizedBody616_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_7 optimizedBody616_10

def optimizedBody616_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_6 optimizedBody616_11

def optimizedBody616_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_5 optimizedBody616_12

def optimizedBody616_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_4 optimizedBody616_13

def optimizedBody616_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_14

def optimizedBody616_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody616_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody616_15 optimizedBody616_16

def optimizedBody616_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody616_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody616_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody616_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody616_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody616_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody616_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody616_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody616_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody616_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 0), (46, 8), (48, 16), (54, 12), (56, 2), (58, 18), (62, 10), (60, 6), (70, 14)]

def optimizedBody616_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (54, 54), (56, 56), (58, 58), (62, 62), (60, 60), (70, 70)]

def optimizedBody616_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54), (56, 56), (58, 58), (62, 62), (60, 60), (70, 70)]

def optimizedBody616_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_29 optimizedBody616_9

def optimizedBody616_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_28, 616, 2)) (some 613) ([2, 4]) (some (2, optimizedBody616_30, 616, 3))

def optimizedBody616_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody616_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody616_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody616_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody616_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody616_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody616_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody616_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 2), (52, 0), (54, 54), (56, 56), (58, 58), (62, 62), (60, 60), (70, 70)]

def optimizedBody616_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (16, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (62, 62), (14, 60), (70, 70)]

def optimizedBody616_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (62, 62), (14, 60), (70, 70)]

def optimizedBody616_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_41 optimizedBody616_9

def optimizedBody616_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_40, 616, 4)) (some 407) ([2]) (some (2, optimizedBody616_42, 616, 5))

def optimizedBody616_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody616_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody616_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody616_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody616_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 12), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 0), (60, 10), (62, 62), (68, 14), (70, 70)]

def optimizedBody616_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (4, 58), (58, 60), (8, 62), (68, 68),
    (70, 70)]

def optimizedBody616_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (4, 58), (58, 60), (8, 62), (68, 68),
    (70, 70)]

def optimizedBody616_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_50 optimizedBody616_9

def optimizedBody616_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_49, 616, 6)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody616_51, 616, 7))

def optimizedBody616_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody616_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody616_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody616_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_54 optimizedBody616_55

def optimizedBody616_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody616_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_57 optimizedBody616_55

def optimizedBody616_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody616_56 optimizedBody616_58

def optimizedBody616_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody616_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody616_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18446744073709551615#64)

def optimizedBody616_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody616_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody616_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_63 optimizedBody616_64

def optimizedBody616_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_26 optimizedBody616_64

def optimizedBody616_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody616_65 optimizedBody616_66

def optimizedBody616_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody616_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody616_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 128#64))

def optimizedBody616_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody616_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody616_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_72 optimizedBody616_8

def optimizedBody616_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_8

def optimizedBody616_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody616_73 optimizedBody616_74

def optimizedBody616_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody616_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody616_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody616_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody616_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody616_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (56, 44)]

def optimizedBody616_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 56)]

def optimizedBody616_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 56)]

def optimizedBody616_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_83 optimizedBody616_9

def optimizedBody616_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_82, 616, 8)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody616_84, 616, 9))

def optimizedBody616_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody616_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_5 optimizedBody616_86

def optimizedBody616_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_87

def optimizedBody616_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_88

def optimizedBody616_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_85 optimizedBody616_89

def optimizedBody616_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_81 optimizedBody616_90

def optimizedBody616_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_91

def optimizedBody616_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_26 optimizedBody616_92

def optimizedBody616_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_76 optimizedBody616_93

def optimizedBody616_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_80 optimizedBody616_94

def optimizedBody616_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_95

def optimizedBody616_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (8, 8), (68, 68), (70, 70), (44, 44)]

def optimizedBody616_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody616_96 optimizedBody616_97

def optimizedBody616_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (56, 8), (68, 68), (70, 70)]

def optimizedBody616_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (0, 56), (68, 68), (70, 70)]

def optimizedBody616_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (0, 56), (68, 68), (70, 70)]

def optimizedBody616_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_101 optimizedBody616_9

def optimizedBody616_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_100, 616, 10)) (some 494) ([2]) (some (2, optimizedBody616_102, 616, 11))

def optimizedBody616_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 0), (68, 68), (70, 70)]

def optimizedBody616_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (68, 68), (70, 70)]

def optimizedBody616_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (68, 68), (70, 70)]

def optimizedBody616_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_106 optimizedBody616_9

def optimizedBody616_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_105, 616, 12)) (some 418) ([2]) (some (2, optimizedBody616_107, 616, 13))

def optimizedBody616_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody616_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 0), (58, 58), (60, 60), (68, 68), (70, 70)]

def optimizedBody616_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (68, 68), (70, 70)]

def optimizedBody616_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (68, 68), (70, 70)]

def optimizedBody616_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_112 optimizedBody616_9

def optimizedBody616_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_111, 616, 14)) (some 471) ([2]) (some (2, optimizedBody616_113, 616, 15))

def optimizedBody616_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 0), (68, 68), (70, 70)]

def optimizedBody616_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_115

def optimizedBody616_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_114 optimizedBody616_116

def optimizedBody616_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_110 optimizedBody616_117

def optimizedBody616_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_109 optimizedBody616_118

def optimizedBody616_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_54 optimizedBody616_119

def optimizedBody616_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_120

def optimizedBody616_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 2), (58, 58), (0, 60), (68, 68), (70, 70)]

def optimizedBody616_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_122

def optimizedBody616_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody616_121 optimizedBody616_123

def optimizedBody616_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody616_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody616_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 4 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody616_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody616_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody616_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody616_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody616_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody616_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody616_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody616_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 2), (64, 0), (68, 68),
    (70, 70)]

def optimizedBody616_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (68, 68),
    (70, 70)]

def optimizedBody616_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (68, 68),
    (70, 70)]

def optimizedBody616_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_137 optimizedBody616_9

def optimizedBody616_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_136, 616, 16)) (some 415) ([2]) (some (2, optimizedBody616_138, 616, 17))

def optimizedBody616_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (50, 44), (44, 56), (46, 62)]

def optimizedBody616_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50), (0, 44), (6, 46)]

def optimizedBody616_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (0, 44), (6, 46)]

def optimizedBody616_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_142 optimizedBody616_9

def optimizedBody616_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_141, 616, 18)) (some 430) ([2]) (some (2, optimizedBody616_143, 616, 19))

def optimizedBody616_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody616_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody616_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 6)]

def optimizedBody616_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody616_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody616_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody616_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50)]

def optimizedBody616_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50)]

def optimizedBody616_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_151 optimizedBody616_9

def optimizedBody616_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_152, 616, 20)) (some 472) ([2]) (some (2, optimizedBody616_153, 616, 21))

def optimizedBody616_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50)]

def optimizedBody616_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_155

def optimizedBody616_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_154 optimizedBody616_156

def optimizedBody616_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_151 optimizedBody616_157

def optimizedBody616_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_109 optimizedBody616_158

def optimizedBody616_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_159

def optimizedBody616_161 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody616_160 optimizedBody616_156

def optimizedBody616_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (50, 50)]

def optimizedBody616_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 50)]

def optimizedBody616_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 50)]

def optimizedBody616_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_164 optimizedBody616_9

def optimizedBody616_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_163, 616, 22)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody616_165, 616, 23))

def optimizedBody616_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody616_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_5 optimizedBody616_167

def optimizedBody616_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_168

def optimizedBody616_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_169

def optimizedBody616_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_166 optimizedBody616_170

def optimizedBody616_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_162 optimizedBody616_171

def optimizedBody616_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_172

def optimizedBody616_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_26 optimizedBody616_173

def optimizedBody616_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_76 optimizedBody616_174

def optimizedBody616_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_80 optimizedBody616_175

def optimizedBody616_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_176

def optimizedBody616_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_161 optimizedBody616_177

def optimizedBody616_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_178

def optimizedBody616_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_179

def optimizedBody616_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_150 optimizedBody616_180

def optimizedBody616_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_77 optimizedBody616_181

def optimizedBody616_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_149 optimizedBody616_182

def optimizedBody616_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_148 optimizedBody616_183

def optimizedBody616_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_147 optimizedBody616_184

def optimizedBody616_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_146 optimizedBody616_185

def optimizedBody616_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_145 optimizedBody616_186

def optimizedBody616_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_21 optimizedBody616_187

def optimizedBody616_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_20 optimizedBody616_188

def optimizedBody616_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_19 optimizedBody616_189

def optimizedBody616_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_190

def optimizedBody616_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_144 optimizedBody616_191

def optimizedBody616_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_140 optimizedBody616_192

def optimizedBody616_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_193

def optimizedBody616_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (0, 0), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (68, 68), (70, 70), (44, 44)]

def optimizedBody616_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody616_194 optimizedBody616_195

def optimizedBody616_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody616_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody616_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody616_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 4), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody616_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody616_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody616_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_202 optimizedBody616_9

def optimizedBody616_204 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_201, 616, 24)) (some 430) ([2]) (some (2, optimizedBody616_203, 616, 25))

def optimizedBody616_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody616_206 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_205, 616, 26)) (some 75) ([]) (some (2, optimizedBody616_203, 616, 27))

def optimizedBody616_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 0), (68, 68), (70, 70)]

def optimizedBody616_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(36, 2), (44, 44), (18, 46), (14, 48), (0, 50), (26, 52), (20, 54), (46, 56), (12, 58), (10, 60), (8, 62), (6, 64),
    (50, 66), (16, 68), (28, 70)]

def optimizedBody616_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (18, 46), (14, 48), (0, 50), (26, 52), (20, 54), (46, 56), (12, 58), (10, 60), (8, 62), (6, 64),
    (50, 66), (16, 68), (28, 70)]

def optimizedBody616_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_209 optimizedBody616_9

def optimizedBody616_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
  Flapjack.Spt.ln)), optimizedBody616_208, 616, 28)) (some 72) ([]) (some (2, optimizedBody616_210, 616, 29))

def optimizedBody616_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(28, 28), (26, 26), (20, 20), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (2, 0)]

def optimizedBody616_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 0#64)

def optimizedBody616_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def optimizedBody616_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 1#64)

def optimizedBody616_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody616_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody616_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (44, 44), (46, 46), (48, 6), (50, 50), (52, 36)]

def optimizedBody616_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (16, 48), (6, 50), (8, 52)]

def optimizedBody616_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (16, 48), (6, 50), (8, 52)]

def optimizedBody616_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_220 optimizedBody616_9

def optimizedBody616_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_219, 616, 30)) (some 612) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34]) (some (2, optimizedBody616_221, 616, 31))

def optimizedBody616_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (10, 10), (8, 8), (6, 6), (2, 0)]

def optimizedBody616_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody616_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody616_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody616_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody616_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody616_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody616_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_229 optimizedBody616_9

def optimizedBody616_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody616_228, 616, 32)) (some 603) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody616_230, 616, 33))

def optimizedBody616_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_72 optimizedBody616_87

def optimizedBody616_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_232

def optimizedBody616_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_231 optimizedBody616_233

def optimizedBody616_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_227 optimizedBody616_234

def optimizedBody616_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_226 optimizedBody616_235

def optimizedBody616_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_225 optimizedBody616_236

def optimizedBody616_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_224 optimizedBody616_237

def optimizedBody616_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_223 optimizedBody616_238

def optimizedBody616_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_239

def optimizedBody616_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_222 optimizedBody616_240

def optimizedBody616_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_218 optimizedBody616_241

def optimizedBody616_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_26 optimizedBody616_242

def optimizedBody616_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_217 optimizedBody616_243

def optimizedBody616_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_216 optimizedBody616_244

def optimizedBody616_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_215 optimizedBody616_245

def optimizedBody616_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_214 optimizedBody616_246

def optimizedBody616_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_213 optimizedBody616_247

def optimizedBody616_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_212 optimizedBody616_248

def optimizedBody616_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_249

def optimizedBody616_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_211 optimizedBody616_250

def optimizedBody616_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_207 optimizedBody616_251

def optimizedBody616_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_252

def optimizedBody616_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_206 optimizedBody616_253

def optimizedBody616_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_201 optimizedBody616_254

def optimizedBody616_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_255

def optimizedBody616_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_204 optimizedBody616_256

def optimizedBody616_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_200 optimizedBody616_257

def optimizedBody616_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_199 optimizedBody616_258

def optimizedBody616_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_5 optimizedBody616_259

def optimizedBody616_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_76 optimizedBody616_260

def optimizedBody616_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_198 optimizedBody616_261

def optimizedBody616_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_8 optimizedBody616_262

def optimizedBody616_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_197 optimizedBody616_263

def optimizedBody616_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_145 optimizedBody616_264

def optimizedBody616_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_21 optimizedBody616_265

def optimizedBody616_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_20 optimizedBody616_266

def optimizedBody616_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_19 optimizedBody616_267

def optimizedBody616_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_268

def optimizedBody616_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_269

def optimizedBody616_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_196 optimizedBody616_270

def optimizedBody616_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_271

def optimizedBody616_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_60 optimizedBody616_272

def optimizedBody616_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_273

def optimizedBody616_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_139 optimizedBody616_274

def optimizedBody616_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_135 optimizedBody616_275

def optimizedBody616_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_134 optimizedBody616_276

def optimizedBody616_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_133 optimizedBody616_277

def optimizedBody616_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_132 optimizedBody616_278

def optimizedBody616_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_131 optimizedBody616_279

def optimizedBody616_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_130 optimizedBody616_280

def optimizedBody616_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_129 optimizedBody616_281

def optimizedBody616_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_128 optimizedBody616_282

def optimizedBody616_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_127 optimizedBody616_283

def optimizedBody616_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_60 optimizedBody616_284

def optimizedBody616_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_126 optimizedBody616_285

def optimizedBody616_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_125 optimizedBody616_286

def optimizedBody616_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_21 optimizedBody616_287

def optimizedBody616_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_20 optimizedBody616_288

def optimizedBody616_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_19 optimizedBody616_289

def optimizedBody616_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_290

def optimizedBody616_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_124 optimizedBody616_291

def optimizedBody616_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_26 optimizedBody616_292

def optimizedBody616_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_293

def optimizedBody616_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_294

def optimizedBody616_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_295

def optimizedBody616_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_108 optimizedBody616_296

def optimizedBody616_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_104 optimizedBody616_297

def optimizedBody616_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_298

def optimizedBody616_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_103 optimizedBody616_299

def optimizedBody616_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_99 optimizedBody616_300

def optimizedBody616_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_301

def optimizedBody616_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_302

def optimizedBody616_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_98 optimizedBody616_303

def optimizedBody616_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_79 optimizedBody616_304

def optimizedBody616_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_305

def optimizedBody616_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_78 optimizedBody616_306

def optimizedBody616_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_77 optimizedBody616_307

def optimizedBody616_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_76 optimizedBody616_308

def optimizedBody616_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_309

def optimizedBody616_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_75 optimizedBody616_310

def optimizedBody616_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_71 optimizedBody616_311

def optimizedBody616_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_70 optimizedBody616_312

def optimizedBody616_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_69 optimizedBody616_313

def optimizedBody616_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_68 optimizedBody616_314

def optimizedBody616_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_315

def optimizedBody616_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_67 optimizedBody616_316

def optimizedBody616_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_62 optimizedBody616_317

def optimizedBody616_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_61 optimizedBody616_318

def optimizedBody616_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_60 optimizedBody616_319

def optimizedBody616_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_320

def optimizedBody616_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_59 optimizedBody616_321

def optimizedBody616_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_53 optimizedBody616_322

def optimizedBody616_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_323

def optimizedBody616_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_324

def optimizedBody616_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_52 optimizedBody616_325

def optimizedBody616_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_48 optimizedBody616_326

def optimizedBody616_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_47 optimizedBody616_327

def optimizedBody616_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_328

def optimizedBody616_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_46 optimizedBody616_329

def optimizedBody616_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_330

def optimizedBody616_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_45 optimizedBody616_331

def optimizedBody616_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_332

def optimizedBody616_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_44 optimizedBody616_333

def optimizedBody616_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_334

def optimizedBody616_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_335

def optimizedBody616_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_43 optimizedBody616_336

def optimizedBody616_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_39 optimizedBody616_337

def optimizedBody616_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_38 optimizedBody616_338

def optimizedBody616_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_37 optimizedBody616_339

def optimizedBody616_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_36 optimizedBody616_340

def optimizedBody616_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_35 optimizedBody616_341

def optimizedBody616_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_34 optimizedBody616_342

def optimizedBody616_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_33 optimizedBody616_343

def optimizedBody616_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_32 optimizedBody616_344

def optimizedBody616_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_345

def optimizedBody616_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_31 optimizedBody616_346

def optimizedBody616_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_27 optimizedBody616_347

def optimizedBody616_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_26 optimizedBody616_348

def optimizedBody616_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_5 optimizedBody616_349

def optimizedBody616_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_25 optimizedBody616_350

def optimizedBody616_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_8 optimizedBody616_351

def optimizedBody616_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_24 optimizedBody616_352

def optimizedBody616_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_23 optimizedBody616_353

def optimizedBody616_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_22 optimizedBody616_354

def optimizedBody616_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_21 optimizedBody616_355

def optimizedBody616_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_20 optimizedBody616_356

def optimizedBody616_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_19 optimizedBody616_357

def optimizedBody616_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_18 optimizedBody616_358

def optimizedBody616_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_359

def optimizedBody616_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_3 optimizedBody616_360

def optimizedBody616_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_17 optimizedBody616_361

def optimizedBody616_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_2 optimizedBody616_362

def optimizedBody616_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_1 optimizedBody616_363

def optimizedBody616_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody616_0 optimizedBody616_364

def optimized616 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(616, 8, optimizedBody616_365)
end InitECandidate.Proofs.StackAnalysis
