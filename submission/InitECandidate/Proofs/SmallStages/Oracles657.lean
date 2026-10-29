import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles657
def optimizedBody657_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody657_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody657_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody657_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody657_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody657_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody657_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6900#64)

def optimizedBody657_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody657_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody657_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody657_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody657_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_9 optimizedBody657_10

def optimizedBody657_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_8, 657, 2)) (some 472) ([2]) (some (2, optimizedBody657_11, 657, 3))

def optimizedBody657_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody657_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody657_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46)]

def optimizedBody657_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46)]

def optimizedBody657_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_16 optimizedBody657_10

def optimizedBody657_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_15, 657, 4)) (some 68) ([2]) (some (2, optimizedBody657_17, 657, 5))

def optimizedBody657_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody657_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody657_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody657_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody657_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody657_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody657_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody657_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody657_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody657_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody657_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody657_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def optimizedBody657_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody657_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody657_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_26 optimizedBody657_32

def optimizedBody657_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_31 optimizedBody657_33

def optimizedBody657_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_34

def optimizedBody657_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody657_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody657_35 optimizedBody657_36

def optimizedBody657_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody657_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody657_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody657_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0)]

def optimizedBody657_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (0, 46)]

def optimizedBody657_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody657_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_43 optimizedBody657_10

def optimizedBody657_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_42, 657, 6)) (some 146) ([2, 4]) (some (2, optimizedBody657_44, 657, 7))

def optimizedBody657_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody657_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (54, 10), (58, 8), (66, 6), (70, 12)]

def optimizedBody657_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (6, 6), (12, 2), (8, 8), (44, 44), (10, 46), (54, 54), (58, 58), (66, 66), (70, 70)]

def optimizedBody657_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (54, 54), (58, 58), (66, 66), (70, 70)]

def optimizedBody657_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_49 optimizedBody657_10

def optimizedBody657_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_48, 657, 8)) (some 146) ([2, 4]) (some (2, optimizedBody657_50, 657, 9))

def optimizedBody657_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody657_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody657_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6), (50, 10), (54, 54), (58, 58), (64, 12), (66, 66), (68, 8), (70, 70)]

def optimizedBody657_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (12, 2), (10, 4), (8, 8), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54), (58, 58), (64, 64), (66, 66),
    (68, 68), (70, 70)]

def optimizedBody657_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54), (58, 58), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody657_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_56 optimizedBody657_10

def optimizedBody657_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_55, 657, 10)) (some 146) ([2, 4]) (some (2, optimizedBody657_57, 657, 11))

def optimizedBody657_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody657_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 6), (54, 54), (56, 12), (58, 58), (60, 10), (62, 8),
    (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody657_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(28, 2), (34, 8), (32, 6), (30, 4), (44, 44), (14, 46), (16, 48), (0, 50), (24, 52), (6, 54), (20, 56), (10, 58),
    (22, 60), (26, 62), (12, 64), (8, 66), (18, 68), (4, 70)]

def optimizedBody657_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (16, 48), (0, 50), (24, 52), (6, 54), (20, 56), (10, 58), (22, 60), (26, 62), (12, 64),
    (8, 66), (18, 68), (4, 70)]

def optimizedBody657_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_62 optimizedBody657_10

def optimizedBody657_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody657_61, 657, 12)) (some 146) ([2, 4]) (some (2, optimizedBody657_63, 657, 13))

def optimizedBody657_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (44, 44)]

def optimizedBody657_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody657_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody657_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_67 optimizedBody657_10

def optimizedBody657_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_66, 657, 14)) (some 656) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34]) (some (2, optimizedBody657_68, 657, 15))

def optimizedBody657_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody657_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody657_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_66, 657, 16)) (some 68) ([2]) (some (2, optimizedBody657_68, 657, 17))

def optimizedBody657_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody657_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody657_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody657_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody657_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_76 optimizedBody657_10

def optimizedBody657_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody657_75, 657, 18)) (some 78) ([2, 4]) (some (2, optimizedBody657_77, 657, 19))

def optimizedBody657_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody657_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody657_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody657_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_27 optimizedBody657_0

def optimizedBody657_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_26 optimizedBody657_82

def optimizedBody657_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_40 optimizedBody657_83

def optimizedBody657_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_24 optimizedBody657_84

def optimizedBody657_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_4 optimizedBody657_85

def optimizedBody657_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_23 optimizedBody657_86

def optimizedBody657_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_22 optimizedBody657_87

def optimizedBody657_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_21 optimizedBody657_88

def optimizedBody657_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_20 optimizedBody657_89

def optimizedBody657_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_19 optimizedBody657_90

def optimizedBody657_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_3 optimizedBody657_91

def optimizedBody657_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_2 optimizedBody657_92

def optimizedBody657_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_1 optimizedBody657_93

def optimizedBody657_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_81 optimizedBody657_94

def optimizedBody657_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_70 optimizedBody657_95

def optimizedBody657_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_80 optimizedBody657_96

def optimizedBody657_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_79 optimizedBody657_97

def optimizedBody657_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_98

def optimizedBody657_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_78 optimizedBody657_99

def optimizedBody657_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_74 optimizedBody657_100

def optimizedBody657_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_40 optimizedBody657_101

def optimizedBody657_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_73 optimizedBody657_102

def optimizedBody657_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_103

def optimizedBody657_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_72 optimizedBody657_104

def optimizedBody657_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_67 optimizedBody657_105

def optimizedBody657_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_71 optimizedBody657_106

def optimizedBody657_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_107

def optimizedBody657_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody657_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_109

def optimizedBody657_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody657_108 optimizedBody657_110

def optimizedBody657_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody657_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_26 optimizedBody657_112

def optimizedBody657_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_31 optimizedBody657_113

def optimizedBody657_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_114

def optimizedBody657_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_111 optimizedBody657_115

def optimizedBody657_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_70 optimizedBody657_116

def optimizedBody657_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_28 optimizedBody657_117

def optimizedBody657_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_118

def optimizedBody657_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_69 optimizedBody657_119

def optimizedBody657_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_65 optimizedBody657_120

def optimizedBody657_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_121

def optimizedBody657_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_64 optimizedBody657_122

def optimizedBody657_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_60 optimizedBody657_123

def optimizedBody657_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_40 optimizedBody657_124

def optimizedBody657_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_59 optimizedBody657_125

def optimizedBody657_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_28 optimizedBody657_126

def optimizedBody657_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_127

def optimizedBody657_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_58 optimizedBody657_128

def optimizedBody657_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_54 optimizedBody657_129

def optimizedBody657_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_40 optimizedBody657_130

def optimizedBody657_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_53 optimizedBody657_131

def optimizedBody657_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_52 optimizedBody657_132

def optimizedBody657_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_133

def optimizedBody657_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_51 optimizedBody657_134

def optimizedBody657_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_47 optimizedBody657_135

def optimizedBody657_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_40 optimizedBody657_136

def optimizedBody657_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_46 optimizedBody657_137

def optimizedBody657_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_28 optimizedBody657_138

def optimizedBody657_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_139

def optimizedBody657_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_45 optimizedBody657_140

def optimizedBody657_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_41 optimizedBody657_141

def optimizedBody657_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_40 optimizedBody657_142

def optimizedBody657_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_39 optimizedBody657_143

def optimizedBody657_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_28 optimizedBody657_144

def optimizedBody657_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_38 optimizedBody657_145

def optimizedBody657_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_28 optimizedBody657_146

def optimizedBody657_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_147

def optimizedBody657_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_148

def optimizedBody657_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_37 optimizedBody657_149

def optimizedBody657_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_30 optimizedBody657_150

def optimizedBody657_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_26 optimizedBody657_151

def optimizedBody657_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_29 optimizedBody657_152

def optimizedBody657_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_28 optimizedBody657_153

def optimizedBody657_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_27 optimizedBody657_154

def optimizedBody657_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_26 optimizedBody657_155

def optimizedBody657_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_25 optimizedBody657_156

def optimizedBody657_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_24 optimizedBody657_157

def optimizedBody657_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_4 optimizedBody657_158

def optimizedBody657_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_23 optimizedBody657_159

def optimizedBody657_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_22 optimizedBody657_160

def optimizedBody657_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_21 optimizedBody657_161

def optimizedBody657_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_20 optimizedBody657_162

def optimizedBody657_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_19 optimizedBody657_163

def optimizedBody657_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_3 optimizedBody657_164

def optimizedBody657_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_2 optimizedBody657_165

def optimizedBody657_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_1 optimizedBody657_166

def optimizedBody657_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_167

def optimizedBody657_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_18 optimizedBody657_168

def optimizedBody657_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_9 optimizedBody657_169

def optimizedBody657_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_14 optimizedBody657_170

def optimizedBody657_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_13 optimizedBody657_171

def optimizedBody657_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_12 optimizedBody657_172

def optimizedBody657_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_7 optimizedBody657_173

def optimizedBody657_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_6 optimizedBody657_174

def optimizedBody657_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_5 optimizedBody657_175

def optimizedBody657_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_4 optimizedBody657_176

def optimizedBody657_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_3 optimizedBody657_177

def optimizedBody657_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_2 optimizedBody657_178

def optimizedBody657_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_1 optimizedBody657_179

def optimizedBody657_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody657_0 optimizedBody657_180

def oracle657 : Option (Spt Nat) :=
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
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 3)) 3 Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 13)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 7)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 24))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 15) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 14) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 9)) 2 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                1
                (Flapjack.Spt.bs Flapjack.Spt.ln 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 11)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 6)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 6 (Flapjack.Spt.ls 10)) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 17) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 33 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 1)) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 29)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 27)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 23
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 33 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 26)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))))
def optimized657 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(657, 1, optimizedBody657_181)
end InitECandidate.Proofs.SmallStages.Oracles657
