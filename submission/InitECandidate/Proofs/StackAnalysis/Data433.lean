import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody433_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody433_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody433_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody433_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody433_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551440#64))

def optimizedBody433_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody433_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody433_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551432#64))

def optimizedBody433_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody433_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody433_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody433_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody433_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody433_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_11 optimizedBody433_12

def optimizedBody433_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_10, 433, 2)) (some 432) ([2, 4]) (some (2, optimizedBody433_13, 433, 3))

def optimizedBody433_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody433_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody433_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody433_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody433_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody433_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody433_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody433_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody433_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody433_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_10, 433, 4)) (some 432) ([2, 4]) (some (2, optimizedBody433_13, 433, 5))

def optimizedBody433_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody433_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody433_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_10, 433, 6)) (some 432) ([2, 4]) (some (2, optimizedBody433_13, 433, 7))

def optimizedBody433_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody433_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody433_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_10, 433, 8)) (some 432) ([2, 4]) (some (2, optimizedBody433_13, 433, 9))

def optimizedBody433_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody433_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody433_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_10, 433, 10)) (some 432) ([2, 4]) (some (2, optimizedBody433_13, 433, 11))

def optimizedBody433_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 0

def optimizedBody433_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody433_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody433_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody433_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody433_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody433_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody433_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody433_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody433_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (6, 6), (4, 4), (46, 2)]

def optimizedBody433_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody433_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 6), (50, 4), (52, 46)]

def optimizedBody433_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (10, 52)]

def optimizedBody433_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (10, 52)]

def optimizedBody433_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_47 optimizedBody433_12

def optimizedBody433_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_46, 433, 12)) (some 197) ([2, 4]) (some (2, optimizedBody433_48, 433, 13))

def optimizedBody433_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody433_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 46), (48, 48), (52, 6), (50, 50), (54, 4), (56, 10)]

def optimizedBody433_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 4), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (54, 54), (56, 56)]

def optimizedBody433_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (54, 54), (56, 56)]

def optimizedBody433_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_53 optimizedBody433_12

def optimizedBody433_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody433_52, 433, 14)) (some 186) ([2, 4]) (some (2, optimizedBody433_54, 433, 15))

def optimizedBody433_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody433_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody433_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody433_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (50, 48), (52, 52), (54, 50), (48, 54), (56, 56)]

def optimizedBody433_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (4, 48), (0, 56)]

def optimizedBody433_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (4, 48), (0, 56)]

def optimizedBody433_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_61 optimizedBody433_12

def optimizedBody433_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody433_60, 433, 16)) (some 182) ([2, 4]) (some (2, optimizedBody433_62, 433, 17))

def optimizedBody433_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 52), (54, 54), (56, 0)]

def optimizedBody433_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50), (4, 52), (50, 54), (52, 56)]

def optimizedBody433_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (4, 52), (50, 54), (52, 56)]

def optimizedBody433_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_66 optimizedBody433_12

def optimizedBody433_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody433_65, 433, 18)) (some 192) ([2, 4, 6]) (some (2, optimizedBody433_67, 433, 19))

def optimizedBody433_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 48), (4, 4), (50, 50), (52, 52)]

def optimizedBody433_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_69

def optimizedBody433_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_68 optimizedBody433_70

def optimizedBody433_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_64 optimizedBody433_71

def optimizedBody433_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_72

def optimizedBody433_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_63 optimizedBody433_73

def optimizedBody433_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_59 optimizedBody433_74

def optimizedBody433_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_58 optimizedBody433_75

def optimizedBody433_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_57 optimizedBody433_76

def optimizedBody433_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_77

def optimizedBody433_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 48), (4, 52), (50, 50), (52, 56)]

def optimizedBody433_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_79

def optimizedBody433_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody433_78 optimizedBody433_80

def optimizedBody433_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody433_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (0, 46), (6, 48), (4, 50), (10, 52)]

def optimizedBody433_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48), (4, 50), (10, 52)]

def optimizedBody433_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_84 optimizedBody433_12

def optimizedBody433_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody433_83, 433, 20)) (some 432) ([2, 4]) (some (2, optimizedBody433_85, 433, 21))

def optimizedBody433_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (6, 6), (4, 4), (10, 10)]

def optimizedBody433_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_87

def optimizedBody433_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_86 optimizedBody433_88

def optimizedBody433_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_82 optimizedBody433_89

def optimizedBody433_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_90

def optimizedBody433_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_81 optimizedBody433_91

def optimizedBody433_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_50 optimizedBody433_92

def optimizedBody433_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_56 optimizedBody433_93

def optimizedBody433_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_94

def optimizedBody433_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_55 optimizedBody433_95

def optimizedBody433_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_51 optimizedBody433_96

def optimizedBody433_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_97

def optimizedBody433_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (0, 46), (6, 48), (4, 50), (10, 10)]

def optimizedBody433_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_99

def optimizedBody433_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody433_98 optimizedBody433_100

def optimizedBody433_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody433_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (0, 0), (6, 6), (4, 4), (46, 10)]

def optimizedBody433_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody433_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_103 optimizedBody433_104

def optimizedBody433_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_102 optimizedBody433_105

def optimizedBody433_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_56 optimizedBody433_106

def optimizedBody433_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_107

def optimizedBody433_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_101 optimizedBody433_108

def optimizedBody433_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_50 optimizedBody433_109

def optimizedBody433_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_40 optimizedBody433_110

def optimizedBody433_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_111

def optimizedBody433_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_49 optimizedBody433_112

def optimizedBody433_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_45 optimizedBody433_113

def optimizedBody433_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_114

def optimizedBody433_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody433_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_116

def optimizedBody433_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody433_115 optimizedBody433_117

def optimizedBody433_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (6, 6), (4, 4), (46, 8)]

def optimizedBody433_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_119

def optimizedBody433_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_118 optimizedBody433_120

def optimizedBody433_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_44 optimizedBody433_121

def optimizedBody433_123 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody433_122 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody433_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody433_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody433_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_124 optimizedBody433_125

def optimizedBody433_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_50 optimizedBody433_126

def optimizedBody433_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_127

def optimizedBody433_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_123 optimizedBody433_128

def optimizedBody433_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_43 optimizedBody433_129

def optimizedBody433_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_130

def optimizedBody433_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_42 optimizedBody433_131

def optimizedBody433_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_41 optimizedBody433_132

def optimizedBody433_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_40 optimizedBody433_133

def optimizedBody433_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_39 optimizedBody433_134

def optimizedBody433_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_38 optimizedBody433_135

def optimizedBody433_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_37 optimizedBody433_136

def optimizedBody433_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_36 optimizedBody433_137

def optimizedBody433_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_35 optimizedBody433_138

def optimizedBody433_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_34 optimizedBody433_139

def optimizedBody433_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_140

def optimizedBody433_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_141

def optimizedBody433_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_142

def optimizedBody433_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_33 optimizedBody433_143

def optimizedBody433_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_23 optimizedBody433_144

def optimizedBody433_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_32 optimizedBody433_145

def optimizedBody433_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_21 optimizedBody433_146

def optimizedBody433_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_0 optimizedBody433_147

def optimizedBody433_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_31 optimizedBody433_148

def optimizedBody433_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_19 optimizedBody433_149

def optimizedBody433_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_18 optimizedBody433_150

def optimizedBody433_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_151

def optimizedBody433_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_152

def optimizedBody433_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_153

def optimizedBody433_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_30 optimizedBody433_154

def optimizedBody433_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_23 optimizedBody433_155

def optimizedBody433_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_29 optimizedBody433_156

def optimizedBody433_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_21 optimizedBody433_157

def optimizedBody433_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_0 optimizedBody433_158

def optimizedBody433_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_28 optimizedBody433_159

def optimizedBody433_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_19 optimizedBody433_160

def optimizedBody433_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_18 optimizedBody433_161

def optimizedBody433_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_162

def optimizedBody433_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_163

def optimizedBody433_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_164

def optimizedBody433_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_27 optimizedBody433_165

def optimizedBody433_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_23 optimizedBody433_166

def optimizedBody433_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_26 optimizedBody433_167

def optimizedBody433_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_21 optimizedBody433_168

def optimizedBody433_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_0 optimizedBody433_169

def optimizedBody433_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_25 optimizedBody433_170

def optimizedBody433_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_19 optimizedBody433_171

def optimizedBody433_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_18 optimizedBody433_172

def optimizedBody433_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_173

def optimizedBody433_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_174

def optimizedBody433_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_175

def optimizedBody433_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_24 optimizedBody433_176

def optimizedBody433_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_23 optimizedBody433_177

def optimizedBody433_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_22 optimizedBody433_178

def optimizedBody433_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_21 optimizedBody433_179

def optimizedBody433_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_0 optimizedBody433_180

def optimizedBody433_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_20 optimizedBody433_181

def optimizedBody433_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_19 optimizedBody433_182

def optimizedBody433_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_18 optimizedBody433_183

def optimizedBody433_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_17 optimizedBody433_184

def optimizedBody433_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_16 optimizedBody433_185

def optimizedBody433_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_15 optimizedBody433_186

def optimizedBody433_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_14 optimizedBody433_187

def optimizedBody433_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_9 optimizedBody433_188

def optimizedBody433_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_8 optimizedBody433_189

def optimizedBody433_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_7 optimizedBody433_190

def optimizedBody433_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_6 optimizedBody433_191

def optimizedBody433_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_5 optimizedBody433_192

def optimizedBody433_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_4 optimizedBody433_193

def optimizedBody433_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_3 optimizedBody433_194

def optimizedBody433_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_2 optimizedBody433_195

def optimizedBody433_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_1 optimizedBody433_196

def optimizedBody433_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody433_0 optimizedBody433_197

def optimized433 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(433, 1, optimizedBody433_198)
end InitECandidate.Proofs.StackAnalysis
