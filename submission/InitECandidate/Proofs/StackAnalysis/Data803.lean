import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody803_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (54, 2)]

def optimizedBody803_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (54, 54)]

def optimizedBody803_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54)]

def optimizedBody803_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody803_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_2 optimizedBody803_3

def optimizedBody803_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_1, 803, 2)) (some 69) ([]) (some (2, optimizedBody803_4, 803, 3))

def optimizedBody803_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody803_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody803_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 0), (50, 50), (54, 54)]

def optimizedBody803_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (54, 54)]

def optimizedBody803_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (54, 54)]

def optimizedBody803_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_10 optimizedBody803_3

def optimizedBody803_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_9, 803, 4)) (some 68) ([2]) (some (2, optimizedBody803_11, 803, 5))

def optimizedBody803_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody803_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (54, 54)]

def optimizedBody803_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (6, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody803_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody803_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_16 optimizedBody803_3

def optimizedBody803_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_15, 803, 6)) (some 68) ([2]) (some (2, optimizedBody803_17, 803, 7))

def optimizedBody803_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody803_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody803_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody803_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (44, 44), (46, 6), (48, 48), (50, 8), (52, 2), (54, 54), (56, 4), (58, 0)]

def optimizedBody803_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58)]

def optimizedBody803_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58)]

def optimizedBody803_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_24 optimizedBody803_3

def optimizedBody803_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_23, 803, 8)) (some 729) ([2, 4]) (some (2, optimizedBody803_25, 803, 9))

def optimizedBody803_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58)]

def optimizedBody803_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (6, 56), (58, 58)]

def optimizedBody803_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (6, 56), (58, 58)]

def optimizedBody803_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_29 optimizedBody803_3

def optimizedBody803_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_28, 803, 10)) (some 740) ([2, 4]) (some (2, optimizedBody803_30, 803, 11))

def optimizedBody803_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody803_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody803_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 6), (58, 58)]

def optimizedBody803_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (8, 58)]

def optimizedBody803_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (8, 58)]

def optimizedBody803_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_36 optimizedBody803_3

def optimizedBody803_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_35, 803, 12)) (some 739) ([2, 4, 6]) (some (2, optimizedBody803_37, 803, 13))

def optimizedBody803_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody803_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody803_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody803_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody803_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody803_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5600#64)

def optimizedBody803_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody803_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody803_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody803_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 2), (52, 52), (54, 54), (56, 56),
    (58, 8)]

def optimizedBody803_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_35, 803, 14)) (some 802) ([2, 4, 6, 8, 10]) (some (2, optimizedBody803_37, 803, 15))

def optimizedBody803_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody803_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody803_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody803_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551224#64))

def optimizedBody803_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5984#64)

def optimizedBody803_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody803_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56),
    (58, 8)]

def optimizedBody803_57 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_35, 803, 16)) (some 802) ([2, 4, 6, 8, 10]) (some (2, optimizedBody803_37, 803, 17))

def optimizedBody803_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6368#64)

def optimizedBody803_59 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_35, 803, 18)) (some 802) ([2, 4, 6, 8, 10]) (some (2, optimizedBody803_37, 803, 19))

def optimizedBody803_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody803_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6752#64)

def optimizedBody803_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56)]

def optimizedBody803_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (6, 52), (52, 54), (54, 56)]

def optimizedBody803_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (6, 52), (52, 54), (54, 56)]

def optimizedBody803_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_64 optimizedBody803_3

def optimizedBody803_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody803_63, 803, 20)) (some 802) ([2, 4, 6, 8, 10]) (some (2, optimizedBody803_65, 803, 21))

def optimizedBody803_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54)]

def optimizedBody803_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (6, 54)]

def optimizedBody803_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (6, 54)]

def optimizedBody803_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_69 optimizedBody803_3

def optimizedBody803_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody803_68, 803, 22)) (some 739) ([2, 4, 6]) (some (2, optimizedBody803_70, 803, 23))

def optimizedBody803_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody803_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody803_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50), (52, 52)]

def optimizedBody803_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (52, 52)]

def optimizedBody803_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_75 optimizedBody803_3

def optimizedBody803_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_74, 803, 24)) (some 739) ([2, 4, 6]) (some (2, optimizedBody803_76, 803, 25))

def optimizedBody803_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody803_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody803_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48), (50, 4), (52, 52)]

def optimizedBody803_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (8, 50), (52, 52)]

def optimizedBody803_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (8, 50), (52, 52)]

def optimizedBody803_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_82 optimizedBody803_3

def optimizedBody803_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_81, 803, 26)) (some 739) ([2, 4, 6]) (some (2, optimizedBody803_83, 803, 27))

def optimizedBody803_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody803_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody803_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody803_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 8), (52, 52)]

def optimizedBody803_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (50, 52)]

def optimizedBody803_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (50, 52)]

def optimizedBody803_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_90 optimizedBody803_3

def optimizedBody803_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_89, 803, 28)) (some 739) ([2, 4, 6]) (some (2, optimizedBody803_91, 803, 29))

def optimizedBody803_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody803_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody803_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody803_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody803_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody803_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody803_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_98 optimizedBody803_3

def optimizedBody803_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_97, 803, 30)) (some 739) ([2, 4, 6]) (some (2, optimizedBody803_99, 803, 31))

def optimizedBody803_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody803_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody803_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody803_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_103 optimizedBody803_3

def optimizedBody803_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_102, 803, 32)) (some 780) ([2, 4]) (some (2, optimizedBody803_104, 803, 33))

def optimizedBody803_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody803_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody803_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody803_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_108 optimizedBody803_3

def optimizedBody803_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody803_107, 803, 34)) (some 70) ([2]) (some (2, optimizedBody803_109, 803, 35))

def optimizedBody803_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody803_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody803_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody803_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_112 optimizedBody803_113

def optimizedBody803_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_111 optimizedBody803_114

def optimizedBody803_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_115

def optimizedBody803_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_110 optimizedBody803_116

def optimizedBody803_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_106 optimizedBody803_117

def optimizedBody803_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_118

def optimizedBody803_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_105 optimizedBody803_119

def optimizedBody803_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_101 optimizedBody803_120

def optimizedBody803_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_121

def optimizedBody803_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_100 optimizedBody803_122

def optimizedBody803_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_96 optimizedBody803_123

def optimizedBody803_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_95 optimizedBody803_124

def optimizedBody803_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_93 optimizedBody803_125

def optimizedBody803_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_94 optimizedBody803_126

def optimizedBody803_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_93 optimizedBody803_127

def optimizedBody803_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_32 optimizedBody803_128

def optimizedBody803_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_129

def optimizedBody803_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_130

def optimizedBody803_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_92 optimizedBody803_131

def optimizedBody803_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_88 optimizedBody803_132

def optimizedBody803_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_87 optimizedBody803_133

def optimizedBody803_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_85 optimizedBody803_134

def optimizedBody803_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_86 optimizedBody803_135

def optimizedBody803_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_85 optimizedBody803_136

def optimizedBody803_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_20 optimizedBody803_137

def optimizedBody803_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_138

def optimizedBody803_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_139

def optimizedBody803_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_84 optimizedBody803_140

def optimizedBody803_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_80 optimizedBody803_141

def optimizedBody803_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_79 optimizedBody803_142

def optimizedBody803_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_78 optimizedBody803_143

def optimizedBody803_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_144

def optimizedBody803_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_77 optimizedBody803_145

def optimizedBody803_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_73 optimizedBody803_146

def optimizedBody803_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_72 optimizedBody803_147

def optimizedBody803_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_148

def optimizedBody803_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_149

def optimizedBody803_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_71 optimizedBody803_150

def optimizedBody803_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_67 optimizedBody803_151

def optimizedBody803_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_21 optimizedBody803_152

def optimizedBody803_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_153

def optimizedBody803_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_154

def optimizedBody803_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_66 optimizedBody803_155

def optimizedBody803_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_62 optimizedBody803_156

def optimizedBody803_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_47 optimizedBody803_157

def optimizedBody803_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_46 optimizedBody803_158

def optimizedBody803_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_55 optimizedBody803_159

def optimizedBody803_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_61 optimizedBody803_160

def optimizedBody803_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_53 optimizedBody803_161

def optimizedBody803_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_52 optimizedBody803_162

def optimizedBody803_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_51 optimizedBody803_163

def optimizedBody803_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_50 optimizedBody803_164

def optimizedBody803_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_60 optimizedBody803_165

def optimizedBody803_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_166

def optimizedBody803_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_167

def optimizedBody803_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_59 optimizedBody803_168

def optimizedBody803_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_56 optimizedBody803_169

def optimizedBody803_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_47 optimizedBody803_170

def optimizedBody803_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_46 optimizedBody803_171

def optimizedBody803_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_55 optimizedBody803_172

def optimizedBody803_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_58 optimizedBody803_173

def optimizedBody803_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_53 optimizedBody803_174

def optimizedBody803_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_52 optimizedBody803_175

def optimizedBody803_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_51 optimizedBody803_176

def optimizedBody803_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_50 optimizedBody803_177

def optimizedBody803_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_32 optimizedBody803_178

def optimizedBody803_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_179

def optimizedBody803_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_180

def optimizedBody803_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_57 optimizedBody803_181

def optimizedBody803_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_56 optimizedBody803_182

def optimizedBody803_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_47 optimizedBody803_183

def optimizedBody803_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_46 optimizedBody803_184

def optimizedBody803_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_55 optimizedBody803_185

def optimizedBody803_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_54 optimizedBody803_186

def optimizedBody803_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_53 optimizedBody803_187

def optimizedBody803_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_52 optimizedBody803_188

def optimizedBody803_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_51 optimizedBody803_189

def optimizedBody803_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_50 optimizedBody803_190

def optimizedBody803_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_20 optimizedBody803_191

def optimizedBody803_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_192

def optimizedBody803_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_193

def optimizedBody803_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_49 optimizedBody803_194

def optimizedBody803_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_48 optimizedBody803_195

def optimizedBody803_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_47 optimizedBody803_196

def optimizedBody803_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_46 optimizedBody803_197

def optimizedBody803_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_45 optimizedBody803_198

def optimizedBody803_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_44 optimizedBody803_199

def optimizedBody803_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_43 optimizedBody803_200

def optimizedBody803_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_42 optimizedBody803_201

def optimizedBody803_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_41 optimizedBody803_202

def optimizedBody803_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_40 optimizedBody803_203

def optimizedBody803_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_39 optimizedBody803_204

def optimizedBody803_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_205

def optimizedBody803_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_38 optimizedBody803_206

def optimizedBody803_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_34 optimizedBody803_207

def optimizedBody803_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_33 optimizedBody803_208

def optimizedBody803_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_209

def optimizedBody803_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_32 optimizedBody803_210

def optimizedBody803_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_211

def optimizedBody803_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_212

def optimizedBody803_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_31 optimizedBody803_213

def optimizedBody803_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_27 optimizedBody803_214

def optimizedBody803_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_20 optimizedBody803_215

def optimizedBody803_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_216

def optimizedBody803_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_217

def optimizedBody803_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_26 optimizedBody803_218

def optimizedBody803_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_22 optimizedBody803_219

def optimizedBody803_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_21 optimizedBody803_220

def optimizedBody803_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_221

def optimizedBody803_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_20 optimizedBody803_222

def optimizedBody803_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_19 optimizedBody803_223

def optimizedBody803_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_224

def optimizedBody803_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_18 optimizedBody803_225

def optimizedBody803_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_14 optimizedBody803_226

def optimizedBody803_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_13 optimizedBody803_227

def optimizedBody803_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_228

def optimizedBody803_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_12 optimizedBody803_229

def optimizedBody803_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_8 optimizedBody803_230

def optimizedBody803_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_7 optimizedBody803_231

def optimizedBody803_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_6 optimizedBody803_232

def optimizedBody803_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_5 optimizedBody803_233

def optimizedBody803_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody803_0 optimizedBody803_234

def optimized803 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(803, 3, optimizedBody803_235)
end InitECandidate.Proofs.StackAnalysis
