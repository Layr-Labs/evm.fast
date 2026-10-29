import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles435
def optimizedBody435_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody435_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody435_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody435_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody435_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551440#64))

def optimizedBody435_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody435_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody435_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551432#64))

def optimizedBody435_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody435_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody435_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody435_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody435_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody435_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_11 optimizedBody435_12

def optimizedBody435_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_10, 435, 2)) (some 434) ([2, 4]) (some (2, optimizedBody435_13, 435, 3))

def optimizedBody435_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody435_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody435_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody435_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody435_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody435_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody435_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody435_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody435_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody435_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_10, 435, 4)) (some 434) ([2, 4]) (some (2, optimizedBody435_13, 435, 5))

def optimizedBody435_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody435_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody435_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_10, 435, 6)) (some 434) ([2, 4]) (some (2, optimizedBody435_13, 435, 7))

def optimizedBody435_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody435_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody435_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_10, 435, 8)) (some 434) ([2, 4]) (some (2, optimizedBody435_13, 435, 9))

def optimizedBody435_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody435_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody435_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_10, 435, 10)) (some 434) ([2, 4]) (some (2, optimizedBody435_13, 435, 11))

def optimizedBody435_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 0

def optimizedBody435_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 18446744073709551432#64))

def optimizedBody435_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody435_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody435_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody435_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody435_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody435_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody435_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody435_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 0), (6, 6), (4, 4), (46, 2)]

def optimizedBody435_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody435_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 0), (48, 6), (50, 4), (52, 46)]

def optimizedBody435_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (10, 52)]

def optimizedBody435_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (10, 52)]

def optimizedBody435_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_47 optimizedBody435_12

def optimizedBody435_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_46, 435, 12)) (some 196) ([2, 4]) (some (2, optimizedBody435_48, 435, 13))

def optimizedBody435_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody435_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 44), (46, 46), (48, 48), (52, 6), (50, 50), (54, 4), (56, 10)]

def optimizedBody435_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 4), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (54, 54), (56, 56)]

def optimizedBody435_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (54, 54), (56, 56)]

def optimizedBody435_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_53 optimizedBody435_12

def optimizedBody435_55 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody435_52, 435, 14)) (some 186) ([2, 4]) (some (2, optimizedBody435_54, 435, 15))

def optimizedBody435_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody435_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody435_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody435_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (50, 48), (52, 52), (54, 50), (48, 54), (56, 56)]

def optimizedBody435_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (4, 48), (0, 56)]

def optimizedBody435_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (54, 54), (4, 48), (0, 56)]

def optimizedBody435_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_61 optimizedBody435_12

def optimizedBody435_63 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody435_60, 435, 16)) (some 182) ([2, 4]) (some (2, optimizedBody435_62, 435, 17))

def optimizedBody435_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 50), (52, 52), (54, 54), (56, 0)]

def optimizedBody435_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (48, 50), (4, 52), (50, 54), (52, 56)]

def optimizedBody435_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (48, 50), (4, 52), (50, 54), (52, 56)]

def optimizedBody435_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_66 optimizedBody435_12

def optimizedBody435_68 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody435_65, 435, 18)) (some 190) ([2, 4, 6]) (some (2, optimizedBody435_67, 435, 19))

def optimizedBody435_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 48), (4, 4), (50, 50), (52, 52)]

def optimizedBody435_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_69

def optimizedBody435_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_68 optimizedBody435_70

def optimizedBody435_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_64 optimizedBody435_71

def optimizedBody435_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_72

def optimizedBody435_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_63 optimizedBody435_73

def optimizedBody435_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_59 optimizedBody435_74

def optimizedBody435_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_58 optimizedBody435_75

def optimizedBody435_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_57 optimizedBody435_76

def optimizedBody435_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_77

def optimizedBody435_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (48, 48), (4, 52), (50, 50), (52, 56)]

def optimizedBody435_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_79

def optimizedBody435_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody435_78 optimizedBody435_80

def optimizedBody435_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody435_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (0, 46), (6, 48), (4, 50), (10, 52)]

def optimizedBody435_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48), (4, 50), (10, 52)]

def optimizedBody435_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_84 optimizedBody435_12

def optimizedBody435_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody435_83, 435, 20)) (some 434) ([2, 4]) (some (2, optimizedBody435_85, 435, 21))

def optimizedBody435_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (6, 6), (4, 4), (10, 10)]

def optimizedBody435_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_87

def optimizedBody435_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_86 optimizedBody435_88

def optimizedBody435_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_82 optimizedBody435_89

def optimizedBody435_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_90

def optimizedBody435_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_81 optimizedBody435_91

def optimizedBody435_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_50 optimizedBody435_92

def optimizedBody435_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_56 optimizedBody435_93

def optimizedBody435_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_94

def optimizedBody435_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_55 optimizedBody435_95

def optimizedBody435_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_51 optimizedBody435_96

def optimizedBody435_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_97

def optimizedBody435_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 44), (0, 46), (6, 48), (4, 50), (10, 10)]

def optimizedBody435_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_99

def optimizedBody435_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody435_98 optimizedBody435_100

def optimizedBody435_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody435_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (0, 0), (6, 6), (4, 4), (46, 10)]

def optimizedBody435_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody435_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_103 optimizedBody435_104

def optimizedBody435_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_102 optimizedBody435_105

def optimizedBody435_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_56 optimizedBody435_106

def optimizedBody435_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_107

def optimizedBody435_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_101 optimizedBody435_108

def optimizedBody435_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_50 optimizedBody435_109

def optimizedBody435_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_40 optimizedBody435_110

def optimizedBody435_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_111

def optimizedBody435_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_49 optimizedBody435_112

def optimizedBody435_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_45 optimizedBody435_113

def optimizedBody435_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_114

def optimizedBody435_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody435_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_116

def optimizedBody435_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody435_115 optimizedBody435_117

def optimizedBody435_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (0, 0), (6, 6), (4, 4), (46, 8)]

def optimizedBody435_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_119

def optimizedBody435_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_118 optimizedBody435_120

def optimizedBody435_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_44 optimizedBody435_121

def optimizedBody435_123 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody435_122 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody435_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody435_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody435_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_124 optimizedBody435_125

def optimizedBody435_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_50 optimizedBody435_126

def optimizedBody435_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_127

def optimizedBody435_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_123 optimizedBody435_128

def optimizedBody435_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_43 optimizedBody435_129

def optimizedBody435_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_130

def optimizedBody435_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_42 optimizedBody435_131

def optimizedBody435_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_41 optimizedBody435_132

def optimizedBody435_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_40 optimizedBody435_133

def optimizedBody435_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_39 optimizedBody435_134

def optimizedBody435_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_38 optimizedBody435_135

def optimizedBody435_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_37 optimizedBody435_136

def optimizedBody435_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_36 optimizedBody435_137

def optimizedBody435_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_35 optimizedBody435_138

def optimizedBody435_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_34 optimizedBody435_139

def optimizedBody435_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_17 optimizedBody435_140

def optimizedBody435_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_16 optimizedBody435_141

def optimizedBody435_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_142

def optimizedBody435_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_33 optimizedBody435_143

def optimizedBody435_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_23 optimizedBody435_144

def optimizedBody435_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_32 optimizedBody435_145

def optimizedBody435_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_21 optimizedBody435_146

def optimizedBody435_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_0 optimizedBody435_147

def optimizedBody435_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_31 optimizedBody435_148

def optimizedBody435_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_19 optimizedBody435_149

def optimizedBody435_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_18 optimizedBody435_150

def optimizedBody435_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_17 optimizedBody435_151

def optimizedBody435_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_16 optimizedBody435_152

def optimizedBody435_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_153

def optimizedBody435_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_30 optimizedBody435_154

def optimizedBody435_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_23 optimizedBody435_155

def optimizedBody435_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_29 optimizedBody435_156

def optimizedBody435_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_21 optimizedBody435_157

def optimizedBody435_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_0 optimizedBody435_158

def optimizedBody435_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_28 optimizedBody435_159

def optimizedBody435_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_19 optimizedBody435_160

def optimizedBody435_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_18 optimizedBody435_161

def optimizedBody435_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_17 optimizedBody435_162

def optimizedBody435_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_16 optimizedBody435_163

def optimizedBody435_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_164

def optimizedBody435_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_27 optimizedBody435_165

def optimizedBody435_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_23 optimizedBody435_166

def optimizedBody435_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_26 optimizedBody435_167

def optimizedBody435_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_21 optimizedBody435_168

def optimizedBody435_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_0 optimizedBody435_169

def optimizedBody435_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_25 optimizedBody435_170

def optimizedBody435_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_19 optimizedBody435_171

def optimizedBody435_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_18 optimizedBody435_172

def optimizedBody435_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_17 optimizedBody435_173

def optimizedBody435_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_16 optimizedBody435_174

def optimizedBody435_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_175

def optimizedBody435_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_24 optimizedBody435_176

def optimizedBody435_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_23 optimizedBody435_177

def optimizedBody435_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_22 optimizedBody435_178

def optimizedBody435_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_21 optimizedBody435_179

def optimizedBody435_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_0 optimizedBody435_180

def optimizedBody435_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_20 optimizedBody435_181

def optimizedBody435_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_19 optimizedBody435_182

def optimizedBody435_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_18 optimizedBody435_183

def optimizedBody435_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_17 optimizedBody435_184

def optimizedBody435_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_16 optimizedBody435_185

def optimizedBody435_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_15 optimizedBody435_186

def optimizedBody435_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_14 optimizedBody435_187

def optimizedBody435_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_9 optimizedBody435_188

def optimizedBody435_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_8 optimizedBody435_189

def optimizedBody435_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_7 optimizedBody435_190

def optimizedBody435_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_6 optimizedBody435_191

def optimizedBody435_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_5 optimizedBody435_192

def optimizedBody435_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_4 optimizedBody435_193

def optimizedBody435_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_3 optimizedBody435_194

def optimizedBody435_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_2 optimizedBody435_195

def optimizedBody435_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_1 optimizedBody435_196

def optimizedBody435_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody435_0 optimizedBody435_197

def oracle435 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 25 (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) 2
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 26)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                22
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 27)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 0 Flapjack.Spt.ln))
                1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                0 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 5))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 28)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 22))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln)))))))
def optimized435 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(435, 1, optimizedBody435_198)
end InitECandidate.Proofs.SmallStages.Oracles435
