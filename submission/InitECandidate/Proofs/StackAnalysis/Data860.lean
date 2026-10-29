import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody860_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (56, 6)]

def optimizedBody860_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (56, 56)]

def optimizedBody860_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (56, 56)]

def optimizedBody860_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody860_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_2 optimizedBody860_3

def optimizedBody860_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_1, 860, 2)) (some 387) ([]) (some (2, optimizedBody860_4, 860, 3))

def optimizedBody860_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody860_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (50, 0), (56, 56)]

def optimizedBody860_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody860_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (56, 56)]

def optimizedBody860_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_9 optimizedBody860_3

def optimizedBody860_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_8, 860, 4)) (some 565) ([2]) (some (2, optimizedBody860_10, 860, 5))

def optimizedBody860_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 0), (50, 50), (54, 4), (56, 56)]

def optimizedBody860_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (12, 50), (54, 54), (56, 56)]

def optimizedBody860_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (12, 50), (54, 54), (56, 56)]

def optimizedBody860_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_14 optimizedBody860_3

def optimizedBody860_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_13, 860, 6)) (some 859) ([]) (some (2, optimizedBody860_15, 860, 7))

def optimizedBody860_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody860_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody860_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody860_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody860_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551312#64))

def optimizedBody860_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody860_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody860_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody860_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody860_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody860_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody860_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody860_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551208#64))

def optimizedBody860_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody860_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody860_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody860_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody860_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody860_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody860_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody860_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody860_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (6, 6)]

def optimizedBody860_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody860_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody860_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody860_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody860_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 30000000#64)

def optimizedBody860_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody860_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody860_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1566720#64)

def optimizedBody860_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 12), (52, 0), (54, 54), (56, 56)]

def optimizedBody860_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (10, 46), (12, 48), (4, 50), (14, 52), (0, 54), (8, 56)]

def optimizedBody860_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (12, 48), (4, 50), (14, 52), (0, 54), (8, 56)]

def optimizedBody860_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_50 optimizedBody860_3

def optimizedBody860_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody860_49, 860, 8)) (some 487) ([]) (some (2, optimizedBody860_51, 860, 9))

def optimizedBody860_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody860_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 18446744073709551208#64))

def optimizedBody860_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (16, 16)]

def optimizedBody860_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody860_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody860_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody860_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody860_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody860_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551312#64))

def optimizedBody860_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2)]

def optimizedBody860_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody860_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody860_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody860_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody860_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody860_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 30000000#64)

def optimizedBody860_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody860_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 1566720#64)

def optimizedBody860_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody860_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody860_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody860_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody860_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody860_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody860_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody860_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody860_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody860_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody860_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody860_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6)]

def optimizedBody860_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody860_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody860_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_89 optimizedBody860_3

def optimizedBody860_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_88, 860, 10)) (some 182) ([2, 4]) (some (2, optimizedBody860_90, 860, 11))

def optimizedBody860_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 152#64)))

def optimizedBody860_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 52#64)

def optimizedBody860_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0)]

def optimizedBody860_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody860_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody860_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_96 optimizedBody860_3

def optimizedBody860_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_95, 860, 12)) (some 182) ([2, 4]) (some (2, optimizedBody860_97, 860, 13))

def optimizedBody860_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody860_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 160#64)))

def optimizedBody860_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody860_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody860_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody860_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody860_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_103 optimizedBody860_3

def optimizedBody860_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_104, 860, 14)) (some 625) ([2]) (some (2, optimizedBody860_105, 860, 15))

def optimizedBody860_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0)]

def optimizedBody860_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody860_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_108, 860, 16)) (some 455) ([]) (some (2, optimizedBody860_97, 860, 17))

def optimizedBody860_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody860_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 80#64))

def optimizedBody860_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody860_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 48#64))

def optimizedBody860_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody860_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0)]

def optimizedBody860_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48), (50, 50)]

def optimizedBody860_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (50, 50)]

def optimizedBody860_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_117 optimizedBody860_3

def optimizedBody860_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_116, 860, 18)) (some 68) ([2]) (some (2, optimizedBody860_118, 860, 19))

def optimizedBody860_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody860_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody860_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 2), (50, 50)]

def optimizedBody860_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody860_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (0, 50)]

def optimizedBody860_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_124 optimizedBody860_3

def optimizedBody860_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_123, 860, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody860_125, 860, 21))

def optimizedBody860_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody860_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody860_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody860_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (0, 0)]

def optimizedBody860_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_129 optimizedBody860_130

def optimizedBody860_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_128 optimizedBody860_131

def optimizedBody860_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_127 optimizedBody860_132

def optimizedBody860_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_110 optimizedBody860_133

def optimizedBody860_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_134

def optimizedBody860_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_126 optimizedBody860_135

def optimizedBody860_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_122 optimizedBody860_136

def optimizedBody860_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_121 optimizedBody860_137

def optimizedBody860_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_120 optimizedBody860_138

def optimizedBody860_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_139

def optimizedBody860_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_119 optimizedBody860_140

def optimizedBody860_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_115 optimizedBody860_141

def optimizedBody860_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_114 optimizedBody860_142

def optimizedBody860_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_143

def optimizedBody860_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_144

def optimizedBody860_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_130

def optimizedBody860_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody860_145 optimizedBody860_146

def optimizedBody860_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody860_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody860_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_149, 860, 22)) (some 76) ([2]) (some (2, optimizedBody860_90, 860, 23))

def optimizedBody860_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody860_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody860_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody860_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody860_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_154 optimizedBody860_3

def optimizedBody860_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody860_153, 860, 24)) (some 73) ([2]) (some (2, optimizedBody860_155, 860, 25))

def optimizedBody860_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody860_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_157

def optimizedBody860_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_156 optimizedBody860_158

def optimizedBody860_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_152 optimizedBody860_159

def optimizedBody860_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_151 optimizedBody860_160

def optimizedBody860_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_161

def optimizedBody860_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_162

def optimizedBody860_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_150 optimizedBody860_163

def optimizedBody860_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_148 optimizedBody860_164

def optimizedBody860_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_165

def optimizedBody860_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_147 optimizedBody860_166

def optimizedBody860_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_167

def optimizedBody860_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_112 optimizedBody860_168

def optimizedBody860_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_113 optimizedBody860_169

def optimizedBody860_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_110 optimizedBody860_170

def optimizedBody860_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_171

def optimizedBody860_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody860_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_173

def optimizedBody860_175 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody860_172 optimizedBody860_174

def optimizedBody860_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody860_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_99 optimizedBody860_176

def optimizedBody860_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_177

def optimizedBody860_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_175 optimizedBody860_178

def optimizedBody860_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_112 optimizedBody860_179

def optimizedBody860_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_180

def optimizedBody860_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_111 optimizedBody860_181

def optimizedBody860_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_110 optimizedBody860_182

def optimizedBody860_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_183

def optimizedBody860_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_109 optimizedBody860_184

def optimizedBody860_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_107 optimizedBody860_185

def optimizedBody860_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_186

def optimizedBody860_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_106 optimizedBody860_187

def optimizedBody860_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_103 optimizedBody860_188

def optimizedBody860_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_102 optimizedBody860_189

def optimizedBody860_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_101 optimizedBody860_190

def optimizedBody860_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_100 optimizedBody860_191

def optimizedBody860_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_99 optimizedBody860_192

def optimizedBody860_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_193

def optimizedBody860_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_98 optimizedBody860_194

def optimizedBody860_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_94 optimizedBody860_195

def optimizedBody860_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_93 optimizedBody860_196

def optimizedBody860_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_85 optimizedBody860_197

def optimizedBody860_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_198

def optimizedBody860_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_65 optimizedBody860_199

def optimizedBody860_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_92 optimizedBody860_200

def optimizedBody860_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_201

def optimizedBody860_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_202

def optimizedBody860_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_91 optimizedBody860_203

def optimizedBody860_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_87 optimizedBody860_204

def optimizedBody860_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_86 optimizedBody860_205

def optimizedBody860_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_85 optimizedBody860_206

def optimizedBody860_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_84 optimizedBody860_207

def optimizedBody860_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_83 optimizedBody860_208

def optimizedBody860_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_82 optimizedBody860_209

def optimizedBody860_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_210

def optimizedBody860_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_81 optimizedBody860_211

def optimizedBody860_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_80 optimizedBody860_212

def optimizedBody860_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_79 optimizedBody860_213

def optimizedBody860_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_214

def optimizedBody860_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_215

def optimizedBody860_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_65 optimizedBody860_216

def optimizedBody860_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_78 optimizedBody860_217

def optimizedBody860_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_218

def optimizedBody860_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_77 optimizedBody860_219

def optimizedBody860_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_76 optimizedBody860_220

def optimizedBody860_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_75 optimizedBody860_221

def optimizedBody860_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_222

def optimizedBody860_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_74 optimizedBody860_223

def optimizedBody860_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_73 optimizedBody860_224

def optimizedBody860_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_72 optimizedBody860_225

def optimizedBody860_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_226

def optimizedBody860_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_69 optimizedBody860_227

def optimizedBody860_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_44 optimizedBody860_228

def optimizedBody860_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_71 optimizedBody860_229

def optimizedBody860_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_70 optimizedBody860_230

def optimizedBody860_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_231

def optimizedBody860_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_69 optimizedBody860_232

def optimizedBody860_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_44 optimizedBody860_233

def optimizedBody860_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_68 optimizedBody860_234

def optimizedBody860_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_67 optimizedBody860_235

def optimizedBody860_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_236

def optimizedBody860_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_237

def optimizedBody860_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_65 optimizedBody860_238

def optimizedBody860_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_66 optimizedBody860_239

def optimizedBody860_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_240

def optimizedBody860_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_241

def optimizedBody860_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_65 optimizedBody860_242

def optimizedBody860_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_64 optimizedBody860_243

def optimizedBody860_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_244

def optimizedBody860_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_63 optimizedBody860_245

def optimizedBody860_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_62 optimizedBody860_246

def optimizedBody860_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_61 optimizedBody860_247

def optimizedBody860_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_28 optimizedBody860_248

def optimizedBody860_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_60 optimizedBody860_249

def optimizedBody860_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_250

def optimizedBody860_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_59 optimizedBody860_251

def optimizedBody860_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_58 optimizedBody860_252

def optimizedBody860_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_57 optimizedBody860_253

def optimizedBody860_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_254

def optimizedBody860_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_56 optimizedBody860_255

def optimizedBody860_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_55 optimizedBody860_256

def optimizedBody860_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_54 optimizedBody860_257

def optimizedBody860_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_20 optimizedBody860_258

def optimizedBody860_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_19 optimizedBody860_259

def optimizedBody860_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_18 optimizedBody860_260

def optimizedBody860_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_53 optimizedBody860_261

def optimizedBody860_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_262

def optimizedBody860_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_52 optimizedBody860_263

def optimizedBody860_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_48 optimizedBody860_264

def optimizedBody860_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_265

def optimizedBody860_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_44 optimizedBody860_266

def optimizedBody860_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_47 optimizedBody860_267

def optimizedBody860_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_46 optimizedBody860_268

def optimizedBody860_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_269

def optimizedBody860_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_45 optimizedBody860_270

def optimizedBody860_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_44 optimizedBody860_271

def optimizedBody860_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_43 optimizedBody860_272

def optimizedBody860_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_42 optimizedBody860_273

def optimizedBody860_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_274

def optimizedBody860_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_41 optimizedBody860_275

def optimizedBody860_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_40 optimizedBody860_276

def optimizedBody860_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_39 optimizedBody860_277

def optimizedBody860_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_38 optimizedBody860_278

def optimizedBody860_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_37 optimizedBody860_279

def optimizedBody860_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_36 optimizedBody860_280

def optimizedBody860_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_35 optimizedBody860_281

def optimizedBody860_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_34 optimizedBody860_282

def optimizedBody860_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_33 optimizedBody860_283

def optimizedBody860_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_28 optimizedBody860_284

def optimizedBody860_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_32 optimizedBody860_285

def optimizedBody860_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_28 optimizedBody860_286

def optimizedBody860_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_31 optimizedBody860_287

def optimizedBody860_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_28 optimizedBody860_288

def optimizedBody860_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_30 optimizedBody860_289

def optimizedBody860_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_29 optimizedBody860_290

def optimizedBody860_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_28 optimizedBody860_291

def optimizedBody860_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_27 optimizedBody860_292

def optimizedBody860_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_293

def optimizedBody860_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_26 optimizedBody860_294

def optimizedBody860_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_25 optimizedBody860_295

def optimizedBody860_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_24 optimizedBody860_296

def optimizedBody860_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_297

def optimizedBody860_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_23 optimizedBody860_298

def optimizedBody860_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_22 optimizedBody860_299

def optimizedBody860_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_21 optimizedBody860_300

def optimizedBody860_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_20 optimizedBody860_301

def optimizedBody860_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_19 optimizedBody860_302

def optimizedBody860_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_18 optimizedBody860_303

def optimizedBody860_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_17 optimizedBody860_304

def optimizedBody860_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_305

def optimizedBody860_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_16 optimizedBody860_306

def optimizedBody860_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_12 optimizedBody860_307

def optimizedBody860_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_308

def optimizedBody860_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_11 optimizedBody860_309

def optimizedBody860_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_7 optimizedBody860_310

def optimizedBody860_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_6 optimizedBody860_311

def optimizedBody860_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_5 optimizedBody860_312

def optimizedBody860_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody860_0 optimizedBody860_313

def optimized860 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(860, 4, optimizedBody860_314)
end InitECandidate.Proofs.StackAnalysis
