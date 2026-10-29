import InitECandidate.Proofs.WordStages.Optimize640
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source656
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody656_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody656_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody656_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody656_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody656_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody656_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody656_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6900#64)

def optimizedBody656_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody656_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody656_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody656_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody656_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_9 optimizedBody656_10

def optimizedBody656_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody656_8, 656, 2)) (some 470) ([2]) (some (2, optimizedBody656_11, 656, 3))

def optimizedBody656_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody656_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody656_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46)]

def optimizedBody656_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46)]

def optimizedBody656_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_16 optimizedBody656_10

def optimizedBody656_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody656_15, 656, 4)) (some 68) ([2]) (some (2, optimizedBody656_17, 656, 5))

def optimizedBody656_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody656_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody656_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody656_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody656_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody656_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody656_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody656_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody656_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody656_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody656_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody656_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def optimizedBody656_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody656_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody656_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_26 optimizedBody656_32

def optimizedBody656_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_31 optimizedBody656_33

def optimizedBody656_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_34

def optimizedBody656_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody656_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody656_35 optimizedBody656_36

def optimizedBody656_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody656_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody656_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody656_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0)]

def optimizedBody656_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (0, 46)]

def optimizedBody656_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody656_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_43 optimizedBody656_10

def optimizedBody656_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody656_42, 656, 6)) (some 146) ([2, 4]) (some (2, optimizedBody656_44, 656, 7))

def optimizedBody656_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody656_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (54, 10), (58, 8), (66, 6), (70, 12)]

def optimizedBody656_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 4), (6, 6), (12, 2), (8, 8), (44, 44), (10, 46), (54, 54), (58, 58), (66, 66), (70, 70)]

def optimizedBody656_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (54, 54), (58, 58), (66, 66), (70, 70)]

def optimizedBody656_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_49 optimizedBody656_10

def optimizedBody656_51 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody656_48, 656, 8)) (some 146) ([2, 4]) (some (2, optimizedBody656_50, 656, 9))

def optimizedBody656_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody656_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody656_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6), (50, 10), (54, 54), (58, 58), (64, 12), (66, 66), (68, 8), (70, 70)]

def optimizedBody656_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (12, 2), (10, 4), (8, 8), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54), (58, 58), (64, 64), (66, 66),
    (68, 68), (70, 70)]

def optimizedBody656_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54), (58, 58), (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody656_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_56 optimizedBody656_10

def optimizedBody656_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody656_55, 656, 10)) (some 146) ([2, 4]) (some (2, optimizedBody656_57, 656, 11))

def optimizedBody656_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody656_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0), (52, 6), (54, 54), (56, 12), (58, 58), (60, 10), (62, 8),
    (64, 64), (66, 66), (68, 68), (70, 70)]

def optimizedBody656_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(28, 2), (34, 8), (32, 6), (30, 4), (44, 44), (14, 46), (16, 48), (0, 50), (24, 52), (6, 54), (20, 56), (10, 58),
    (22, 60), (26, 62), (12, 64), (8, 66), (18, 68), (4, 70)]

def optimizedBody656_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (16, 48), (0, 50), (24, 52), (6, 54), (20, 56), (10, 58), (22, 60), (26, 62), (12, 64),
    (8, 66), (18, 68), (4, 70)]

def optimizedBody656_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_62 optimizedBody656_10

def optimizedBody656_64 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody656_61, 656, 12)) (some 146) ([2, 4]) (some (2, optimizedBody656_63, 656, 13))

def optimizedBody656_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (26, 26), (28, 28), (30, 30), (32, 32), (34, 34), (44, 44)]

def optimizedBody656_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody656_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody656_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_67 optimizedBody656_10

def optimizedBody656_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody656_66, 656, 14)) (some 655) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34]) (some (2, optimizedBody656_68, 656, 15))

def optimizedBody656_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody656_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody656_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody656_66, 656, 16)) (some 68) ([2]) (some (2, optimizedBody656_68, 656, 17))

def optimizedBody656_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody656_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody656_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody656_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody656_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_76 optimizedBody656_10

def optimizedBody656_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody656_75, 656, 18)) (some 78) ([2, 4]) (some (2, optimizedBody656_77, 656, 19))

def optimizedBody656_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody656_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody656_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody656_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_27 optimizedBody656_0

def optimizedBody656_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_26 optimizedBody656_82

def optimizedBody656_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_40 optimizedBody656_83

def optimizedBody656_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_24 optimizedBody656_84

def optimizedBody656_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_4 optimizedBody656_85

def optimizedBody656_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_23 optimizedBody656_86

def optimizedBody656_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_22 optimizedBody656_87

def optimizedBody656_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_21 optimizedBody656_88

def optimizedBody656_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_20 optimizedBody656_89

def optimizedBody656_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_19 optimizedBody656_90

def optimizedBody656_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_3 optimizedBody656_91

def optimizedBody656_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_2 optimizedBody656_92

def optimizedBody656_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_1 optimizedBody656_93

def optimizedBody656_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_81 optimizedBody656_94

def optimizedBody656_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_70 optimizedBody656_95

def optimizedBody656_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_80 optimizedBody656_96

def optimizedBody656_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_79 optimizedBody656_97

def optimizedBody656_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_98

def optimizedBody656_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_78 optimizedBody656_99

def optimizedBody656_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_74 optimizedBody656_100

def optimizedBody656_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_40 optimizedBody656_101

def optimizedBody656_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_73 optimizedBody656_102

def optimizedBody656_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_103

def optimizedBody656_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_72 optimizedBody656_104

def optimizedBody656_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_67 optimizedBody656_105

def optimizedBody656_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_71 optimizedBody656_106

def optimizedBody656_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_107

def optimizedBody656_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody656_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_109

def optimizedBody656_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody656_108 optimizedBody656_110

def optimizedBody656_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody656_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_26 optimizedBody656_112

def optimizedBody656_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_31 optimizedBody656_113

def optimizedBody656_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_114

def optimizedBody656_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_111 optimizedBody656_115

def optimizedBody656_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_70 optimizedBody656_116

def optimizedBody656_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_28 optimizedBody656_117

def optimizedBody656_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_118

def optimizedBody656_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_69 optimizedBody656_119

def optimizedBody656_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_65 optimizedBody656_120

def optimizedBody656_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_121

def optimizedBody656_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_64 optimizedBody656_122

def optimizedBody656_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_60 optimizedBody656_123

def optimizedBody656_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_40 optimizedBody656_124

def optimizedBody656_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_59 optimizedBody656_125

def optimizedBody656_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_28 optimizedBody656_126

def optimizedBody656_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_127

def optimizedBody656_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_58 optimizedBody656_128

def optimizedBody656_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_54 optimizedBody656_129

def optimizedBody656_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_40 optimizedBody656_130

def optimizedBody656_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_53 optimizedBody656_131

def optimizedBody656_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_52 optimizedBody656_132

def optimizedBody656_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_133

def optimizedBody656_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_51 optimizedBody656_134

def optimizedBody656_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_47 optimizedBody656_135

def optimizedBody656_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_40 optimizedBody656_136

def optimizedBody656_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_46 optimizedBody656_137

def optimizedBody656_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_28 optimizedBody656_138

def optimizedBody656_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_139

def optimizedBody656_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_45 optimizedBody656_140

def optimizedBody656_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_41 optimizedBody656_141

def optimizedBody656_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_40 optimizedBody656_142

def optimizedBody656_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_39 optimizedBody656_143

def optimizedBody656_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_28 optimizedBody656_144

def optimizedBody656_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_38 optimizedBody656_145

def optimizedBody656_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_28 optimizedBody656_146

def optimizedBody656_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_147

def optimizedBody656_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_148

def optimizedBody656_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_37 optimizedBody656_149

def optimizedBody656_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_30 optimizedBody656_150

def optimizedBody656_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_26 optimizedBody656_151

def optimizedBody656_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_29 optimizedBody656_152

def optimizedBody656_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_28 optimizedBody656_153

def optimizedBody656_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_27 optimizedBody656_154

def optimizedBody656_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_26 optimizedBody656_155

def optimizedBody656_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_25 optimizedBody656_156

def optimizedBody656_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_24 optimizedBody656_157

def optimizedBody656_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_4 optimizedBody656_158

def optimizedBody656_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_23 optimizedBody656_159

def optimizedBody656_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_22 optimizedBody656_160

def optimizedBody656_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_21 optimizedBody656_161

def optimizedBody656_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_20 optimizedBody656_162

def optimizedBody656_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_19 optimizedBody656_163

def optimizedBody656_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_3 optimizedBody656_164

def optimizedBody656_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_2 optimizedBody656_165

def optimizedBody656_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_1 optimizedBody656_166

def optimizedBody656_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_167

def optimizedBody656_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_18 optimizedBody656_168

def optimizedBody656_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_9 optimizedBody656_169

def optimizedBody656_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_14 optimizedBody656_170

def optimizedBody656_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_13 optimizedBody656_171

def optimizedBody656_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_12 optimizedBody656_172

def optimizedBody656_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_7 optimizedBody656_173

def optimizedBody656_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_6 optimizedBody656_174

def optimizedBody656_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_5 optimizedBody656_175

def optimizedBody656_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_4 optimizedBody656_176

def optimizedBody656_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_3 optimizedBody656_177

def optimizedBody656_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_2 optimizedBody656_178

def optimizedBody656_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_1 optimizedBody656_179

def optimizedBody656_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody656_0 optimizedBody656_180

def oracle656 : Option (Spt Nat) :=
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
def optimized656 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(656, 1, optimizedBody656_181)
theorem optimize656_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source656, oracle656) = optimized656 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize656_eq
end InitECandidate.Proofs.WordStages
