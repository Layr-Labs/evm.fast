import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody386_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody386_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody386_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8), (50, 6)]

def optimizedBody386_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (8, 48), (10, 50)]

def optimizedBody386_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (8, 48), (10, 50)]

def optimizedBody386_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody386_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_4 optimizedBody386_5

def optimizedBody386_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_3, 386, 2)) (some 68) ([2]) (some (2, optimizedBody386_6, 386, 3))

def optimizedBody386_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody386_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody386_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody386_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody386_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551448#64)))

def optimizedBody386_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody386_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody386_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody386_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551448#64))

def optimizedBody386_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 8)]

def optimizedBody386_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody386_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody386_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody386_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody386_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551448#64))

def optimizedBody386_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody386_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody386_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody386_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody386_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody386_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody386_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_28 optimizedBody386_5

def optimizedBody386_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 4)) (some 305) ([2, 4]) (some (2, optimizedBody386_29, 386, 5))

def optimizedBody386_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody386_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody386_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody386_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551448#64))

def optimizedBody386_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody386_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody386_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody386_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody386_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody386_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 6)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 7))

def optimizedBody386_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody386_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody386_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44)]

def optimizedBody386_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_43, 386, 8)) (some 68) ([2]) (some (2, optimizedBody386_29, 386, 9))

def optimizedBody386_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551440#64)))

def optimizedBody386_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody386_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody386_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody386_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 256#64)

def optimizedBody386_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody386_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 10)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 11))

def optimizedBody386_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551440#64))

def optimizedBody386_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody386_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 12)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 13))

def optimizedBody386_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody386_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 52#64)

def optimizedBody386_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 14)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 15))

def optimizedBody386_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 16)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 17))

def optimizedBody386_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 18)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 19))

def optimizedBody386_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody386_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_43, 386, 20)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 21))

def optimizedBody386_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody386_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody386_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody386_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody386_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551440#64))

def optimizedBody386_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody386_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody386_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody386_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody386_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_27, 386, 22)) (some 182) ([2, 4]) (some (2, optimizedBody386_29, 386, 23))

def optimizedBody386_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody386_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody386_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_43, 386, 24)) (some 68) ([2]) (some (2, optimizedBody386_29, 386, 25))

def optimizedBody386_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551424#64)))

def optimizedBody386_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551408#64)))

def optimizedBody386_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 524288#64)

def optimizedBody386_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551408#64))

def optimizedBody386_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody386_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44)]

def optimizedBody386_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody386_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_81 optimizedBody386_5

def optimizedBody386_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody386_80, 386, 26)) (some 68) ([2]) (some (2, optimizedBody386_82, 386, 27))

def optimizedBody386_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551416#64)))

def optimizedBody386_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody386_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551432#64)))

def optimizedBody386_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody386_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_65 optimizedBody386_87

def optimizedBody386_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_68 optimizedBody386_88

def optimizedBody386_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_70 optimizedBody386_89

def optimizedBody386_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_69 optimizedBody386_90

def optimizedBody386_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_68 optimizedBody386_91

def optimizedBody386_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_86 optimizedBody386_92

def optimizedBody386_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_93

def optimizedBody386_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_94

def optimizedBody386_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_65 optimizedBody386_95

def optimizedBody386_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_64 optimizedBody386_96

def optimizedBody386_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_85 optimizedBody386_97

def optimizedBody386_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_98

def optimizedBody386_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_99

def optimizedBody386_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_46 optimizedBody386_100

def optimizedBody386_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_84 optimizedBody386_101

def optimizedBody386_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_102

def optimizedBody386_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_103

def optimizedBody386_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_9 optimizedBody386_104

def optimizedBody386_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_105

def optimizedBody386_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_83 optimizedBody386_106

def optimizedBody386_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_28 optimizedBody386_107

def optimizedBody386_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_79 optimizedBody386_108

def optimizedBody386_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_78 optimizedBody386_109

def optimizedBody386_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_110

def optimizedBody386_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_111

def optimizedBody386_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_65 optimizedBody386_112

def optimizedBody386_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_77 optimizedBody386_113

def optimizedBody386_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_76 optimizedBody386_114

def optimizedBody386_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_115

def optimizedBody386_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_116

def optimizedBody386_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_46 optimizedBody386_117

def optimizedBody386_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_75 optimizedBody386_118

def optimizedBody386_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_119

def optimizedBody386_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_120

def optimizedBody386_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_9 optimizedBody386_121

def optimizedBody386_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_122

def optimizedBody386_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_74 optimizedBody386_123

def optimizedBody386_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_28 optimizedBody386_124

def optimizedBody386_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_73 optimizedBody386_125

def optimizedBody386_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_126

def optimizedBody386_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_127

def optimizedBody386_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_72 optimizedBody386_128

def optimizedBody386_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_52 optimizedBody386_129

def optimizedBody386_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_130

def optimizedBody386_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_131

def optimizedBody386_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_132

def optimizedBody386_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_133

def optimizedBody386_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_71 optimizedBody386_134

def optimizedBody386_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_135

def optimizedBody386_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_50 optimizedBody386_136

def optimizedBody386_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_49 optimizedBody386_137

def optimizedBody386_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_70 optimizedBody386_138

def optimizedBody386_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_69 optimizedBody386_139

def optimizedBody386_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_68 optimizedBody386_140

def optimizedBody386_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_67 optimizedBody386_141

def optimizedBody386_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_66 optimizedBody386_142

def optimizedBody386_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_143

def optimizedBody386_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_144

def optimizedBody386_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_65 optimizedBody386_145

def optimizedBody386_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_64 optimizedBody386_146

def optimizedBody386_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_63 optimizedBody386_147

def optimizedBody386_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_48 optimizedBody386_148

def optimizedBody386_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_149

def optimizedBody386_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_150

def optimizedBody386_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_46 optimizedBody386_151

def optimizedBody386_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_62 optimizedBody386_152

def optimizedBody386_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_48 optimizedBody386_153

def optimizedBody386_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_154

def optimizedBody386_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_155

def optimizedBody386_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_9 optimizedBody386_156

def optimizedBody386_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_157

def optimizedBody386_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_61 optimizedBody386_158

def optimizedBody386_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_159

def optimizedBody386_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_39 optimizedBody386_160

def optimizedBody386_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_38 optimizedBody386_161

def optimizedBody386_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_162

def optimizedBody386_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_163

def optimizedBody386_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_60 optimizedBody386_164

def optimizedBody386_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_52 optimizedBody386_165

def optimizedBody386_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_166

def optimizedBody386_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_167

def optimizedBody386_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_168

def optimizedBody386_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_169

def optimizedBody386_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_59 optimizedBody386_170

def optimizedBody386_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_171

def optimizedBody386_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_56 optimizedBody386_172

def optimizedBody386_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_38 optimizedBody386_173

def optimizedBody386_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_174

def optimizedBody386_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_175

def optimizedBody386_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_41 optimizedBody386_176

def optimizedBody386_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_52 optimizedBody386_177

def optimizedBody386_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_178

def optimizedBody386_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_179

def optimizedBody386_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_180

def optimizedBody386_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_181

def optimizedBody386_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_58 optimizedBody386_182

def optimizedBody386_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_183

def optimizedBody386_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_50 optimizedBody386_184

def optimizedBody386_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_38 optimizedBody386_185

def optimizedBody386_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_186

def optimizedBody386_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_187

def optimizedBody386_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_35 optimizedBody386_188

def optimizedBody386_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_52 optimizedBody386_189

def optimizedBody386_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_190

def optimizedBody386_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_191

def optimizedBody386_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_192

def optimizedBody386_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_193

def optimizedBody386_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_57 optimizedBody386_194

def optimizedBody386_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_195

def optimizedBody386_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_56 optimizedBody386_196

def optimizedBody386_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_49 optimizedBody386_197

def optimizedBody386_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_198

def optimizedBody386_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_199

def optimizedBody386_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_55 optimizedBody386_200

def optimizedBody386_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_52 optimizedBody386_201

def optimizedBody386_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_202

def optimizedBody386_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_203

def optimizedBody386_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_204

def optimizedBody386_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_205

def optimizedBody386_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_54 optimizedBody386_206

def optimizedBody386_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_207

def optimizedBody386_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_50 optimizedBody386_208

def optimizedBody386_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_49 optimizedBody386_209

def optimizedBody386_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_210

def optimizedBody386_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_211

def optimizedBody386_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_53 optimizedBody386_212

def optimizedBody386_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_52 optimizedBody386_213

def optimizedBody386_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_214

def optimizedBody386_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_215

def optimizedBody386_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_216

def optimizedBody386_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_217

def optimizedBody386_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_51 optimizedBody386_218

def optimizedBody386_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_219

def optimizedBody386_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_50 optimizedBody386_220

def optimizedBody386_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_49 optimizedBody386_221

def optimizedBody386_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_222

def optimizedBody386_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_223

def optimizedBody386_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_22 optimizedBody386_224

def optimizedBody386_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_225

def optimizedBody386_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_48 optimizedBody386_226

def optimizedBody386_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_227

def optimizedBody386_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_47 optimizedBody386_228

def optimizedBody386_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_46 optimizedBody386_229

def optimizedBody386_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_45 optimizedBody386_230

def optimizedBody386_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_231

def optimizedBody386_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_232

def optimizedBody386_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_9 optimizedBody386_233

def optimizedBody386_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_234

def optimizedBody386_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_44 optimizedBody386_235

def optimizedBody386_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_28 optimizedBody386_236

def optimizedBody386_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_42 optimizedBody386_237

def optimizedBody386_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_238

def optimizedBody386_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_239

def optimizedBody386_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_41 optimizedBody386_240

def optimizedBody386_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_34 optimizedBody386_241

def optimizedBody386_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_242

def optimizedBody386_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_243

def optimizedBody386_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_244

def optimizedBody386_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_245

def optimizedBody386_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_40 optimizedBody386_246

def optimizedBody386_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_247

def optimizedBody386_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_39 optimizedBody386_248

def optimizedBody386_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_38 optimizedBody386_249

def optimizedBody386_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_37 optimizedBody386_250

def optimizedBody386_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_36 optimizedBody386_251

def optimizedBody386_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_35 optimizedBody386_252

def optimizedBody386_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_34 optimizedBody386_253

def optimizedBody386_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_33 optimizedBody386_254

def optimizedBody386_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_32 optimizedBody386_255

def optimizedBody386_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_31 optimizedBody386_256

def optimizedBody386_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_257

def optimizedBody386_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_30 optimizedBody386_258

def optimizedBody386_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_26 optimizedBody386_259

def optimizedBody386_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_25 optimizedBody386_260

def optimizedBody386_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_24 optimizedBody386_261

def optimizedBody386_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_23 optimizedBody386_262

def optimizedBody386_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_22 optimizedBody386_263

def optimizedBody386_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_264

def optimizedBody386_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_21 optimizedBody386_265

def optimizedBody386_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_20 optimizedBody386_266

def optimizedBody386_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_19 optimizedBody386_267

def optimizedBody386_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_16 optimizedBody386_268

def optimizedBody386_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_269

def optimizedBody386_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_18 optimizedBody386_270

def optimizedBody386_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_17 optimizedBody386_271

def optimizedBody386_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_16 optimizedBody386_272

def optimizedBody386_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_15 optimizedBody386_273

def optimizedBody386_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_14 optimizedBody386_274

def optimizedBody386_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_13 optimizedBody386_275

def optimizedBody386_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_12 optimizedBody386_276

def optimizedBody386_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_11 optimizedBody386_277

def optimizedBody386_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_10 optimizedBody386_278

def optimizedBody386_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_9 optimizedBody386_279

def optimizedBody386_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_8 optimizedBody386_280

def optimizedBody386_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_7 optimizedBody386_281

def optimizedBody386_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_2 optimizedBody386_282

def optimizedBody386_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_1 optimizedBody386_283

def optimizedBody386_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody386_0 optimizedBody386_284

def optimized386 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(386, 4, optimizedBody386_285)
end InitECandidate.Proofs.StackAnalysis
