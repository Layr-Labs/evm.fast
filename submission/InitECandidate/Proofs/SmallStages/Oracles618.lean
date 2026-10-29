import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles618
def optimizedBody618_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (18, 2), (16, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14)]

def optimizedBody618_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 131072#64)

def optimizedBody618_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody618_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody618_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody618_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody618_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody618_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody618_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody618_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody618_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_8 optimizedBody618_9

def optimizedBody618_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_7 optimizedBody618_10

def optimizedBody618_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_6 optimizedBody618_11

def optimizedBody618_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_5 optimizedBody618_12

def optimizedBody618_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_4 optimizedBody618_13

def optimizedBody618_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_14

def optimizedBody618_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody618_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody618_15 optimizedBody618_16

def optimizedBody618_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody618_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody618_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody618_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody618_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody618_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody618_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 4)))

def optimizedBody618_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551352#64))

def optimizedBody618_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody618_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 0), (46, 8), (48, 16), (54, 12), (56, 2), (58, 18), (62, 10), (60, 6), (70, 14)]

def optimizedBody618_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (54, 54), (56, 56), (58, 58), (62, 62), (60, 60), (70, 70)]

def optimizedBody618_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (54, 54), (56, 56), (58, 58), (62, 62), (60, 60), (70, 70)]

def optimizedBody618_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_29 optimizedBody618_9

def optimizedBody618_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_28, 618, 2)) (some 615) ([2, 4]) (some (2, optimizedBody618_30, 618, 3))

def optimizedBody618_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody618_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody618_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody618_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody618_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 112#64))

def optimizedBody618_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody618_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody618_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 2), (52, 0), (54, 54), (56, 56), (58, 58), (62, 62), (60, 60), (70, 70)]

def optimizedBody618_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (16, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (62, 62), (14, 60), (70, 70)]

def optimizedBody618_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (12, 48), (50, 50), (52, 52), (54, 54), (56, 56), (10, 58), (62, 62), (14, 60), (70, 70)]

def optimizedBody618_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_41 optimizedBody618_9

def optimizedBody618_43 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_40, 618, 4)) (some 409) ([2]) (some (2, optimizedBody618_42, 618, 5))

def optimizedBody618_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody618_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody618_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody618_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody618_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 16), (48, 12), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 0), (60, 10), (62, 62), (68, 14), (70, 70)]

def optimizedBody618_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (4, 58), (58, 60), (8, 62), (68, 68),
    (70, 70)]

def optimizedBody618_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (52, 54), (54, 56), (4, 58), (58, 60), (8, 62), (68, 68),
    (70, 70)]

def optimizedBody618_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_50 optimizedBody618_9

def optimizedBody618_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_49, 618, 6)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody618_51, 618, 7))

def optimizedBody618_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody618_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody618_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody618_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_54 optimizedBody618_55

def optimizedBody618_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody618_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_57 optimizedBody618_55

def optimizedBody618_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody618_56 optimizedBody618_58

def optimizedBody618_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody618_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody618_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 18446744073709551615#64)

def optimizedBody618_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody618_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody618_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_63 optimizedBody618_64

def optimizedBody618_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_26 optimizedBody618_64

def optimizedBody618_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody618_65 optimizedBody618_66

def optimizedBody618_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody618_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody618_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 128#64))

def optimizedBody618_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody618_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody618_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_72 optimizedBody618_8

def optimizedBody618_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_8

def optimizedBody618_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody618_73 optimizedBody618_74

def optimizedBody618_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody618_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody618_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody618_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody618_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody618_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (56, 44)]

def optimizedBody618_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 56)]

def optimizedBody618_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 56)]

def optimizedBody618_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_83 optimizedBody618_9

def optimizedBody618_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody618_82, 618, 8)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody618_84, 618, 9))

def optimizedBody618_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody618_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_5 optimizedBody618_86

def optimizedBody618_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_87

def optimizedBody618_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_88

def optimizedBody618_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_85 optimizedBody618_89

def optimizedBody618_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_81 optimizedBody618_90

def optimizedBody618_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_91

def optimizedBody618_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_26 optimizedBody618_92

def optimizedBody618_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_76 optimizedBody618_93

def optimizedBody618_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_80 optimizedBody618_94

def optimizedBody618_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_95

def optimizedBody618_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (8, 8), (68, 68), (70, 70), (44, 44)]

def optimizedBody618_98 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 0) optimizedBody618_96 optimizedBody618_97

def optimizedBody618_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (56, 8), (68, 68), (70, 70)]

def optimizedBody618_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (0, 56), (68, 68), (70, 70)]

def optimizedBody618_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (0, 56), (68, 68), (70, 70)]

def optimizedBody618_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_101 optimizedBody618_9

def optimizedBody618_103 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_100, 618, 10)) (some 496) ([2]) (some (2, optimizedBody618_102, 618, 11))

def optimizedBody618_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 0), (68, 68), (70, 70)]

def optimizedBody618_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (68, 68), (70, 70)]

def optimizedBody618_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (58, 58), (60, 60), (68, 68), (70, 70)]

def optimizedBody618_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_106 optimizedBody618_9

def optimizedBody618_108 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_105, 618, 12)) (some 420) ([2]) (some (2, optimizedBody618_107, 618, 13))

def optimizedBody618_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183600#64)

def optimizedBody618_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 0), (58, 58), (60, 60), (68, 68), (70, 70)]

def optimizedBody618_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (68, 68), (70, 70)]

def optimizedBody618_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 60), (68, 68), (70, 70)]

def optimizedBody618_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_112 optimizedBody618_9

def optimizedBody618_114 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_111, 618, 14)) (some 473) ([2]) (some (2, optimizedBody618_113, 618, 15))

def optimizedBody618_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (0, 0), (68, 68), (70, 70)]

def optimizedBody618_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_115

def optimizedBody618_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_114 optimizedBody618_116

def optimizedBody618_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_110 optimizedBody618_117

def optimizedBody618_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_109 optimizedBody618_118

def optimizedBody618_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_54 optimizedBody618_119

def optimizedBody618_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_120

def optimizedBody618_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 2), (58, 58), (0, 60), (68, 68), (70, 70)]

def optimizedBody618_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_122

def optimizedBody618_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody618_121 optimizedBody618_123

def optimizedBody618_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody618_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody618_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 4 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody618_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody618_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody618_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody618_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody618_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody618_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody618_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody618_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 2), (64, 0), (68, 68),
    (70, 70)]

def optimizedBody618_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (68, 68),
    (70, 70)]

def optimizedBody618_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (68, 68),
    (70, 70)]

def optimizedBody618_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_137 optimizedBody618_9

def optimizedBody618_139 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_136, 618, 16)) (some 417) ([2]) (some (2, optimizedBody618_138, 618, 17))

def optimizedBody618_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (50, 44), (44, 56), (46, 62)]

def optimizedBody618_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50), (0, 44), (6, 46)]

def optimizedBody618_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (0, 44), (6, 46)]

def optimizedBody618_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_142 optimizedBody618_9

def optimizedBody618_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody618_141, 618, 18)) (some 432) ([2]) (some (2, optimizedBody618_143, 618, 19))

def optimizedBody618_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody618_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 184#64)))

def optimizedBody618_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 6)]

def optimizedBody618_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody618_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody618_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody618_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50)]

def optimizedBody618_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50)]

def optimizedBody618_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_151 optimizedBody618_9

def optimizedBody618_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody618_152, 618, 20)) (some 474) ([2]) (some (2, optimizedBody618_153, 618, 21))

def optimizedBody618_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50)]

def optimizedBody618_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_155

def optimizedBody618_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_154 optimizedBody618_156

def optimizedBody618_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_151 optimizedBody618_157

def optimizedBody618_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_109 optimizedBody618_158

def optimizedBody618_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_159

def optimizedBody618_161 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody618_160 optimizedBody618_156

def optimizedBody618_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (50, 50)]

def optimizedBody618_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 50)]

def optimizedBody618_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 50)]

def optimizedBody618_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_164 optimizedBody618_9

def optimizedBody618_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody618_163, 618, 22)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody618_165, 618, 23))

def optimizedBody618_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody618_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_5 optimizedBody618_167

def optimizedBody618_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_168

def optimizedBody618_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_169

def optimizedBody618_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_166 optimizedBody618_170

def optimizedBody618_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_162 optimizedBody618_171

def optimizedBody618_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_172

def optimizedBody618_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_26 optimizedBody618_173

def optimizedBody618_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_76 optimizedBody618_174

def optimizedBody618_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_80 optimizedBody618_175

def optimizedBody618_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_176

def optimizedBody618_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_161 optimizedBody618_177

def optimizedBody618_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_178

def optimizedBody618_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_179

def optimizedBody618_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_150 optimizedBody618_180

def optimizedBody618_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_77 optimizedBody618_181

def optimizedBody618_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_149 optimizedBody618_182

def optimizedBody618_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_148 optimizedBody618_183

def optimizedBody618_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_147 optimizedBody618_184

def optimizedBody618_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_146 optimizedBody618_185

def optimizedBody618_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_145 optimizedBody618_186

def optimizedBody618_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_21 optimizedBody618_187

def optimizedBody618_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_20 optimizedBody618_188

def optimizedBody618_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_19 optimizedBody618_189

def optimizedBody618_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_190

def optimizedBody618_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_144 optimizedBody618_191

def optimizedBody618_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_140 optimizedBody618_192

def optimizedBody618_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_193

def optimizedBody618_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(46, 46), (48, 48), (0, 0), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (68, 68), (70, 70), (44, 44)]

def optimizedBody618_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody618_194 optimizedBody618_195

def optimizedBody618_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody618_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody618_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody618_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 4), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody618_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody618_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody618_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_202 optimizedBody618_9

def optimizedBody618_204 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_201, 618, 24)) (some 432) ([2]) (some (2, optimizedBody618_203, 618, 25))

def optimizedBody618_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (68, 68), (70, 70)]

def optimizedBody618_206 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_205, 618, 26)) (some 75) ([]) (some (2, optimizedBody618_203, 618, 27))

def optimizedBody618_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 0), (68, 68), (70, 70)]

def optimizedBody618_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(36, 2), (44, 44), (18, 46), (14, 48), (0, 50), (26, 52), (20, 54), (46, 56), (12, 58), (10, 60), (8, 62), (6, 64),
    (50, 66), (16, 68), (28, 70)]

def optimizedBody618_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (18, 46), (14, 48), (0, 50), (26, 52), (20, 54), (46, 56), (12, 58), (10, 60), (8, 62), (6, 64),
    (50, 66), (16, 68), (28, 70)]

def optimizedBody618_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_209 optimizedBody618_9

def optimizedBody618_211 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody618_208, 618, 28)) (some 72) ([]) (some (2, optimizedBody618_210, 618, 29))

def optimizedBody618_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(28, 28), (26, 26), (20, 20), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (2, 0)]

def optimizedBody618_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 0#64)

def optimizedBody618_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def optimizedBody618_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 1#64)

def optimizedBody618_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody618_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody618_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (44, 44), (46, 46), (48, 6), (50, 50), (52, 36)]

def optimizedBody618_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (10, 46), (16, 48), (6, 50), (8, 52)]

def optimizedBody618_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (16, 48), (6, 50), (8, 52)]

def optimizedBody618_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_220 optimizedBody618_9

def optimizedBody618_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody618_219, 618, 30)) (some 614) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34]) (some (2, optimizedBody618_221, 618, 31))

def optimizedBody618_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (10, 10), (8, 8), (6, 6), (2, 0)]

def optimizedBody618_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody618_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody618_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody618_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody618_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody618_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody618_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_229 optimizedBody618_9

def optimizedBody618_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody618_228, 618, 32)) (some 605) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody618_230, 618, 33))

def optimizedBody618_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_72 optimizedBody618_87

def optimizedBody618_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_232

def optimizedBody618_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_231 optimizedBody618_233

def optimizedBody618_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_227 optimizedBody618_234

def optimizedBody618_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_226 optimizedBody618_235

def optimizedBody618_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_225 optimizedBody618_236

def optimizedBody618_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_224 optimizedBody618_237

def optimizedBody618_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_223 optimizedBody618_238

def optimizedBody618_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_239

def optimizedBody618_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_222 optimizedBody618_240

def optimizedBody618_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_218 optimizedBody618_241

def optimizedBody618_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_26 optimizedBody618_242

def optimizedBody618_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_217 optimizedBody618_243

def optimizedBody618_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_216 optimizedBody618_244

def optimizedBody618_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_215 optimizedBody618_245

def optimizedBody618_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_214 optimizedBody618_246

def optimizedBody618_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_213 optimizedBody618_247

def optimizedBody618_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_212 optimizedBody618_248

def optimizedBody618_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_249

def optimizedBody618_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_211 optimizedBody618_250

def optimizedBody618_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_207 optimizedBody618_251

def optimizedBody618_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_252

def optimizedBody618_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_206 optimizedBody618_253

def optimizedBody618_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_201 optimizedBody618_254

def optimizedBody618_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_255

def optimizedBody618_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_204 optimizedBody618_256

def optimizedBody618_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_200 optimizedBody618_257

def optimizedBody618_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_199 optimizedBody618_258

def optimizedBody618_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_5 optimizedBody618_259

def optimizedBody618_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_76 optimizedBody618_260

def optimizedBody618_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_198 optimizedBody618_261

def optimizedBody618_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_8 optimizedBody618_262

def optimizedBody618_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_197 optimizedBody618_263

def optimizedBody618_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_145 optimizedBody618_264

def optimizedBody618_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_21 optimizedBody618_265

def optimizedBody618_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_20 optimizedBody618_266

def optimizedBody618_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_19 optimizedBody618_267

def optimizedBody618_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_268

def optimizedBody618_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_269

def optimizedBody618_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_196 optimizedBody618_270

def optimizedBody618_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_271

def optimizedBody618_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_60 optimizedBody618_272

def optimizedBody618_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_273

def optimizedBody618_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_139 optimizedBody618_274

def optimizedBody618_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_135 optimizedBody618_275

def optimizedBody618_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_134 optimizedBody618_276

def optimizedBody618_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_133 optimizedBody618_277

def optimizedBody618_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_132 optimizedBody618_278

def optimizedBody618_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_131 optimizedBody618_279

def optimizedBody618_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_130 optimizedBody618_280

def optimizedBody618_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_129 optimizedBody618_281

def optimizedBody618_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_128 optimizedBody618_282

def optimizedBody618_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_127 optimizedBody618_283

def optimizedBody618_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_60 optimizedBody618_284

def optimizedBody618_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_126 optimizedBody618_285

def optimizedBody618_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_125 optimizedBody618_286

def optimizedBody618_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_21 optimizedBody618_287

def optimizedBody618_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_20 optimizedBody618_288

def optimizedBody618_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_19 optimizedBody618_289

def optimizedBody618_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_290

def optimizedBody618_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_124 optimizedBody618_291

def optimizedBody618_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_26 optimizedBody618_292

def optimizedBody618_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_293

def optimizedBody618_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_294

def optimizedBody618_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_295

def optimizedBody618_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_108 optimizedBody618_296

def optimizedBody618_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_104 optimizedBody618_297

def optimizedBody618_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_298

def optimizedBody618_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_103 optimizedBody618_299

def optimizedBody618_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_99 optimizedBody618_300

def optimizedBody618_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_301

def optimizedBody618_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_302

def optimizedBody618_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_98 optimizedBody618_303

def optimizedBody618_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_79 optimizedBody618_304

def optimizedBody618_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_305

def optimizedBody618_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_78 optimizedBody618_306

def optimizedBody618_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_77 optimizedBody618_307

def optimizedBody618_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_76 optimizedBody618_308

def optimizedBody618_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_309

def optimizedBody618_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_75 optimizedBody618_310

def optimizedBody618_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_71 optimizedBody618_311

def optimizedBody618_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_70 optimizedBody618_312

def optimizedBody618_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_69 optimizedBody618_313

def optimizedBody618_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_68 optimizedBody618_314

def optimizedBody618_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_315

def optimizedBody618_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_67 optimizedBody618_316

def optimizedBody618_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_62 optimizedBody618_317

def optimizedBody618_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_61 optimizedBody618_318

def optimizedBody618_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_60 optimizedBody618_319

def optimizedBody618_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_320

def optimizedBody618_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_59 optimizedBody618_321

def optimizedBody618_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_53 optimizedBody618_322

def optimizedBody618_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_323

def optimizedBody618_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_324

def optimizedBody618_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_52 optimizedBody618_325

def optimizedBody618_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_48 optimizedBody618_326

def optimizedBody618_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_47 optimizedBody618_327

def optimizedBody618_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_328

def optimizedBody618_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_46 optimizedBody618_329

def optimizedBody618_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_330

def optimizedBody618_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_45 optimizedBody618_331

def optimizedBody618_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_332

def optimizedBody618_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_44 optimizedBody618_333

def optimizedBody618_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_334

def optimizedBody618_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_335

def optimizedBody618_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_43 optimizedBody618_336

def optimizedBody618_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_39 optimizedBody618_337

def optimizedBody618_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_38 optimizedBody618_338

def optimizedBody618_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_37 optimizedBody618_339

def optimizedBody618_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_36 optimizedBody618_340

def optimizedBody618_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_35 optimizedBody618_341

def optimizedBody618_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_34 optimizedBody618_342

def optimizedBody618_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_33 optimizedBody618_343

def optimizedBody618_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_32 optimizedBody618_344

def optimizedBody618_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_345

def optimizedBody618_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_31 optimizedBody618_346

def optimizedBody618_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_27 optimizedBody618_347

def optimizedBody618_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_26 optimizedBody618_348

def optimizedBody618_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_5 optimizedBody618_349

def optimizedBody618_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_25 optimizedBody618_350

def optimizedBody618_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_8 optimizedBody618_351

def optimizedBody618_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_24 optimizedBody618_352

def optimizedBody618_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_23 optimizedBody618_353

def optimizedBody618_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_22 optimizedBody618_354

def optimizedBody618_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_21 optimizedBody618_355

def optimizedBody618_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_20 optimizedBody618_356

def optimizedBody618_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_19 optimizedBody618_357

def optimizedBody618_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_18 optimizedBody618_358

def optimizedBody618_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_359

def optimizedBody618_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_3 optimizedBody618_360

def optimizedBody618_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_17 optimizedBody618_361

def optimizedBody618_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_2 optimizedBody618_362

def optimizedBody618_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_1 optimizedBody618_363

def optimizedBody618_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody618_0 optimizedBody618_364

def oracle618 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs (Flapjack.Spt.ls 13) 5 (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 17))))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 16)))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 2 (Flapjack.Spt.ls 25)))
                  2
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 7))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 29)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 7))) 3
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                  2
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)))))
                8
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))) 26
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 18))) 29
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 16)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 5))) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.ls 2)) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 29 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 8))) 23
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 35
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 23)))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 35) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 29)) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 13))) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 0))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 6 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 27 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 2))) 4
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 27 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 24)))))
                4
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 28
                    (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 30
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 27 (Flapjack.Spt.ls 34))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 3)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 6))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 11)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 24)))
                  2
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 34) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.ls 27)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 8))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                    (Flapjack.Spt.ls 35)))
                9
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 25
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 1 Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 28 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 17)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
                5
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 5
                    (Flapjack.Spt.ls 1))
                  6 (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 4))) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 35))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  1
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25))) 22
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 15)))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 27)))))
                7
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22))) 1
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 28)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  1 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 8 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 14))) 24
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 35 (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 6))) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 27
                    (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)) 31
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 26)))
                  6
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 32) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8))) 0
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 26 (Flapjack.Spt.ls 30))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) 31 (Flapjack.Spt.ls 29))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 34))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                    Flapjack.Spt.ln)
                  24 (Flapjack.Spt.ls 25))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 29 (Flapjack.Spt.ls 32))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 24))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 27))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 34 (Flapjack.Spt.ls 35))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 26)))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 28 (Flapjack.Spt.ls 29))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 29))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 22))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))) 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 28))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 35 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 29 (Flapjack.Spt.ls 30))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 31))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 34 (Flapjack.Spt.ls 23))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23))) 35
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 25)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 (Flapjack.Spt.ls 34))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 27 (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 28))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 35)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 31)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23)))))))))))
def optimized618 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(618, 8, optimizedBody618_365)
end InitECandidate.Proofs.SmallStages.Oracles618
