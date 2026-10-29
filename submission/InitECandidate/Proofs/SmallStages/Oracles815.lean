import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source815
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles815
def optimizedBody815_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (50, 4), (54, 2)]

def optimizedBody815_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50), (54, 54)]

def optimizedBody815_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (54, 54)]

def optimizedBody815_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody815_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_2 optimizedBody815_3

def optimizedBody815_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_1, 815, 2)) (some 69) ([]) (some (2, optimizedBody815_4, 815, 3))

def optimizedBody815_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody815_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 288#64)

def optimizedBody815_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 0), (50, 50), (54, 54)]

def optimizedBody815_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (54, 54)]

def optimizedBody815_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (54, 54)]

def optimizedBody815_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_10 optimizedBody815_3

def optimizedBody815_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_9, 815, 4)) (some 68) ([2]) (some (2, optimizedBody815_11, 815, 5))

def optimizedBody815_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 384#64)

def optimizedBody815_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50), (54, 54)]

def optimizedBody815_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (6, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody815_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (48, 48), (0, 50), (54, 54)]

def optimizedBody815_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_16 optimizedBody815_3

def optimizedBody815_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_15, 815, 6)) (some 68) ([2]) (some (2, optimizedBody815_17, 815, 7))

def optimizedBody815_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody815_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody815_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody815_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 4), (44, 44), (46, 6), (48, 48), (50, 8), (52, 2), (54, 54), (56, 4), (58, 0)]

def optimizedBody815_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58)]

def optimizedBody815_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (4, 56), (58, 58)]

def optimizedBody815_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_24 optimizedBody815_3

def optimizedBody815_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_23, 815, 8)) (some 739) ([2, 4]) (some (2, optimizedBody815_25, 815, 9))

def optimizedBody815_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 4), (58, 58)]

def optimizedBody815_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (6, 56), (58, 58)]

def optimizedBody815_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (52, 52), (54, 54), (6, 56), (58, 58)]

def optimizedBody815_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_29 optimizedBody815_3

def optimizedBody815_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_28, 815, 10)) (some 751) ([2, 4]) (some (2, optimizedBody815_30, 815, 11))

def optimizedBody815_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody815_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody815_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 6), (58, 58)]

def optimizedBody815_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (10, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (8, 58)]

def optimizedBody815_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (48, 48), (0, 50), (52, 52), (54, 54), (56, 56), (8, 58)]

def optimizedBody815_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_36 optimizedBody815_3

def optimizedBody815_38 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_35, 815, 12)) (some 750) ([2, 4, 6]) (some (2, optimizedBody815_37, 815, 13))

def optimizedBody815_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody815_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody815_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody815_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody815_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody815_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 5600#64)

def optimizedBody815_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody815_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody815_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4#64)

def optimizedBody815_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 2), (52, 52), (54, 54), (56, 56),
    (58, 8)]

def optimizedBody815_49 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_35, 815, 14)) (some 814) ([2, 4, 6, 8, 10]) (some (2, optimizedBody815_37, 815, 15))

def optimizedBody815_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody815_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody815_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody815_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551104#64))

def optimizedBody815_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 5984#64)

def optimizedBody815_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody815_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56),
    (58, 8)]

def optimizedBody815_57 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_35, 815, 16)) (some 814) ([2, 4, 6, 8, 10]) (some (2, optimizedBody815_37, 815, 17))

def optimizedBody815_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6368#64)

def optimizedBody815_59 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_35, 815, 18)) (some 814) ([2, 4, 6, 8, 10]) (some (2, optimizedBody815_37, 815, 19))

def optimizedBody815_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody815_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6752#64)

def optimizedBody815_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 10), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56)]

def optimizedBody815_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (6, 52), (52, 54), (54, 56)]

def optimizedBody815_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (6, 52), (52, 54), (54, 56)]

def optimizedBody815_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_64 optimizedBody815_3

def optimizedBody815_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_63, 815, 20)) (some 814) ([2, 4, 6, 8, 10]) (some (2, optimizedBody815_65, 815, 21))

def optimizedBody815_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54)]

def optimizedBody815_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (6, 54)]

def optimizedBody815_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52), (6, 54)]

def optimizedBody815_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_69 optimizedBody815_3

def optimizedBody815_71 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody815_68, 815, 22)) (some 750) ([2, 4, 6]) (some (2, optimizedBody815_70, 815, 23))

def optimizedBody815_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody815_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody815_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (4, 50), (52, 52)]

def optimizedBody815_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50), (52, 52)]

def optimizedBody815_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_75 optimizedBody815_3

def optimizedBody815_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_74, 815, 24)) (some 750) ([2, 4, 6]) (some (2, optimizedBody815_76, 815, 25))

def optimizedBody815_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody815_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody815_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 48), (50, 4), (52, 52)]

def optimizedBody815_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (8, 50), (52, 52)]

def optimizedBody815_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (8, 50), (52, 52)]

def optimizedBody815_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_82 optimizedBody815_3

def optimizedBody815_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_81, 815, 26)) (some 750) ([2, 4, 6]) (some (2, optimizedBody815_83, 815, 27))

def optimizedBody815_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody815_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody815_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 8 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody815_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 8), (52, 52)]

def optimizedBody815_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48), (6, 50), (50, 52)]

def optimizedBody815_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (6, 50), (50, 52)]

def optimizedBody815_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_90 optimizedBody815_3

def optimizedBody815_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_89, 815, 28)) (some 750) ([2, 4, 6]) (some (2, optimizedBody815_91, 815, 29))

def optimizedBody815_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody815_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody815_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody815_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody815_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody815_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody815_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_98 optimizedBody815_3

def optimizedBody815_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_97, 815, 30)) (some 750) ([2, 4, 6]) (some (2, optimizedBody815_99, 815, 31))

def optimizedBody815_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody815_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody815_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody815_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_103 optimizedBody815_3

def optimizedBody815_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_102, 815, 32)) (some 792) ([2, 4]) (some (2, optimizedBody815_104, 815, 33))

def optimizedBody815_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody815_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody815_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody815_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_108 optimizedBody815_3

def optimizedBody815_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_107, 815, 34)) (some 70) ([2]) (some (2, optimizedBody815_109, 815, 35))

def optimizedBody815_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody815_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody815_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody815_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_112 optimizedBody815_113

def optimizedBody815_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_111 optimizedBody815_114

def optimizedBody815_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_115

def optimizedBody815_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_110 optimizedBody815_116

def optimizedBody815_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_106 optimizedBody815_117

def optimizedBody815_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_118

def optimizedBody815_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_105 optimizedBody815_119

def optimizedBody815_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_101 optimizedBody815_120

def optimizedBody815_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_121

def optimizedBody815_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_100 optimizedBody815_122

def optimizedBody815_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_96 optimizedBody815_123

def optimizedBody815_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_95 optimizedBody815_124

def optimizedBody815_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_93 optimizedBody815_125

def optimizedBody815_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_94 optimizedBody815_126

def optimizedBody815_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_93 optimizedBody815_127

def optimizedBody815_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_32 optimizedBody815_128

def optimizedBody815_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_129

def optimizedBody815_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_130

def optimizedBody815_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_92 optimizedBody815_131

def optimizedBody815_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_88 optimizedBody815_132

def optimizedBody815_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_87 optimizedBody815_133

def optimizedBody815_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_85 optimizedBody815_134

def optimizedBody815_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_86 optimizedBody815_135

def optimizedBody815_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_85 optimizedBody815_136

def optimizedBody815_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_20 optimizedBody815_137

def optimizedBody815_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_138

def optimizedBody815_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_139

def optimizedBody815_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_84 optimizedBody815_140

def optimizedBody815_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_80 optimizedBody815_141

def optimizedBody815_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_79 optimizedBody815_142

def optimizedBody815_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_78 optimizedBody815_143

def optimizedBody815_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_144

def optimizedBody815_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_77 optimizedBody815_145

def optimizedBody815_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_73 optimizedBody815_146

def optimizedBody815_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_72 optimizedBody815_147

def optimizedBody815_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_148

def optimizedBody815_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_149

def optimizedBody815_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_71 optimizedBody815_150

def optimizedBody815_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_67 optimizedBody815_151

def optimizedBody815_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_21 optimizedBody815_152

def optimizedBody815_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_153

def optimizedBody815_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_154

def optimizedBody815_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_66 optimizedBody815_155

def optimizedBody815_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_62 optimizedBody815_156

def optimizedBody815_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_47 optimizedBody815_157

def optimizedBody815_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_46 optimizedBody815_158

def optimizedBody815_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_55 optimizedBody815_159

def optimizedBody815_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_61 optimizedBody815_160

def optimizedBody815_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_53 optimizedBody815_161

def optimizedBody815_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_52 optimizedBody815_162

def optimizedBody815_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_51 optimizedBody815_163

def optimizedBody815_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_50 optimizedBody815_164

def optimizedBody815_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_60 optimizedBody815_165

def optimizedBody815_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_166

def optimizedBody815_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_167

def optimizedBody815_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_59 optimizedBody815_168

def optimizedBody815_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_56 optimizedBody815_169

def optimizedBody815_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_47 optimizedBody815_170

def optimizedBody815_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_46 optimizedBody815_171

def optimizedBody815_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_55 optimizedBody815_172

def optimizedBody815_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_58 optimizedBody815_173

def optimizedBody815_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_53 optimizedBody815_174

def optimizedBody815_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_52 optimizedBody815_175

def optimizedBody815_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_51 optimizedBody815_176

def optimizedBody815_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_50 optimizedBody815_177

def optimizedBody815_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_32 optimizedBody815_178

def optimizedBody815_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_179

def optimizedBody815_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_180

def optimizedBody815_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_57 optimizedBody815_181

def optimizedBody815_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_56 optimizedBody815_182

def optimizedBody815_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_47 optimizedBody815_183

def optimizedBody815_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_46 optimizedBody815_184

def optimizedBody815_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_55 optimizedBody815_185

def optimizedBody815_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_54 optimizedBody815_186

def optimizedBody815_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_53 optimizedBody815_187

def optimizedBody815_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_52 optimizedBody815_188

def optimizedBody815_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_51 optimizedBody815_189

def optimizedBody815_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_50 optimizedBody815_190

def optimizedBody815_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_20 optimizedBody815_191

def optimizedBody815_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_192

def optimizedBody815_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_193

def optimizedBody815_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_49 optimizedBody815_194

def optimizedBody815_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_48 optimizedBody815_195

def optimizedBody815_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_47 optimizedBody815_196

def optimizedBody815_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_46 optimizedBody815_197

def optimizedBody815_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_45 optimizedBody815_198

def optimizedBody815_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_44 optimizedBody815_199

def optimizedBody815_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_43 optimizedBody815_200

def optimizedBody815_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_201

def optimizedBody815_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_41 optimizedBody815_202

def optimizedBody815_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_40 optimizedBody815_203

def optimizedBody815_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_39 optimizedBody815_204

def optimizedBody815_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_205

def optimizedBody815_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_38 optimizedBody815_206

def optimizedBody815_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_34 optimizedBody815_207

def optimizedBody815_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_33 optimizedBody815_208

def optimizedBody815_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_209

def optimizedBody815_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_32 optimizedBody815_210

def optimizedBody815_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_211

def optimizedBody815_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_212

def optimizedBody815_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_31 optimizedBody815_213

def optimizedBody815_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_27 optimizedBody815_214

def optimizedBody815_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_20 optimizedBody815_215

def optimizedBody815_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_216

def optimizedBody815_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_217

def optimizedBody815_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_26 optimizedBody815_218

def optimizedBody815_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_22 optimizedBody815_219

def optimizedBody815_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_21 optimizedBody815_220

def optimizedBody815_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_221

def optimizedBody815_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_20 optimizedBody815_222

def optimizedBody815_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_223

def optimizedBody815_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_224

def optimizedBody815_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_18 optimizedBody815_225

def optimizedBody815_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_14 optimizedBody815_226

def optimizedBody815_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_13 optimizedBody815_227

def optimizedBody815_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_228

def optimizedBody815_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_12 optimizedBody815_229

def optimizedBody815_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_8 optimizedBody815_230

def optimizedBody815_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_7 optimizedBody815_231

def optimizedBody815_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_232

def optimizedBody815_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_5 optimizedBody815_233

def optimizedBody815_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_0 optimizedBody815_234

def oracle815 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 4 (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 0 (Flapjack.Spt.ls 4)))
                25
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                  24 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                1
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 0 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 27 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 27)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4)) 22
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 29 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
                27 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 25 Flapjack.Spt.ln) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 28 (Flapjack.Spt.ls 27))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 22 (Flapjack.Spt.ls 28)))
                24
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 24 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 26 Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                0
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 3 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 24 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24 Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22)) 29
                    (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 23 (Flapjack.Spt.ls 29)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 25
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 (Flapjack.Spt.ls 24))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.ls 27)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
              25
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 27 (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.ls 29))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 25 Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bs Flapjack.Spt.ln 23
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.ls 25))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))
              27
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 28 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 22 (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) 24
                (Flapjack.Spt.bs Flapjack.Spt.ln 24
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.ls 26)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)) 27
                (Flapjack.Spt.bs Flapjack.Spt.ln 27
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                  (Flapjack.Spt.ls 28))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 26)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 24 Flapjack.Spt.ln))
                (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                  (Flapjack.Spt.ls 24)))))))))
def optimized815 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(815, 3, optimizedBody815_235)
end InitECandidate.Proofs.SmallStages.Oracles815
