import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody449_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2)]

def optimizedBody449_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody449_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody449_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 2

def optimizedBody449_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 18446744073709551368#64))

def optimizedBody449_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2)]

def optimizedBody449_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551392#64))

def optimizedBody449_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 2)]

def optimizedBody449_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody449_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody449_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody449_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_9 optimizedBody449_10

def optimizedBody449_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_8, 449, 2)) (some 87) ([2, 4]) (some (2, optimizedBody449_11, 449, 3))

def optimizedBody449_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody449_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody449_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody449_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody449_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody449_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 4), (48, 0)]

def optimizedBody449_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48)]

def optimizedBody449_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody449_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_20 optimizedBody449_10

def optimizedBody449_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_19, 449, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody449_21, 449, 5))

def optimizedBody449_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody449_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody449_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody449_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551384#64))

def optimizedBody449_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (50, 4)]

def optimizedBody449_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (8, 44), (6, 46), (50, 50)]

def optimizedBody449_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (6, 46), (50, 50)]

def optimizedBody449_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_29 optimizedBody449_10

def optimizedBody449_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_28, 449, 6)) (some 186) ([2, 4]) (some (2, optimizedBody449_30, 449, 7))

def optimizedBody449_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody449_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody449_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody449_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_33 optimizedBody449_34

def optimizedBody449_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_35

def optimizedBody449_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody449_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody449_36 optimizedBody449_37

def optimizedBody449_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 8), (46, 6), (50, 50)]

def optimizedBody449_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody449_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody449_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_41 optimizedBody449_10

def optimizedBody449_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_40, 449, 8)) (some 447) ([2]) (some (2, optimizedBody449_42, 449, 9))

def optimizedBody449_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody449_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody449_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody449_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody449_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_47 optimizedBody449_10

def optimizedBody449_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_46, 449, 10)) (some 68) ([2]) (some (2, optimizedBody449_48, 449, 11))

def optimizedBody449_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody449_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 80#64)

def optimizedBody449_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 2)]

def optimizedBody449_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody449_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52)]

def optimizedBody449_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_54 optimizedBody449_10

def optimizedBody449_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_53, 449, 12)) (some 78) ([2, 4]) (some (2, optimizedBody449_55, 449, 13))

def optimizedBody449_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody449_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody449_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody449_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody449_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 18446744073709551480#64))

def optimizedBody449_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody449_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody449_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody449_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (48, 50), (50, 52)]

def optimizedBody449_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_65 optimizedBody449_10

def optimizedBody449_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_64, 449, 14)) (some 77) ([2, 4, 6]) (some (2, optimizedBody449_66, 449, 15))

def optimizedBody449_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody449_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 50)]

def optimizedBody449_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody449_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody449_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody449_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody449_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody449_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody449_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody449_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody449_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody449_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody449_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody449_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (12, 12)]

def optimizedBody449_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody449_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody449_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody449_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody449_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody449_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody449_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody449_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody449_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody449_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody449_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_91 optimizedBody449_10

def optimizedBody449_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_90, 449, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody449_92, 449, 17))

def optimizedBody449_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (50, 50)]

def optimizedBody449_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_94

def optimizedBody449_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_93 optimizedBody449_95

def optimizedBody449_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_89 optimizedBody449_96

def optimizedBody449_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_62 optimizedBody449_97

def optimizedBody449_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_88 optimizedBody449_98

def optimizedBody449_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_99

def optimizedBody449_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_57 optimizedBody449_100

def optimizedBody449_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_101

def optimizedBody449_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_87 optimizedBody449_102

def optimizedBody449_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_74 optimizedBody449_103

def optimizedBody449_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_86 optimizedBody449_104

def optimizedBody449_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_85 optimizedBody449_105

def optimizedBody449_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_84 optimizedBody449_106

def optimizedBody449_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_83 optimizedBody449_107

def optimizedBody449_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_82 optimizedBody449_108

def optimizedBody449_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_81 optimizedBody449_109

def optimizedBody449_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_80 optimizedBody449_110

def optimizedBody449_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_111

def optimizedBody449_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_79 optimizedBody449_112

def optimizedBody449_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_113

def optimizedBody449_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_78 optimizedBody449_114

def optimizedBody449_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_115

def optimizedBody449_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_77 optimizedBody449_116

def optimizedBody449_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_117

def optimizedBody449_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_76 optimizedBody449_118

def optimizedBody449_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_119

def optimizedBody449_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_75 optimizedBody449_120

def optimizedBody449_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_74 optimizedBody449_121

def optimizedBody449_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_73 optimizedBody449_122

def optimizedBody449_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_123

def optimizedBody449_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_72 optimizedBody449_124

def optimizedBody449_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_125

def optimizedBody449_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_71 optimizedBody449_126

def optimizedBody449_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_127

def optimizedBody449_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_70 optimizedBody449_128

def optimizedBody449_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_69 optimizedBody449_129

def optimizedBody449_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_130

def optimizedBody449_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 48), (50, 50)]

def optimizedBody449_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_132

def optimizedBody449_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody449_131 optimizedBody449_133

def optimizedBody449_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551392#64))

def optimizedBody449_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 2), (50, 50)]

def optimizedBody449_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody449_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50)]

def optimizedBody449_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_138 optimizedBody449_10

def optimizedBody449_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_137, 449, 18)) (some 87) ([2, 4]) (some (2, optimizedBody449_139, 449, 19))

def optimizedBody449_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48)]

def optimizedBody449_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48)]

def optimizedBody449_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody449_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_143 optimizedBody449_10

def optimizedBody449_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_142, 449, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody449_144, 449, 21))

def optimizedBody449_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody449_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody449_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody449_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_148 optimizedBody449_10

def optimizedBody449_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody449_147, 449, 22)) (some 192) ([2, 4, 6]) (some (2, optimizedBody449_149, 449, 23))

def optimizedBody449_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody449_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_33 optimizedBody449_151

def optimizedBody449_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_152

def optimizedBody449_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_150 optimizedBody449_153

def optimizedBody449_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_146 optimizedBody449_154

def optimizedBody449_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_26 optimizedBody449_155

def optimizedBody449_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_25 optimizedBody449_156

def optimizedBody449_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_24 optimizedBody449_157

def optimizedBody449_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_23 optimizedBody449_158

def optimizedBody449_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_159

def optimizedBody449_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_145 optimizedBody449_160

def optimizedBody449_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_141 optimizedBody449_161

def optimizedBody449_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_17 optimizedBody449_162

def optimizedBody449_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_163

def optimizedBody449_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_15 optimizedBody449_164

def optimizedBody449_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_165

def optimizedBody449_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_166

def optimizedBody449_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_140 optimizedBody449_167

def optimizedBody449_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_136 optimizedBody449_168

def optimizedBody449_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_135 optimizedBody449_169

def optimizedBody449_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_25 optimizedBody449_170

def optimizedBody449_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_24 optimizedBody449_171

def optimizedBody449_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_23 optimizedBody449_172

def optimizedBody449_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_50 optimizedBody449_173

def optimizedBody449_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_174

def optimizedBody449_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_134 optimizedBody449_175

def optimizedBody449_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_68 optimizedBody449_176

def optimizedBody449_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_177

def optimizedBody449_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_178

def optimizedBody449_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_67 optimizedBody449_179

def optimizedBody449_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_63 optimizedBody449_180

def optimizedBody449_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_62 optimizedBody449_181

def optimizedBody449_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_61 optimizedBody449_182

def optimizedBody449_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_60 optimizedBody449_183

def optimizedBody449_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_59 optimizedBody449_184

def optimizedBody449_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_58 optimizedBody449_185

def optimizedBody449_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_57 optimizedBody449_186

def optimizedBody449_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_187

def optimizedBody449_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_188

def optimizedBody449_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_56 optimizedBody449_189

def optimizedBody449_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_52 optimizedBody449_190

def optimizedBody449_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_51 optimizedBody449_191

def optimizedBody449_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_50 optimizedBody449_192

def optimizedBody449_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_193

def optimizedBody449_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_49 optimizedBody449_194

def optimizedBody449_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_45 optimizedBody449_195

def optimizedBody449_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_44 optimizedBody449_196

def optimizedBody449_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_197

def optimizedBody449_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_43 optimizedBody449_198

def optimizedBody449_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_39 optimizedBody449_199

def optimizedBody449_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_200

def optimizedBody449_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_201

def optimizedBody449_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_38 optimizedBody449_202

def optimizedBody449_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_32 optimizedBody449_203

def optimizedBody449_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_204

def optimizedBody449_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_205

def optimizedBody449_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_31 optimizedBody449_206

def optimizedBody449_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_27 optimizedBody449_207

def optimizedBody449_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_26 optimizedBody449_208

def optimizedBody449_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_25 optimizedBody449_209

def optimizedBody449_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_24 optimizedBody449_210

def optimizedBody449_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_23 optimizedBody449_211

def optimizedBody449_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_212

def optimizedBody449_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_22 optimizedBody449_213

def optimizedBody449_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_18 optimizedBody449_214

def optimizedBody449_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_17 optimizedBody449_215

def optimizedBody449_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_16 optimizedBody449_216

def optimizedBody449_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_15 optimizedBody449_217

def optimizedBody449_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_14 optimizedBody449_218

def optimizedBody449_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_13 optimizedBody449_219

def optimizedBody449_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_12 optimizedBody449_220

def optimizedBody449_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_7 optimizedBody449_221

def optimizedBody449_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_6 optimizedBody449_222

def optimizedBody449_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_5 optimizedBody449_223

def optimizedBody449_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_4 optimizedBody449_224

def optimizedBody449_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_3 optimizedBody449_225

def optimizedBody449_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_2 optimizedBody449_226

def optimizedBody449_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_1 optimizedBody449_227

def optimizedBody449_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody449_0 optimizedBody449_228

def optimized449 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(449, 2, optimizedBody449_229)
end InitECandidate.Proofs.StackAnalysis
