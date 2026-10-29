import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles773
def optimizedBody773_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody773_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48)]

def optimizedBody773_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody773_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody773_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_2 optimizedBody773_3

def optimizedBody773_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_1, 773, 2)) (some 749) ([2, 4]) (some (2, optimizedBody773_4, 773, 3))

def optimizedBody773_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody773_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody773_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody773_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody773_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody773_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody773_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody773_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody773_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_13 optimizedBody773_3

def optimizedBody773_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_12, 773, 4)) (some 749) ([2, 4]) (some (2, optimizedBody773_14, 773, 5))

def optimizedBody773_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 0)]

def optimizedBody773_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody773_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody773_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody773_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551104#64))

def optimizedBody773_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 960#64)))

def optimizedBody773_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody773_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_1, 773, 6)) (some 750) ([2, 4, 6]) (some (2, optimizedBody773_4, 773, 7))

def optimizedBody773_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody773_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody773_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_12, 773, 8)) (some 749) ([2, 4]) (some (2, optimizedBody773_14, 773, 9))

def optimizedBody773_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1152#64)))

def optimizedBody773_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_1, 773, 10)) (some 750) ([2, 4, 6]) (some (2, optimizedBody773_4, 773, 11))

def optimizedBody773_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody773_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody773_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_12, 773, 12)) (some 749) ([2, 4]) (some (2, optimizedBody773_14, 773, 13))

def optimizedBody773_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 864#64)))

def optimizedBody773_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_1, 773, 14)) (some 750) ([2, 4, 6]) (some (2, optimizedBody773_4, 773, 15))

def optimizedBody773_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody773_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody773_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_12, 773, 16)) (some 749) ([2, 4]) (some (2, optimizedBody773_14, 773, 17))

def optimizedBody773_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1056#64)))

def optimizedBody773_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody773_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody773_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_39 optimizedBody773_3

def optimizedBody773_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_38, 773, 18)) (some 750) ([2, 4, 6]) (some (2, optimizedBody773_40, 773, 19))

def optimizedBody773_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody773_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody773_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody773_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody773_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody773_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody773_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_47 optimizedBody773_3

def optimizedBody773_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_46, 773, 20)) (some 749) ([2, 4]) (some (2, optimizedBody773_48, 773, 21))

def optimizedBody773_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody773_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1248#64)))

def optimizedBody773_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44)]

def optimizedBody773_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody773_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody773_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_54 optimizedBody773_3

def optimizedBody773_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody773_53, 773, 22)) (some 750) ([2, 4, 6]) (some (2, optimizedBody773_55, 773, 23))

def optimizedBody773_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody773_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody773_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody773_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_58 optimizedBody773_59

def optimizedBody773_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_57 optimizedBody773_60

def optimizedBody773_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_61

def optimizedBody773_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_56 optimizedBody773_62

def optimizedBody773_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_52 optimizedBody773_63

def optimizedBody773_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_51 optimizedBody773_64

def optimizedBody773_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_20 optimizedBody773_65

def optimizedBody773_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_19 optimizedBody773_66

def optimizedBody773_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_18 optimizedBody773_67

def optimizedBody773_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_17 optimizedBody773_68

def optimizedBody773_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_43 optimizedBody773_69

def optimizedBody773_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_50 optimizedBody773_70

def optimizedBody773_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_71

def optimizedBody773_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_72

def optimizedBody773_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_49 optimizedBody773_73

def optimizedBody773_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_45 optimizedBody773_74

def optimizedBody773_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_44 optimizedBody773_75

def optimizedBody773_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_43 optimizedBody773_76

def optimizedBody773_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_42 optimizedBody773_77

def optimizedBody773_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_78

def optimizedBody773_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_79

def optimizedBody773_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_41 optimizedBody773_80

def optimizedBody773_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_22 optimizedBody773_81

def optimizedBody773_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_37 optimizedBody773_82

def optimizedBody773_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_20 optimizedBody773_83

def optimizedBody773_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_19 optimizedBody773_84

def optimizedBody773_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_18 optimizedBody773_85

def optimizedBody773_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_17 optimizedBody773_86

def optimizedBody773_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_87

def optimizedBody773_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_35 optimizedBody773_88

def optimizedBody773_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_89

def optimizedBody773_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_90

def optimizedBody773_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_36 optimizedBody773_91

def optimizedBody773_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_11 optimizedBody773_92

def optimizedBody773_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_35 optimizedBody773_93

def optimizedBody773_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_94

def optimizedBody773_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_34 optimizedBody773_95

def optimizedBody773_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_7 optimizedBody773_96

def optimizedBody773_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_97

def optimizedBody773_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_33 optimizedBody773_98

def optimizedBody773_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_22 optimizedBody773_99

def optimizedBody773_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_32 optimizedBody773_100

def optimizedBody773_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_20 optimizedBody773_101

def optimizedBody773_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_19 optimizedBody773_102

def optimizedBody773_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_18 optimizedBody773_103

def optimizedBody773_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_17 optimizedBody773_104

def optimizedBody773_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_105

def optimizedBody773_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_30 optimizedBody773_106

def optimizedBody773_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_107

def optimizedBody773_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_108

def optimizedBody773_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_31 optimizedBody773_109

def optimizedBody773_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_11 optimizedBody773_110

def optimizedBody773_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_30 optimizedBody773_111

def optimizedBody773_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_112

def optimizedBody773_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_29 optimizedBody773_113

def optimizedBody773_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_7 optimizedBody773_114

def optimizedBody773_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_115

def optimizedBody773_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_28 optimizedBody773_116

def optimizedBody773_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_22 optimizedBody773_117

def optimizedBody773_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_27 optimizedBody773_118

def optimizedBody773_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_20 optimizedBody773_119

def optimizedBody773_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_19 optimizedBody773_120

def optimizedBody773_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_18 optimizedBody773_121

def optimizedBody773_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_17 optimizedBody773_122

def optimizedBody773_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_123

def optimizedBody773_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_25 optimizedBody773_124

def optimizedBody773_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_125

def optimizedBody773_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_126

def optimizedBody773_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_26 optimizedBody773_127

def optimizedBody773_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_11 optimizedBody773_128

def optimizedBody773_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_25 optimizedBody773_129

def optimizedBody773_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_130

def optimizedBody773_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_24 optimizedBody773_131

def optimizedBody773_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_7 optimizedBody773_132

def optimizedBody773_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_133

def optimizedBody773_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_23 optimizedBody773_134

def optimizedBody773_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_22 optimizedBody773_135

def optimizedBody773_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_21 optimizedBody773_136

def optimizedBody773_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_20 optimizedBody773_137

def optimizedBody773_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_19 optimizedBody773_138

def optimizedBody773_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_18 optimizedBody773_139

def optimizedBody773_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_17 optimizedBody773_140

def optimizedBody773_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_16 optimizedBody773_141

def optimizedBody773_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_10 optimizedBody773_142

def optimizedBody773_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_143

def optimizedBody773_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_144

def optimizedBody773_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_15 optimizedBody773_145

def optimizedBody773_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_11 optimizedBody773_146

def optimizedBody773_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_10 optimizedBody773_147

def optimizedBody773_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_9 optimizedBody773_148

def optimizedBody773_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_8 optimizedBody773_149

def optimizedBody773_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_7 optimizedBody773_150

def optimizedBody773_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_6 optimizedBody773_151

def optimizedBody773_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_5 optimizedBody773_152

def optimizedBody773_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody773_0 optimizedBody773_153

def oracle773 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 3 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 2)) 23
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))
              22
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24))))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
                3 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 1 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)) 22
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))))))
def optimized773 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(773, 3, optimizedBody773_154)
end InitECandidate.Proofs.SmallStages.Oracles773
