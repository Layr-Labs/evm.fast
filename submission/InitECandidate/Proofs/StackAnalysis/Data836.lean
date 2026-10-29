import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody836_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody836_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody836_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody836_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 2

def optimizedBody836_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 18446744073709551360#64))

def optimizedBody836_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody836_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody836_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 88#64))

def optimizedBody836_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody836_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody836_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 18446744073709551344#64))

def optimizedBody836_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4), (2, 2)]

def optimizedBody836_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 96#64)

def optimizedBody836_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody836_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 0), (48, 4), (52, 2), (46, 10)]

def optimizedBody836_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (52, 52), (0, 46)]

def optimizedBody836_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52), (0, 46)]

def optimizedBody836_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody836_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_16 optimizedBody836_17

def optimizedBody836_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_15, 836, 2)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody836_18, 836, 3))

def optimizedBody836_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody836_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody836_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody836_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (52, 52), (46, 2)]

def optimizedBody836_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (8, 8), (44, 44), (48, 48), (52, 52), (46, 46)]

def optimizedBody836_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52), (46, 46)]

def optimizedBody836_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_25 optimizedBody836_17

def optimizedBody836_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_24, 836, 4)) (some 146) ([2, 4]) (some (2, optimizedBody836_26, 836, 5))

def optimizedBody836_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (52, 52), (46, 46)]

def optimizedBody836_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (52, 52), (6, 46)]

def optimizedBody836_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (52, 52), (6, 46)]

def optimizedBody836_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_30 optimizedBody836_17

def optimizedBody836_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_29, 836, 6)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody836_31, 836, 7))

def optimizedBody836_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1024#64)

def optimizedBody836_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody836_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody836_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody836_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody836_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody836_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody836_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_39 optimizedBody836_17

def optimizedBody836_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_38 optimizedBody836_40

def optimizedBody836_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_37 optimizedBody836_41

def optimizedBody836_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_36 optimizedBody836_42

def optimizedBody836_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_35 optimizedBody836_43

def optimizedBody836_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_44

def optimizedBody836_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody836_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody836_45 optimizedBody836_46

def optimizedBody836_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody836_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody836_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (50, 0), (52, 52), (46, 6)]

def optimizedBody836_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 2), (4, 4), (8, 8), (44, 44), (48, 48), (50, 50), (52, 52), (46, 46)]

def optimizedBody836_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (46, 46)]

def optimizedBody836_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_52 optimizedBody836_17

def optimizedBody836_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_51, 836, 8)) (some 146) ([2, 4]) (some (2, optimizedBody836_53, 836, 9))

def optimizedBody836_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (50, 50), (52, 52), (46, 46)]

def optimizedBody836_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (52, 52), (6, 46)]

def optimizedBody836_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (6, 46)]

def optimizedBody836_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_57 optimizedBody836_17

def optimizedBody836_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_56, 836, 10)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody836_58, 836, 11))

def optimizedBody836_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody836_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 48), (46, 0), (50, 50), (52, 52), (56, 6)]

def optimizedBody836_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (0, 2), (4, 4), (6, 6), (44, 44), (48, 48), (46, 46), (50, 50), (52, 52), (56, 56)]

def optimizedBody836_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 50), (52, 52), (56, 56)]

def optimizedBody836_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_63 optimizedBody836_17

def optimizedBody836_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_62, 836, 12)) (some 146) ([2, 4]) (some (2, optimizedBody836_64, 836, 13))

def optimizedBody836_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (46, 46), (50, 50), (52, 52), (56, 56)]

def optimizedBody836_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (4, 46), (6, 50), (52, 52), (56, 56)]

def optimizedBody836_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (4, 46), (6, 50), (52, 52), (56, 56)]

def optimizedBody836_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_68 optimizedBody836_17

def optimizedBody836_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_67, 836, 14)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody836_69, 836, 15))

def optimizedBody836_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody836_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody836_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 4), (54, 6), (52, 52), (56, 56), (58, 8)]

def optimizedBody836_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (46, 46), (4, 48), (50, 50), (54, 54), (0, 52), (10, 56), (6, 58)]

def optimizedBody836_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50), (54, 54), (0, 52), (10, 56), (6, 58)]

def optimizedBody836_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_75 optimizedBody836_17

def optimizedBody836_77 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody836_74, 836, 16)) (some 92) ([2, 4]) (some (2, optimizedBody836_76, 836, 17))

def optimizedBody836_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 8), (52, 4), (50, 50), (54, 54), (58, 0),
    (56, 10), (64, 6)]

def optimizedBody836_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (52, 52), (48, 50), (50, 54), (58, 58), (0, 56), (64, 64)]

def optimizedBody836_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (4, 48), (52, 52), (48, 50), (50, 54), (58, 58), (0, 56), (64, 64)]

def optimizedBody836_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_80 optimizedBody836_17

def optimizedBody836_82 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_79, 836, 18)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody836_81, 836, 19))

def optimizedBody836_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (58, 58), (64, 64)]

def optimizedBody836_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 6), (10, 4), (8, 2), (14, 8), (44, 44), (4, 46), (52, 52), (6, 48), (0, 50), (58, 58), (64, 64)]

def optimizedBody836_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (52, 52), (6, 48), (0, 50), (58, 58), (64, 64)]

def optimizedBody836_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_85 optimizedBody836_17

def optimizedBody836_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_84, 836, 20)) (some 146) ([2, 4]) (some (2, optimizedBody836_86, 836, 21))

def optimizedBody836_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 4), (52, 52), (48, 6), (50, 0),
    (58, 58), (64, 64)]

def optimizedBody836_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (58, 58), (64, 64)]

def optimizedBody836_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (58, 58), (64, 64)]

def optimizedBody836_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_90 optimizedBody836_17

def optimizedBody836_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_89, 836, 22)) (some 835) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody836_91, 836, 23))

def optimizedBody836_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (52, 52), (48, 48), (50, 50), (58, 58), (64, 64)]

def optimizedBody836_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (52, 52), (48, 48), (4, 50), (58, 58), (64, 64)]

def optimizedBody836_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (52, 52), (48, 48), (4, 50), (58, 58), (64, 64)]

def optimizedBody836_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_95 optimizedBody836_17

def optimizedBody836_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_94, 836, 24)) (some 470) ([2]) (some (2, optimizedBody836_96, 836, 25))

def optimizedBody836_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody836_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody836_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_99 optimizedBody836_9

def optimizedBody836_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_100

def optimizedBody836_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_13 optimizedBody836_9

def optimizedBody836_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_102

def optimizedBody836_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody836_101 optimizedBody836_103

def optimizedBody836_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody836_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_105 optimizedBody836_39

def optimizedBody836_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_106

def optimizedBody836_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_98 optimizedBody836_39

def optimizedBody836_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_108

def optimizedBody836_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody836_107 optimizedBody836_109

def optimizedBody836_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody836_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody836_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44)]

def optimizedBody836_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 46)]

def optimizedBody836_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 46)]

def optimizedBody836_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_115 optimizedBody836_17

def optimizedBody836_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_114, 836, 26)) (some 68) ([2]) (some (2, optimizedBody836_116, 836, 27))

def optimizedBody836_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody836_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody836_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody836_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody836_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody836_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody836_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody836_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody836_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody836_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody836_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_36 optimizedBody836_127

def optimizedBody836_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_98 optimizedBody836_128

def optimizedBody836_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_126 optimizedBody836_129

def optimizedBody836_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_36 optimizedBody836_130

def optimizedBody836_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_125 optimizedBody836_131

def optimizedBody836_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_124 optimizedBody836_132

def optimizedBody836_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_123 optimizedBody836_133

def optimizedBody836_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_39 optimizedBody836_134

def optimizedBody836_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_122 optimizedBody836_135

def optimizedBody836_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_121 optimizedBody836_136

def optimizedBody836_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_120 optimizedBody836_137

def optimizedBody836_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_119 optimizedBody836_138

def optimizedBody836_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_118 optimizedBody836_139

def optimizedBody836_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_2 optimizedBody836_140

def optimizedBody836_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_1 optimizedBody836_141

def optimizedBody836_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_142

def optimizedBody836_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_117 optimizedBody836_143

def optimizedBody836_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_113 optimizedBody836_144

def optimizedBody836_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_38 optimizedBody836_145

def optimizedBody836_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (52, 52), (48, 48), (54, 4), (58, 58), (64, 64), (44, 44)]

def optimizedBody836_148 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody836_146 optimizedBody836_147

def optimizedBody836_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody836_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (52, 52), (48, 48), (54, 54), (58, 58), (64, 64)]

def optimizedBody836_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (52, 52), (48, 48), (54, 54), (58, 58), (64, 64)]

def optimizedBody836_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (52, 52), (48, 48), (54, 54), (58, 58), (64, 64)]

def optimizedBody836_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_152 optimizedBody836_17

def optimizedBody836_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_151, 836, 28)) (some 68) ([2]) (some (2, optimizedBody836_153, 836, 29))

def optimizedBody836_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (50, 0), (52, 52), (48, 48), (54, 54), (58, 58), (64, 64)]

def optimizedBody836_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (50, 50), (52, 52), (48, 48), (0, 54), (58, 58), (64, 64)]

def optimizedBody836_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (48, 48), (0, 54), (58, 58), (64, 64)]

def optimizedBody836_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_157 optimizedBody836_17

def optimizedBody836_159 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_156, 836, 30)) (some 69) ([]) (some (2, optimizedBody836_158, 836, 31))

def optimizedBody836_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (48, 48), (56, 0), (58, 58), (62, 4), (64, 64)]

def optimizedBody836_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (50, 50), (52, 52), (0, 48), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody836_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (0, 48), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody836_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_162 optimizedBody836_17

def optimizedBody836_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_161, 836, 32)) (some 68) ([2]) (some (2, optimizedBody836_163, 836, 33))

def optimizedBody836_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52), (54, 0), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody836_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody836_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody836_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_167 optimizedBody836_17

def optimizedBody836_169 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_166, 836, 34)) (some 68) ([2]) (some (2, optimizedBody836_168, 836, 35))

def optimizedBody836_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62), (64, 64), (66, 4)]

def optimizedBody836_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 2), (44, 44), (46, 46), (10, 48), (50, 50), (4, 52), (54, 54), (8, 56), (0, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody836_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (10, 48), (50, 50), (4, 52), (54, 54), (8, 56), (0, 58), (62, 62), (64, 64), (66, 66)]

def optimizedBody836_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_172 optimizedBody836_17

def optimizedBody836_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_171, 836, 36)) (some 68) ([2]) (some (2, optimizedBody836_173, 836, 37))

def optimizedBody836_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8), (4, 4), (2, 0)]

def optimizedBody836_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 96#64)

def optimizedBody836_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 10), (50, 50), (52, 4), (54, 54), (56, 8),
    (58, 2), (60, 12), (62, 62), (64, 64), (66, 66)]

def optimizedBody836_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (8, 54), (56, 56), (0, 58), (60, 60), (62, 62), (6, 64), (10, 66)]

def optimizedBody836_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (8, 54), (56, 56), (0, 58), (60, 60), (62, 62), (6, 64),
    (10, 66)]

def optimizedBody836_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_179 optimizedBody836_17

def optimizedBody836_181 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody836_178, 836, 38)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody836_180, 836, 39))

def optimizedBody836_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 4), (54, 8), (56, 56),
    (58, 0), (60, 60), (62, 62), (64, 6), (66, 10)]

def optimizedBody836_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (8, 46), (48, 48), (50, 50), (4, 52), (0, 54), (54, 56), (12, 58), (10, 60), (58, 62), (6, 64), (60, 66)]

def optimizedBody836_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (8, 46), (48, 48), (50, 50), (4, 52), (0, 54), (54, 56), (12, 58), (10, 60), (58, 62), (6, 64),
    (60, 66)]

def optimizedBody836_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_184 optimizedBody836_17

def optimizedBody836_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody836_183, 836, 40)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody836_185, 836, 41))

def optimizedBody836_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0), (4, 4), (2, 12)]

def optimizedBody836_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody836_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 8), (48, 48), (50, 50), (52, 0), (54, 54), (56, 10),
    (58, 58), (60, 60)]

def optimizedBody836_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (0, 48), (14, 50), (8, 52), (4, 54), (10, 56), (50, 58), (6, 60)]

def optimizedBody836_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (0, 48), (14, 50), (8, 52), (4, 54), (10, 56), (50, 58), (6, 60)]

def optimizedBody836_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_191 optimizedBody836_17

def optimizedBody836_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody836_190, 836, 42)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody836_192, 836, 43))

def optimizedBody836_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 12), (48, 14), (50, 50)]

def optimizedBody836_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody836_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody836_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_196 optimizedBody836_17

def optimizedBody836_198 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_195, 836, 44)) (some 641) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody836_197, 836, 45))

def optimizedBody836_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody836_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (0, 46), (4, 48)]

def optimizedBody836_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody836_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_201 optimizedBody836_17

def optimizedBody836_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_200, 836, 46)) (some 70) ([2]) (some (2, optimizedBody836_202, 836, 47))

def optimizedBody836_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody836_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody836_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_205 optimizedBody836_129

def optimizedBody836_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_204 optimizedBody836_206

def optimizedBody836_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_124 optimizedBody836_207

def optimizedBody836_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_123 optimizedBody836_208

def optimizedBody836_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_39 optimizedBody836_209

def optimizedBody836_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_122 optimizedBody836_210

def optimizedBody836_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_121 optimizedBody836_211

def optimizedBody836_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_120 optimizedBody836_212

def optimizedBody836_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_119 optimizedBody836_213

def optimizedBody836_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_118 optimizedBody836_214

def optimizedBody836_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_2 optimizedBody836_215

def optimizedBody836_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_1 optimizedBody836_216

def optimizedBody836_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_217

def optimizedBody836_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_203 optimizedBody836_218

def optimizedBody836_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_199 optimizedBody836_219

def optimizedBody836_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_220

def optimizedBody836_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_198 optimizedBody836_221

def optimizedBody836_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_194 optimizedBody836_222

def optimizedBody836_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_223

def optimizedBody836_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_193 optimizedBody836_224

def optimizedBody836_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_189 optimizedBody836_225

def optimizedBody836_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_188 optimizedBody836_226

def optimizedBody836_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_187 optimizedBody836_227

def optimizedBody836_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_228

def optimizedBody836_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_186 optimizedBody836_229

def optimizedBody836_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_182 optimizedBody836_230

def optimizedBody836_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_231

def optimizedBody836_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_181 optimizedBody836_232

def optimizedBody836_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_177 optimizedBody836_233

def optimizedBody836_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_176 optimizedBody836_234

def optimizedBody836_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_175 optimizedBody836_235

def optimizedBody836_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_236

def optimizedBody836_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_174 optimizedBody836_237

def optimizedBody836_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_170 optimizedBody836_238

def optimizedBody836_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_149 optimizedBody836_239

def optimizedBody836_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_240

def optimizedBody836_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_241

def optimizedBody836_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_169 optimizedBody836_242

def optimizedBody836_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_165 optimizedBody836_243

def optimizedBody836_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_149 optimizedBody836_244

def optimizedBody836_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_245

def optimizedBody836_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_246

def optimizedBody836_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_164 optimizedBody836_247

def optimizedBody836_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_160 optimizedBody836_248

def optimizedBody836_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_149 optimizedBody836_249

def optimizedBody836_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_250

def optimizedBody836_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_251

def optimizedBody836_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_159 optimizedBody836_252

def optimizedBody836_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_155 optimizedBody836_253

def optimizedBody836_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_254

def optimizedBody836_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_154 optimizedBody836_255

def optimizedBody836_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_150 optimizedBody836_256

def optimizedBody836_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_149 optimizedBody836_257

def optimizedBody836_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_258

def optimizedBody836_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_259

def optimizedBody836_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_148 optimizedBody836_260

def optimizedBody836_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_112 optimizedBody836_261

def optimizedBody836_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_111 optimizedBody836_262

def optimizedBody836_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_263

def optimizedBody836_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_110 optimizedBody836_264

def optimizedBody836_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_98 optimizedBody836_265

def optimizedBody836_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_266

def optimizedBody836_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_267

def optimizedBody836_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_104 optimizedBody836_268

def optimizedBody836_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_98 optimizedBody836_269

def optimizedBody836_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_6 optimizedBody836_270

def optimizedBody836_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_271

def optimizedBody836_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_97 optimizedBody836_272

def optimizedBody836_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_93 optimizedBody836_273

def optimizedBody836_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_274

def optimizedBody836_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_92 optimizedBody836_275

def optimizedBody836_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_88 optimizedBody836_276

def optimizedBody836_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_277

def optimizedBody836_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_87 optimizedBody836_278

def optimizedBody836_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_83 optimizedBody836_279

def optimizedBody836_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_280

def optimizedBody836_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_82 optimizedBody836_281

def optimizedBody836_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_78 optimizedBody836_282

def optimizedBody836_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_283

def optimizedBody836_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_77 optimizedBody836_284

def optimizedBody836_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_73 optimizedBody836_285

def optimizedBody836_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_72 optimizedBody836_286

def optimizedBody836_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_6 optimizedBody836_287

def optimizedBody836_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_71 optimizedBody836_288

def optimizedBody836_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_48 optimizedBody836_289

def optimizedBody836_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_290

def optimizedBody836_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_291

def optimizedBody836_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_47 optimizedBody836_292

def optimizedBody836_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_293

def optimizedBody836_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_33 optimizedBody836_294

def optimizedBody836_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_295

def optimizedBody836_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_70 optimizedBody836_296

def optimizedBody836_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_66 optimizedBody836_297

def optimizedBody836_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_298

def optimizedBody836_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_65 optimizedBody836_299

def optimizedBody836_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_61 optimizedBody836_300

def optimizedBody836_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_22 optimizedBody836_301

def optimizedBody836_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_60 optimizedBody836_302

def optimizedBody836_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_48 optimizedBody836_303

def optimizedBody836_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_304

def optimizedBody836_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_305

def optimizedBody836_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_47 optimizedBody836_306

def optimizedBody836_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_307

def optimizedBody836_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_33 optimizedBody836_308

def optimizedBody836_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_309

def optimizedBody836_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_59 optimizedBody836_310

def optimizedBody836_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_55 optimizedBody836_311

def optimizedBody836_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_312

def optimizedBody836_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_54 optimizedBody836_313

def optimizedBody836_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_50 optimizedBody836_314

def optimizedBody836_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_22 optimizedBody836_315

def optimizedBody836_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_49 optimizedBody836_316

def optimizedBody836_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_48 optimizedBody836_317

def optimizedBody836_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_318

def optimizedBody836_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_319

def optimizedBody836_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_47 optimizedBody836_320

def optimizedBody836_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_321

def optimizedBody836_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_33 optimizedBody836_322

def optimizedBody836_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_323

def optimizedBody836_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_32 optimizedBody836_324

def optimizedBody836_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_28 optimizedBody836_325

def optimizedBody836_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_326

def optimizedBody836_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_27 optimizedBody836_327

def optimizedBody836_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_23 optimizedBody836_328

def optimizedBody836_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_22 optimizedBody836_329

def optimizedBody836_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_21 optimizedBody836_330

def optimizedBody836_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_20 optimizedBody836_331

def optimizedBody836_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_19 optimizedBody836_332

def optimizedBody836_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_14 optimizedBody836_333

def optimizedBody836_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_13 optimizedBody836_334

def optimizedBody836_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_12 optimizedBody836_335

def optimizedBody836_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_11 optimizedBody836_336

def optimizedBody836_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_337

def optimizedBody836_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_9 optimizedBody836_338

def optimizedBody836_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_8 optimizedBody836_339

def optimizedBody836_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_6 optimizedBody836_340

def optimizedBody836_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_7 optimizedBody836_341

def optimizedBody836_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_6 optimizedBody836_342

def optimizedBody836_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_5 optimizedBody836_343

def optimizedBody836_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_4 optimizedBody836_344

def optimizedBody836_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_3 optimizedBody836_345

def optimizedBody836_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_2 optimizedBody836_346

def optimizedBody836_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_1 optimizedBody836_347

def optimizedBody836_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_0 optimizedBody836_348

def optimized836 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(836, 1, optimizedBody836_349)
end InitECandidate.Proofs.StackAnalysis
