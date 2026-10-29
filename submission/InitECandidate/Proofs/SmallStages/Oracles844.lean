import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source844
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles844
def optimizedBody844_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody844_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody844_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody844_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody844_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody844_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody844_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody844_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody844_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody844_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody844_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody844_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_9 optimizedBody844_10

def optimizedBody844_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_8, 844, 2)) (some 472) ([2]) (some (2, optimizedBody844_11, 844, 3))

def optimizedBody844_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody844_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody844_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody844_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_15, 844, 4)) (some 68) ([2]) (some (2, optimizedBody844_11, 844, 5))

def optimizedBody844_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody844_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (70, 0)]

def optimizedBody844_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (70, 70)]

def optimizedBody844_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (70, 70)]

def optimizedBody844_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_20 optimizedBody844_10

def optimizedBody844_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_19, 844, 6)) (some 68) ([2]) (some (2, optimizedBody844_21, 844, 7))

def optimizedBody844_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 0), (70, 70)]

def optimizedBody844_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (70, 70)]

def optimizedBody844_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (70, 70)]

def optimizedBody844_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_25 optimizedBody844_10

def optimizedBody844_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_24, 844, 8)) (some 69) ([]) (some (2, optimizedBody844_26, 844, 9))

def optimizedBody844_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody844_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (66, 0), (70, 70)]

def optimizedBody844_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (50, 50), (66, 66), (70, 70)]

def optimizedBody844_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (66, 66), (70, 70)]

def optimizedBody844_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_31 optimizedBody844_10

def optimizedBody844_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_30, 844, 10)) (some 68) ([2]) (some (2, optimizedBody844_32, 844, 11))

def optimizedBody844_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody844_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody844_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody844_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody844_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody844_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody844_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (50, 50), (46, 10), (66, 66), (70, 70)]

def optimizedBody844_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (0, 46), (66, 66), (70, 70)]

def optimizedBody844_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46), (66, 66), (70, 70)]

def optimizedBody844_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_42 optimizedBody844_10

def optimizedBody844_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_41, 844, 12)) (some 486) ([2, 4, 6, 8, 10]) (some (2, optimizedBody844_43, 844, 13))

def optimizedBody844_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody844_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody844_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (50, 50), (46, 0), (66, 66), (70, 70)]

def optimizedBody844_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (50, 50), (0, 46), (66, 66), (70, 70)]

def optimizedBody844_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_48, 844, 14)) (some 146) ([2, 4]) (some (2, optimizedBody844_43, 844, 15))

def optimizedBody844_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody844_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (50, 50), (46, 0), (48, 10), (52, 8), (58, 6), (66, 66), (64, 12), (70, 70)]

def optimizedBody844_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 4), (8, 8), (12, 2), (6, 6), (44, 44), (50, 50), (0, 46), (46, 48), (52, 52), (58, 58), (66, 66), (64, 64),
    (70, 70)]

def optimizedBody844_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (0, 46), (46, 48), (52, 52), (58, 58), (66, 66), (64, 64), (70, 70)]

def optimizedBody844_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_53 optimizedBody844_10

def optimizedBody844_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_52, 844, 16)) (some 146) ([2, 4]) (some (2, optimizedBody844_54, 844, 17))

def optimizedBody844_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody844_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (50, 50), (48, 0), (46, 46), (52, 52), (54, 10), (56, 8), (58, 58), (60, 12), (62, 6),
    (66, 66), (64, 64), (70, 70)]

def optimizedBody844_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (16, 2), (44, 44), (50, 50), (48, 48), (0, 46), (12, 52), (52, 54), (54, 56), (10, 58),
    (60, 60), (62, 62), (66, 66), (14, 64), (70, 70)]

def optimizedBody844_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (48, 48), (0, 46), (12, 52), (52, 54), (54, 56), (10, 58), (60, 60), (62, 62), (66, 66),
    (14, 64), (70, 70)]

def optimizedBody844_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_59 optimizedBody844_10

def optimizedBody844_61 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_58, 844, 18)) (some 146) ([2, 4]) (some (2, optimizedBody844_60, 844, 19))

def optimizedBody844_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 6), (50, 50), (48, 48), (52, 52), (54, 54), (56, 4), (58, 8),
    (60, 60), (62, 62), (64, 16), (66, 66), (68, 14), (70, 70)]

def optimizedBody844_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (44, 44), (18, 46), (50, 50), (22, 48), (8, 52), (12, 54), (16, 56), (20, 58), (6, 60), (10, 62), (14, 64),
    (46, 66), (4, 68), (0, 70)]

def optimizedBody844_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (18, 46), (50, 50), (22, 48), (8, 52), (12, 54), (16, 56), (20, 58), (6, 60), (10, 62), (14, 64),
    (46, 66), (4, 68), (0, 70)]

def optimizedBody844_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_64 optimizedBody844_10

def optimizedBody844_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody844_63, 844, 20)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody844_65, 844, 21))

def optimizedBody844_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody844_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody844_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (48, 44), (52, 50)]

def optimizedBody844_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 48), (24, 52)]

def optimizedBody844_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 48), (24, 52)]

def optimizedBody844_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_71 optimizedBody844_10

def optimizedBody844_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_70, 844, 22)) (some 70) ([2]) (some (2, optimizedBody844_72, 844, 23))

def optimizedBody844_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody844_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody844_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (24, 24)]

def optimizedBody844_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody844_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody844_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody844_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody844_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody844_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody844_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody844_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_81 optimizedBody844_83

def optimizedBody844_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_68 optimizedBody844_84

def optimizedBody844_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_82 optimizedBody844_85

def optimizedBody844_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_81 optimizedBody844_86

def optimizedBody844_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_80 optimizedBody844_87

def optimizedBody844_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_79 optimizedBody844_88

def optimizedBody844_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_4 optimizedBody844_89

def optimizedBody844_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_78 optimizedBody844_90

def optimizedBody844_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_77 optimizedBody844_91

def optimizedBody844_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_76 optimizedBody844_92

def optimizedBody844_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_75 optimizedBody844_93

def optimizedBody844_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_74 optimizedBody844_94

def optimizedBody844_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_3 optimizedBody844_95

def optimizedBody844_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_2 optimizedBody844_96

def optimizedBody844_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_1 optimizedBody844_97

def optimizedBody844_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_98

def optimizedBody844_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_73 optimizedBody844_99

def optimizedBody844_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_69 optimizedBody844_100

def optimizedBody844_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_101

def optimizedBody844_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(18, 18), (22, 22), (8, 8), (12, 12), (16, 16), (20, 20), (6, 6), (10, 10), (14, 14), (46, 46), (4, 4), (0, 0),
    (44, 44), (50, 50)]

def optimizedBody844_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 2) optimizedBody844_102 optimizedBody844_103

def optimizedBody844_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(0, 0), (20, 20), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 22)]

def optimizedBody844_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody844_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (44, 44),
    (50, 50), (46, 46), (48, 0)]

def optimizedBody844_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (50, 50), (46, 46), (0, 48)]

def optimizedBody844_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (0, 48)]

def optimizedBody844_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_109 optimizedBody844_10

def optimizedBody844_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_108, 844, 24)) (some 239) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]) (some (2, optimizedBody844_110, 844, 25))

def optimizedBody844_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody844_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (48, 44), (50, 50)]

def optimizedBody844_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48), (4, 50)]

def optimizedBody844_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 48), (4, 50)]

def optimizedBody844_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_115 optimizedBody844_10

def optimizedBody844_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_114, 844, 26)) (some 70) ([2]) (some (2, optimizedBody844_116, 844, 27))

def optimizedBody844_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody844_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody844_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody844_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody844_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody844_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody844_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody844_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_81 optimizedBody844_124

def optimizedBody844_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_68 optimizedBody844_125

def optimizedBody844_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_123 optimizedBody844_126

def optimizedBody844_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_81 optimizedBody844_127

def optimizedBody844_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_122 optimizedBody844_128

def optimizedBody844_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_79 optimizedBody844_129

def optimizedBody844_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_4 optimizedBody844_130

def optimizedBody844_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_78 optimizedBody844_131

def optimizedBody844_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_121 optimizedBody844_132

def optimizedBody844_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_120 optimizedBody844_133

def optimizedBody844_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_119 optimizedBody844_134

def optimizedBody844_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_118 optimizedBody844_135

def optimizedBody844_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_3 optimizedBody844_136

def optimizedBody844_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_2 optimizedBody844_137

def optimizedBody844_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_1 optimizedBody844_138

def optimizedBody844_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_139

def optimizedBody844_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_117 optimizedBody844_140

def optimizedBody844_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_113 optimizedBody844_141

def optimizedBody844_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_142

def optimizedBody844_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (0, 0), (44, 44)]

def optimizedBody844_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody844_143 optimizedBody844_144

def optimizedBody844_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody844_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12#64)

def optimizedBody844_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2)]

def optimizedBody844_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody844_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody844_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_150 optimizedBody844_10

def optimizedBody844_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_149, 844, 28)) (some 78) ([2, 4]) (some (2, optimizedBody844_151, 844, 29))

def optimizedBody844_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody844_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody844_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody844_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_155 optimizedBody844_10

def optimizedBody844_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_154, 844, 30)) (some 70) ([2]) (some (2, optimizedBody844_156, 844, 31))

def optimizedBody844_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody844_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody844_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody844_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody844_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody844_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody844_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody844_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody844_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody844_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody844_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_81 optimizedBody844_167

def optimizedBody844_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_68 optimizedBody844_168

def optimizedBody844_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_166 optimizedBody844_169

def optimizedBody844_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_170

def optimizedBody844_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_14 optimizedBody844_171

def optimizedBody844_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_165 optimizedBody844_172

def optimizedBody844_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_164 optimizedBody844_173

def optimizedBody844_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_0 optimizedBody844_174

def optimizedBody844_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_123 optimizedBody844_175

def optimizedBody844_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_163 optimizedBody844_176

def optimizedBody844_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_162 optimizedBody844_177

def optimizedBody844_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_161 optimizedBody844_178

def optimizedBody844_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_160 optimizedBody844_179

def optimizedBody844_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_159 optimizedBody844_180

def optimizedBody844_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_158 optimizedBody844_181

def optimizedBody844_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_182

def optimizedBody844_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_157 optimizedBody844_183

def optimizedBody844_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_153 optimizedBody844_184

def optimizedBody844_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_185

def optimizedBody844_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_152 optimizedBody844_186

def optimizedBody844_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_148 optimizedBody844_187

def optimizedBody844_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_147 optimizedBody844_188

def optimizedBody844_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_146 optimizedBody844_189

def optimizedBody844_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_190

def optimizedBody844_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_191

def optimizedBody844_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_145 optimizedBody844_192

def optimizedBody844_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_68 optimizedBody844_193

def optimizedBody844_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_112 optimizedBody844_194

def optimizedBody844_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_195

def optimizedBody844_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_111 optimizedBody844_196

def optimizedBody844_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_107 optimizedBody844_197

def optimizedBody844_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_106 optimizedBody844_198

def optimizedBody844_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_105 optimizedBody844_199

def optimizedBody844_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_200

def optimizedBody844_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_201

def optimizedBody844_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_104 optimizedBody844_202

def optimizedBody844_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_68 optimizedBody844_203

def optimizedBody844_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_67 optimizedBody844_204

def optimizedBody844_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_205

def optimizedBody844_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_66 optimizedBody844_206

def optimizedBody844_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_62 optimizedBody844_207

def optimizedBody844_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_208

def optimizedBody844_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_61 optimizedBody844_209

def optimizedBody844_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_57 optimizedBody844_210

def optimizedBody844_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_211

def optimizedBody844_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_56 optimizedBody844_212

def optimizedBody844_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_213

def optimizedBody844_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_214

def optimizedBody844_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_55 optimizedBody844_215

def optimizedBody844_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_51 optimizedBody844_216

def optimizedBody844_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_217

def optimizedBody844_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_50 optimizedBody844_218

def optimizedBody844_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_219

def optimizedBody844_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_220

def optimizedBody844_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_49 optimizedBody844_221

def optimizedBody844_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_47 optimizedBody844_222

def optimizedBody844_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_223

def optimizedBody844_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_45 optimizedBody844_224

def optimizedBody844_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_225

def optimizedBody844_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_226

def optimizedBody844_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_44 optimizedBody844_227

def optimizedBody844_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_40 optimizedBody844_228

def optimizedBody844_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_39 optimizedBody844_229

def optimizedBody844_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_38 optimizedBody844_230

def optimizedBody844_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_37 optimizedBody844_231

def optimizedBody844_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_36 optimizedBody844_232

def optimizedBody844_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_233

def optimizedBody844_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_35 optimizedBody844_234

def optimizedBody844_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_235

def optimizedBody844_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_236

def optimizedBody844_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_33 optimizedBody844_237

def optimizedBody844_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_29 optimizedBody844_238

def optimizedBody844_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_28 optimizedBody844_239

def optimizedBody844_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_240

def optimizedBody844_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_27 optimizedBody844_241

def optimizedBody844_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_23 optimizedBody844_242

def optimizedBody844_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_243

def optimizedBody844_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_22 optimizedBody844_244

def optimizedBody844_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_245

def optimizedBody844_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_17 optimizedBody844_246

def optimizedBody844_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_247

def optimizedBody844_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_16 optimizedBody844_248

def optimizedBody844_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_9 optimizedBody844_249

def optimizedBody844_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_14 optimizedBody844_250

def optimizedBody844_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_251

def optimizedBody844_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_12 optimizedBody844_252

def optimizedBody844_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_7 optimizedBody844_253

def optimizedBody844_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_6 optimizedBody844_254

def optimizedBody844_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_255

def optimizedBody844_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_4 optimizedBody844_256

def optimizedBody844_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_3 optimizedBody844_257

def optimizedBody844_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_2 optimizedBody844_258

def optimizedBody844_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_1 optimizedBody844_259

def optimizedBody844_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_0 optimizedBody844_260

def oracle844 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0))) 23
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 25)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 9)))
                  23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 1
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 0))))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                  23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 6))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 5
                    (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
                2
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 11)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 23)) 33 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 13)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 33 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 35 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23))) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                    (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 7))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 22 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 5
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 22 (Flapjack.Spt.ls 6)) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 35 (Flapjack.Spt.ls 1)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 35
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
                1
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                  1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 2))))
                23
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 13)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 35
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))))
                1
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 13)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 25
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 12)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 31))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))) 23
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 25 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 23 Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 35
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 29))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 23 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 32 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 35
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 32) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 23))) 22
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 33) 25 Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 22 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 35) 33 Flapjack.Spt.ln) 22 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) 23
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) Flapjack.Spt.ln))))))))
def optimized844 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(844, 1, optimizedBody844_261)
end InitECandidate.Proofs.SmallStages.Oracles844
