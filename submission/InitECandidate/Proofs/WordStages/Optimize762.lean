import InitECandidate.Proofs.WordStages.Optimize746
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source762
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody762_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody762_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48)]

def optimizedBody762_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody762_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody762_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_2 optimizedBody762_3

def optimizedBody762_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_1, 762, 2)) (some 738) ([2, 4]) (some (2, optimizedBody762_4, 762, 3))

def optimizedBody762_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody762_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody762_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody762_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody762_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody762_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody762_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48)]

def optimizedBody762_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody762_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_13 optimizedBody762_3

def optimizedBody762_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_12, 762, 4)) (some 738) ([2, 4]) (some (2, optimizedBody762_14, 762, 5))

def optimizedBody762_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 0)]

def optimizedBody762_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody762_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody762_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody762_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551224#64))

def optimizedBody762_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 960#64)))

def optimizedBody762_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody762_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_1, 762, 6)) (some 739) ([2, 4, 6]) (some (2, optimizedBody762_4, 762, 7))

def optimizedBody762_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody762_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody762_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_12, 762, 8)) (some 738) ([2, 4]) (some (2, optimizedBody762_14, 762, 9))

def optimizedBody762_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1152#64)))

def optimizedBody762_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_1, 762, 10)) (some 739) ([2, 4, 6]) (some (2, optimizedBody762_4, 762, 11))

def optimizedBody762_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody762_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 288#64)))

def optimizedBody762_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_12, 762, 12)) (some 738) ([2, 4]) (some (2, optimizedBody762_14, 762, 13))

def optimizedBody762_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 864#64)))

def optimizedBody762_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_1, 762, 14)) (some 739) ([2, 4, 6]) (some (2, optimizedBody762_4, 762, 15))

def optimizedBody762_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody762_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody762_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_12, 762, 16)) (some 738) ([2, 4]) (some (2, optimizedBody762_14, 762, 17))

def optimizedBody762_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1056#64)))

def optimizedBody762_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody762_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody762_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_39 optimizedBody762_3

def optimizedBody762_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_38, 762, 18)) (some 739) ([2, 4, 6]) (some (2, optimizedBody762_40, 762, 19))

def optimizedBody762_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody762_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody762_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody762_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody762_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody762_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody762_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_47 optimizedBody762_3

def optimizedBody762_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_46, 762, 20)) (some 738) ([2, 4]) (some (2, optimizedBody762_48, 762, 21))

def optimizedBody762_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 480#64)))

def optimizedBody762_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 1248#64)))

def optimizedBody762_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44)]

def optimizedBody762_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody762_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody762_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_54 optimizedBody762_3

def optimizedBody762_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody762_53, 762, 22)) (some 739) ([2, 4, 6]) (some (2, optimizedBody762_55, 762, 23))

def optimizedBody762_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody762_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody762_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody762_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_58 optimizedBody762_59

def optimizedBody762_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_57 optimizedBody762_60

def optimizedBody762_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_61

def optimizedBody762_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_56 optimizedBody762_62

def optimizedBody762_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_52 optimizedBody762_63

def optimizedBody762_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_51 optimizedBody762_64

def optimizedBody762_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_20 optimizedBody762_65

def optimizedBody762_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_19 optimizedBody762_66

def optimizedBody762_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_18 optimizedBody762_67

def optimizedBody762_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_17 optimizedBody762_68

def optimizedBody762_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_43 optimizedBody762_69

def optimizedBody762_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_50 optimizedBody762_70

def optimizedBody762_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_71

def optimizedBody762_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_72

def optimizedBody762_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_49 optimizedBody762_73

def optimizedBody762_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_45 optimizedBody762_74

def optimizedBody762_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_44 optimizedBody762_75

def optimizedBody762_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_43 optimizedBody762_76

def optimizedBody762_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_42 optimizedBody762_77

def optimizedBody762_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_78

def optimizedBody762_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_79

def optimizedBody762_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_41 optimizedBody762_80

def optimizedBody762_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_22 optimizedBody762_81

def optimizedBody762_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_37 optimizedBody762_82

def optimizedBody762_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_20 optimizedBody762_83

def optimizedBody762_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_19 optimizedBody762_84

def optimizedBody762_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_18 optimizedBody762_85

def optimizedBody762_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_17 optimizedBody762_86

def optimizedBody762_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_16 optimizedBody762_87

def optimizedBody762_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_35 optimizedBody762_88

def optimizedBody762_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_89

def optimizedBody762_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_90

def optimizedBody762_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_36 optimizedBody762_91

def optimizedBody762_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_11 optimizedBody762_92

def optimizedBody762_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_35 optimizedBody762_93

def optimizedBody762_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_94

def optimizedBody762_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_34 optimizedBody762_95

def optimizedBody762_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_7 optimizedBody762_96

def optimizedBody762_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_97

def optimizedBody762_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_33 optimizedBody762_98

def optimizedBody762_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_22 optimizedBody762_99

def optimizedBody762_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_32 optimizedBody762_100

def optimizedBody762_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_20 optimizedBody762_101

def optimizedBody762_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_19 optimizedBody762_102

def optimizedBody762_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_18 optimizedBody762_103

def optimizedBody762_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_17 optimizedBody762_104

def optimizedBody762_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_16 optimizedBody762_105

def optimizedBody762_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_30 optimizedBody762_106

def optimizedBody762_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_107

def optimizedBody762_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_108

def optimizedBody762_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_31 optimizedBody762_109

def optimizedBody762_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_11 optimizedBody762_110

def optimizedBody762_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_30 optimizedBody762_111

def optimizedBody762_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_112

def optimizedBody762_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_29 optimizedBody762_113

def optimizedBody762_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_7 optimizedBody762_114

def optimizedBody762_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_115

def optimizedBody762_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_28 optimizedBody762_116

def optimizedBody762_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_22 optimizedBody762_117

def optimizedBody762_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_27 optimizedBody762_118

def optimizedBody762_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_20 optimizedBody762_119

def optimizedBody762_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_19 optimizedBody762_120

def optimizedBody762_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_18 optimizedBody762_121

def optimizedBody762_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_17 optimizedBody762_122

def optimizedBody762_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_16 optimizedBody762_123

def optimizedBody762_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_25 optimizedBody762_124

def optimizedBody762_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_125

def optimizedBody762_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_126

def optimizedBody762_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_26 optimizedBody762_127

def optimizedBody762_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_11 optimizedBody762_128

def optimizedBody762_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_25 optimizedBody762_129

def optimizedBody762_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_130

def optimizedBody762_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_24 optimizedBody762_131

def optimizedBody762_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_7 optimizedBody762_132

def optimizedBody762_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_133

def optimizedBody762_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_23 optimizedBody762_134

def optimizedBody762_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_22 optimizedBody762_135

def optimizedBody762_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_21 optimizedBody762_136

def optimizedBody762_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_20 optimizedBody762_137

def optimizedBody762_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_19 optimizedBody762_138

def optimizedBody762_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_18 optimizedBody762_139

def optimizedBody762_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_17 optimizedBody762_140

def optimizedBody762_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_16 optimizedBody762_141

def optimizedBody762_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_10 optimizedBody762_142

def optimizedBody762_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_143

def optimizedBody762_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_144

def optimizedBody762_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_15 optimizedBody762_145

def optimizedBody762_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_11 optimizedBody762_146

def optimizedBody762_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_10 optimizedBody762_147

def optimizedBody762_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_9 optimizedBody762_148

def optimizedBody762_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_8 optimizedBody762_149

def optimizedBody762_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_7 optimizedBody762_150

def optimizedBody762_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_6 optimizedBody762_151

def optimizedBody762_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_5 optimizedBody762_152

def optimizedBody762_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody762_0 optimizedBody762_153

def oracle762 : Option (Spt Nat) :=
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
def optimized762 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(762, 3, optimizedBody762_154)
theorem optimize762_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source762, oracle762) = optimized762 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize762_eq
end InitECandidate.Proofs.WordStages
