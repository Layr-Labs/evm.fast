import InitECandidate.Proofs.WordStages.Optimize816
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source832
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody832_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody832_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody832_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody832_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody832_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody832_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody832_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3000#64)

def optimizedBody832_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody832_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody832_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody832_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody832_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_9 optimizedBody832_10

def optimizedBody832_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_8, 832, 2)) (some 470) ([2]) (some (2, optimizedBody832_11, 832, 3))

def optimizedBody832_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody832_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody832_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody832_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_15, 832, 4)) (some 68) ([2]) (some (2, optimizedBody832_11, 832, 5))

def optimizedBody832_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody832_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (70, 0)]

def optimizedBody832_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (70, 70)]

def optimizedBody832_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (70, 70)]

def optimizedBody832_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_20 optimizedBody832_10

def optimizedBody832_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_19, 832, 6)) (some 68) ([2]) (some (2, optimizedBody832_21, 832, 7))

def optimizedBody832_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 0), (70, 70)]

def optimizedBody832_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (70, 70)]

def optimizedBody832_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (70, 70)]

def optimizedBody832_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_25 optimizedBody832_10

def optimizedBody832_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_24, 832, 8)) (some 69) ([]) (some (2, optimizedBody832_26, 832, 9))

def optimizedBody832_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody832_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (66, 0), (70, 70)]

def optimizedBody832_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (50, 50), (66, 66), (70, 70)]

def optimizedBody832_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (66, 66), (70, 70)]

def optimizedBody832_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_31 optimizedBody832_10

def optimizedBody832_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody832_30, 832, 10)) (some 68) ([2]) (some (2, optimizedBody832_32, 832, 11))

def optimizedBody832_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody832_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody832_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody832_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody832_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody832_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody832_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (50, 50), (46, 10), (66, 66), (70, 70)]

def optimizedBody832_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50), (0, 46), (66, 66), (70, 70)]

def optimizedBody832_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (0, 46), (66, 66), (70, 70)]

def optimizedBody832_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_42 optimizedBody832_10

def optimizedBody832_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody832_41, 832, 12)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody832_43, 832, 13))

def optimizedBody832_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody832_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody832_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (50, 50), (46, 0), (66, 66), (70, 70)]

def optimizedBody832_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 4), (8, 8), (6, 6), (12, 2), (44, 44), (50, 50), (0, 46), (66, 66), (70, 70)]

def optimizedBody832_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody832_48, 832, 14)) (some 146) ([2, 4]) (some (2, optimizedBody832_43, 832, 15))

def optimizedBody832_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody832_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (50, 50), (46, 0), (48, 10), (52, 8), (58, 6), (66, 66), (64, 12), (70, 70)]

def optimizedBody832_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 4), (8, 8), (12, 2), (6, 6), (44, 44), (50, 50), (0, 46), (46, 48), (52, 52), (58, 58), (66, 66), (64, 64),
    (70, 70)]

def optimizedBody832_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (0, 46), (46, 48), (52, 52), (58, 58), (66, 66), (64, 64), (70, 70)]

def optimizedBody832_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_53 optimizedBody832_10

def optimizedBody832_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody832_52, 832, 16)) (some 146) ([2, 4]) (some (2, optimizedBody832_54, 832, 17))

def optimizedBody832_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody832_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (50, 50), (48, 0), (46, 46), (52, 52), (54, 10), (56, 8), (58, 58), (60, 12), (62, 6),
    (66, 66), (64, 64), (70, 70)]

def optimizedBody832_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (16, 2), (44, 44), (50, 50), (48, 48), (0, 46), (12, 52), (52, 54), (54, 56), (10, 58),
    (60, 60), (62, 62), (66, 66), (14, 64), (70, 70)]

def optimizedBody832_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (50, 50), (48, 48), (0, 46), (12, 52), (52, 54), (54, 56), (10, 58), (60, 60), (62, 62), (66, 66),
    (14, 64), (70, 70)]

def optimizedBody832_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_59 optimizedBody832_10

def optimizedBody832_61 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody832_58, 832, 18)) (some 146) ([2, 4]) (some (2, optimizedBody832_60, 832, 19))

def optimizedBody832_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 6), (50, 50), (48, 48), (52, 52), (54, 54), (56, 4), (58, 8),
    (60, 60), (62, 62), (64, 16), (66, 66), (68, 14), (70, 70)]

def optimizedBody832_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(24, 2), (44, 44), (18, 46), (50, 50), (22, 48), (8, 52), (12, 54), (16, 56), (20, 58), (6, 60), (10, 62), (14, 64),
    (46, 66), (4, 68), (0, 70)]

def optimizedBody832_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (18, 46), (50, 50), (22, 48), (8, 52), (12, 54), (16, 56), (20, 58), (6, 60), (10, 62), (14, 64),
    (46, 66), (4, 68), (0, 70)]

def optimizedBody832_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_64 optimizedBody832_10

def optimizedBody832_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody832_63, 832, 20)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody832_65, 832, 21))

def optimizedBody832_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody832_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody832_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (48, 44), (52, 50)]

def optimizedBody832_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 48), (24, 52)]

def optimizedBody832_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 48), (24, 52)]

def optimizedBody832_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_71 optimizedBody832_10

def optimizedBody832_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_70, 832, 22)) (some 70) ([2]) (some (2, optimizedBody832_72, 832, 23))

def optimizedBody832_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody832_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 26 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody832_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26), (24, 24)]

def optimizedBody832_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody832_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody832_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody832_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def optimizedBody832_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody832_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody832_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody832_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_81 optimizedBody832_83

def optimizedBody832_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_68 optimizedBody832_84

def optimizedBody832_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_82 optimizedBody832_85

def optimizedBody832_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_81 optimizedBody832_86

def optimizedBody832_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_80 optimizedBody832_87

def optimizedBody832_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_79 optimizedBody832_88

def optimizedBody832_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_4 optimizedBody832_89

def optimizedBody832_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_78 optimizedBody832_90

def optimizedBody832_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_77 optimizedBody832_91

def optimizedBody832_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_76 optimizedBody832_92

def optimizedBody832_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_75 optimizedBody832_93

def optimizedBody832_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_74 optimizedBody832_94

def optimizedBody832_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_3 optimizedBody832_95

def optimizedBody832_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_2 optimizedBody832_96

def optimizedBody832_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_1 optimizedBody832_97

def optimizedBody832_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_98

def optimizedBody832_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_73 optimizedBody832_99

def optimizedBody832_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_69 optimizedBody832_100

def optimizedBody832_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_101

def optimizedBody832_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2
  [(18, 18), (22, 22), (8, 8), (12, 12), (16, 16), (20, 20), (6, 6), (10, 10), (14, 14), (46, 46), (4, 4), (0, 0),
    (44, 44), (50, 50)]

def optimizedBody832_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 2) optimizedBody832_102 optimizedBody832_103

def optimizedBody832_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(0, 0), (20, 20), (18, 18), (16, 16), (14, 14), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4), (2, 22)]

def optimizedBody832_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody832_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (44, 44),
    (50, 50), (46, 46), (48, 0)]

def optimizedBody832_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (50, 50), (46, 46), (0, 48)]

def optimizedBody832_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (46, 46), (0, 48)]

def optimizedBody832_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_109 optimizedBody832_10

def optimizedBody832_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_108, 832, 24)) (some 233) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]) (some (2, optimizedBody832_110, 832, 25))

def optimizedBody832_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody832_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (48, 44), (50, 50)]

def optimizedBody832_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48), (4, 50)]

def optimizedBody832_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 48), (4, 50)]

def optimizedBody832_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_115 optimizedBody832_10

def optimizedBody832_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_114, 832, 26)) (some 70) ([2]) (some (2, optimizedBody832_116, 832, 27))

def optimizedBody832_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody832_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody832_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody832_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody832_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody832_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody832_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody832_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_81 optimizedBody832_124

def optimizedBody832_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_68 optimizedBody832_125

def optimizedBody832_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_123 optimizedBody832_126

def optimizedBody832_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_81 optimizedBody832_127

def optimizedBody832_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_122 optimizedBody832_128

def optimizedBody832_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_79 optimizedBody832_129

def optimizedBody832_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_4 optimizedBody832_130

def optimizedBody832_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_78 optimizedBody832_131

def optimizedBody832_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_121 optimizedBody832_132

def optimizedBody832_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_120 optimizedBody832_133

def optimizedBody832_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_119 optimizedBody832_134

def optimizedBody832_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_118 optimizedBody832_135

def optimizedBody832_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_3 optimizedBody832_136

def optimizedBody832_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_2 optimizedBody832_137

def optimizedBody832_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_1 optimizedBody832_138

def optimizedBody832_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_139

def optimizedBody832_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_117 optimizedBody832_140

def optimizedBody832_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_113 optimizedBody832_141

def optimizedBody832_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_142

def optimizedBody832_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (0, 0), (44, 44)]

def optimizedBody832_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody832_143 optimizedBody832_144

def optimizedBody832_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody832_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12#64)

def optimizedBody832_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2)]

def optimizedBody832_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48)]

def optimizedBody832_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody832_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_150 optimizedBody832_10

def optimizedBody832_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_149, 832, 28)) (some 78) ([2, 4]) (some (2, optimizedBody832_151, 832, 29))

def optimizedBody832_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody832_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody832_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody832_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_155 optimizedBody832_10

def optimizedBody832_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody832_154, 832, 30)) (some 70) ([2]) (some (2, optimizedBody832_156, 832, 31))

def optimizedBody832_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody832_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody832_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody832_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody832_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody832_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody832_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody832_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody832_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody832_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody832_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_81 optimizedBody832_167

def optimizedBody832_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_68 optimizedBody832_168

def optimizedBody832_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_166 optimizedBody832_169

def optimizedBody832_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_34 optimizedBody832_170

def optimizedBody832_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_14 optimizedBody832_171

def optimizedBody832_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_165 optimizedBody832_172

def optimizedBody832_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_164 optimizedBody832_173

def optimizedBody832_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_0 optimizedBody832_174

def optimizedBody832_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_123 optimizedBody832_175

def optimizedBody832_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_163 optimizedBody832_176

def optimizedBody832_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_162 optimizedBody832_177

def optimizedBody832_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_161 optimizedBody832_178

def optimizedBody832_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_160 optimizedBody832_179

def optimizedBody832_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_159 optimizedBody832_180

def optimizedBody832_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_158 optimizedBody832_181

def optimizedBody832_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_182

def optimizedBody832_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_157 optimizedBody832_183

def optimizedBody832_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_153 optimizedBody832_184

def optimizedBody832_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_185

def optimizedBody832_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_152 optimizedBody832_186

def optimizedBody832_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_148 optimizedBody832_187

def optimizedBody832_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_147 optimizedBody832_188

def optimizedBody832_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_146 optimizedBody832_189

def optimizedBody832_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_190

def optimizedBody832_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_191

def optimizedBody832_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_145 optimizedBody832_192

def optimizedBody832_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_68 optimizedBody832_193

def optimizedBody832_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_112 optimizedBody832_194

def optimizedBody832_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_195

def optimizedBody832_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_111 optimizedBody832_196

def optimizedBody832_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_107 optimizedBody832_197

def optimizedBody832_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_106 optimizedBody832_198

def optimizedBody832_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_105 optimizedBody832_199

def optimizedBody832_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_200

def optimizedBody832_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_201

def optimizedBody832_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_104 optimizedBody832_202

def optimizedBody832_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_68 optimizedBody832_203

def optimizedBody832_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_67 optimizedBody832_204

def optimizedBody832_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_205

def optimizedBody832_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_66 optimizedBody832_206

def optimizedBody832_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_62 optimizedBody832_207

def optimizedBody832_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_208

def optimizedBody832_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_61 optimizedBody832_209

def optimizedBody832_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_57 optimizedBody832_210

def optimizedBody832_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_46 optimizedBody832_211

def optimizedBody832_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_56 optimizedBody832_212

def optimizedBody832_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_34 optimizedBody832_213

def optimizedBody832_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_214

def optimizedBody832_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_55 optimizedBody832_215

def optimizedBody832_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_51 optimizedBody832_216

def optimizedBody832_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_46 optimizedBody832_217

def optimizedBody832_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_50 optimizedBody832_218

def optimizedBody832_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_34 optimizedBody832_219

def optimizedBody832_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_220

def optimizedBody832_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_49 optimizedBody832_221

def optimizedBody832_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_47 optimizedBody832_222

def optimizedBody832_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_46 optimizedBody832_223

def optimizedBody832_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_45 optimizedBody832_224

def optimizedBody832_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_34 optimizedBody832_225

def optimizedBody832_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_226

def optimizedBody832_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_44 optimizedBody832_227

def optimizedBody832_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_40 optimizedBody832_228

def optimizedBody832_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_39 optimizedBody832_229

def optimizedBody832_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_38 optimizedBody832_230

def optimizedBody832_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_37 optimizedBody832_231

def optimizedBody832_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_36 optimizedBody832_232

def optimizedBody832_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_34 optimizedBody832_233

def optimizedBody832_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_35 optimizedBody832_234

def optimizedBody832_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_34 optimizedBody832_235

def optimizedBody832_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_236

def optimizedBody832_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_33 optimizedBody832_237

def optimizedBody832_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_29 optimizedBody832_238

def optimizedBody832_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_28 optimizedBody832_239

def optimizedBody832_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_240

def optimizedBody832_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_27 optimizedBody832_241

def optimizedBody832_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_23 optimizedBody832_242

def optimizedBody832_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_243

def optimizedBody832_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_22 optimizedBody832_244

def optimizedBody832_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_18 optimizedBody832_245

def optimizedBody832_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_17 optimizedBody832_246

def optimizedBody832_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_247

def optimizedBody832_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_16 optimizedBody832_248

def optimizedBody832_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_9 optimizedBody832_249

def optimizedBody832_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_14 optimizedBody832_250

def optimizedBody832_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_13 optimizedBody832_251

def optimizedBody832_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_12 optimizedBody832_252

def optimizedBody832_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_7 optimizedBody832_253

def optimizedBody832_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_6 optimizedBody832_254

def optimizedBody832_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_5 optimizedBody832_255

def optimizedBody832_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_4 optimizedBody832_256

def optimizedBody832_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_3 optimizedBody832_257

def optimizedBody832_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_2 optimizedBody832_258

def optimizedBody832_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_1 optimizedBody832_259

def optimizedBody832_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody832_0 optimizedBody832_260

def oracle832 : Option (Spt Nat) :=
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
def optimized832 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(832, 1, optimizedBody832_261)
theorem optimize832_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source832, oracle832) = optimized832 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize832_eq
end InitECandidate.Proofs.WordStages
