import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody865_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 2)]

def optimizedBody865_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody865_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody865_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody865_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_2 optimizedBody865_3

def optimizedBody865_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_1, 865, 2)) (some 387) ([]) (some (2, optimizedBody865_4, 865, 3))

def optimizedBody865_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody865_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody865_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody865_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody865_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def optimizedBody865_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (24, 24), (18, 18), (46, 0), (20, 20)]

def optimizedBody865_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (18, 18)]

def optimizedBody865_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody865_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 44#64)

def optimizedBody865_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 18), (4, 4)]

def optimizedBody865_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody865_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 20), (0, 0)]

def optimizedBody865_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 0 (Flapjack.WordRegImm.reg 20)))

def optimizedBody865_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody865_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 22 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody865_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody865_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 22 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody865_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody865_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 22 (Flapjack.WordRegImm.imm 38#64)))

def optimizedBody865_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody865_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 22 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody865_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody865_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 22 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody865_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody865_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 22 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody865_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody865_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 22 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody865_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody865_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 22 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody865_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody865_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody865_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody865_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody865_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody865_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody865_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody865_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody865_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody865_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody865_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody865_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody865_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody865_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody865_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody865_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody865_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody865_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody865_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody865_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody865_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 4 (Flapjack.WordRegImm.reg 2)))

def optimizedBody865_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody865_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody865_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody865_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody865_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1000000000#64)

def optimizedBody865_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody865_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody865_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody865_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 22), (48, 24), (50, 18),
    (52, 46), (54, 20)]

def optimizedBody865_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (8, 6), (10, 8), (6, 4), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54)]

def optimizedBody865_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (48, 50), (50, 52), (52, 54)]

def optimizedBody865_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_66 optimizedBody865_3

def optimizedBody865_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody865_65, 865, 4)) (some 120) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody865_67, 865, 5))

def optimizedBody865_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody865_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody865_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (24, 46), (0, 48), (4, 50), (20, 52)]

def optimizedBody865_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (24, 46), (0, 48), (4, 50), (20, 52)]

def optimizedBody865_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_72 optimizedBody865_3

def optimizedBody865_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_71, 865, 6)) (some 428) ([2, 4, 6, 8, 10]) (some (2, optimizedBody865_73, 865, 7))

def optimizedBody865_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody865_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody865_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody865_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def optimizedBody865_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody865_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody865_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (24, 24), (18, 18), (46, 4), (20, 20)]

def optimizedBody865_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody865_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_81 optimizedBody865_82

def optimizedBody865_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_80 optimizedBody865_83

def optimizedBody865_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_7 optimizedBody865_84

def optimizedBody865_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_79 optimizedBody865_85

def optimizedBody865_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_53 optimizedBody865_86

def optimizedBody865_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_62 optimizedBody865_87

def optimizedBody865_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_78 optimizedBody865_88

def optimizedBody865_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_77 optimizedBody865_89

def optimizedBody865_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_76 optimizedBody865_90

def optimizedBody865_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_75 optimizedBody865_91

def optimizedBody865_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_92

def optimizedBody865_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_74 optimizedBody865_93

def optimizedBody865_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_70 optimizedBody865_94

def optimizedBody865_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_69 optimizedBody865_95

def optimizedBody865_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_7 optimizedBody865_96

def optimizedBody865_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_97

def optimizedBody865_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_68 optimizedBody865_98

def optimizedBody865_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_64 optimizedBody865_99

def optimizedBody865_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_63 optimizedBody865_100

def optimizedBody865_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_62 optimizedBody865_101

def optimizedBody865_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_61 optimizedBody865_102

def optimizedBody865_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_60 optimizedBody865_103

def optimizedBody865_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_59 optimizedBody865_104

def optimizedBody865_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_58 optimizedBody865_105

def optimizedBody865_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_57 optimizedBody865_106

def optimizedBody865_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_53 optimizedBody865_107

def optimizedBody865_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_56 optimizedBody865_108

def optimizedBody865_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_7 optimizedBody865_109

def optimizedBody865_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_55 optimizedBody865_110

def optimizedBody865_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_54 optimizedBody865_111

def optimizedBody865_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_53 optimizedBody865_112

def optimizedBody865_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_52 optimizedBody865_113

def optimizedBody865_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_51 optimizedBody865_114

def optimizedBody865_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_50 optimizedBody865_115

def optimizedBody865_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_49 optimizedBody865_116

def optimizedBody865_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_48 optimizedBody865_117

def optimizedBody865_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_47 optimizedBody865_118

def optimizedBody865_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_46 optimizedBody865_119

def optimizedBody865_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_45 optimizedBody865_120

def optimizedBody865_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_44 optimizedBody865_121

def optimizedBody865_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_43 optimizedBody865_122

def optimizedBody865_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_42 optimizedBody865_123

def optimizedBody865_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_41 optimizedBody865_124

def optimizedBody865_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_40 optimizedBody865_125

def optimizedBody865_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_39 optimizedBody865_126

def optimizedBody865_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_38 optimizedBody865_127

def optimizedBody865_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_37 optimizedBody865_128

def optimizedBody865_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_36 optimizedBody865_129

def optimizedBody865_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_35 optimizedBody865_130

def optimizedBody865_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_34 optimizedBody865_131

def optimizedBody865_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_132

def optimizedBody865_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_33 optimizedBody865_133

def optimizedBody865_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_32 optimizedBody865_134

def optimizedBody865_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_135

def optimizedBody865_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_31 optimizedBody865_136

def optimizedBody865_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_30 optimizedBody865_137

def optimizedBody865_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_138

def optimizedBody865_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_29 optimizedBody865_139

def optimizedBody865_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_28 optimizedBody865_140

def optimizedBody865_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_141

def optimizedBody865_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_27 optimizedBody865_142

def optimizedBody865_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_26 optimizedBody865_143

def optimizedBody865_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_144

def optimizedBody865_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_25 optimizedBody865_145

def optimizedBody865_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_24 optimizedBody865_146

def optimizedBody865_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_147

def optimizedBody865_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_23 optimizedBody865_148

def optimizedBody865_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_22 optimizedBody865_149

def optimizedBody865_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_150

def optimizedBody865_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_21 optimizedBody865_151

def optimizedBody865_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_20 optimizedBody865_152

def optimizedBody865_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_19 optimizedBody865_153

def optimizedBody865_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_18 optimizedBody865_154

def optimizedBody865_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_17 optimizedBody865_155

def optimizedBody865_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_16 optimizedBody865_156

def optimizedBody865_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_15 optimizedBody865_157

def optimizedBody865_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_14 optimizedBody865_158

def optimizedBody865_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_13 optimizedBody865_159

def optimizedBody865_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_160

def optimizedBody865_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody865_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_162

def optimizedBody865_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 24) optimizedBody865_161 optimizedBody865_163

def optimizedBody865_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (24, 24), (18, 18), (46, 2), (20, 20)]

def optimizedBody865_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_165

def optimizedBody865_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_164 optimizedBody865_166

def optimizedBody865_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_12 optimizedBody865_167

def optimizedBody865_169 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody865_168 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody865_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody865_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody865_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody865_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_172 optimizedBody865_3

def optimizedBody865_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody865_171, 865, 8)) (some 455) ([]) (some (2, optimizedBody865_173, 865, 9))

def optimizedBody865_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody865_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody865_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_53 optimizedBody865_176

def optimizedBody865_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_175 optimizedBody865_177

def optimizedBody865_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_178

def optimizedBody865_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_174 optimizedBody865_179

def optimizedBody865_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_170 optimizedBody865_180

def optimizedBody865_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_181

def optimizedBody865_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_169 optimizedBody865_182

def optimizedBody865_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_11 optimizedBody865_183

def optimizedBody865_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_184

def optimizedBody865_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_10 optimizedBody865_185

def optimizedBody865_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_9 optimizedBody865_186

def optimizedBody865_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_7 optimizedBody865_187

def optimizedBody865_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_8 optimizedBody865_188

def optimizedBody865_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_7 optimizedBody865_189

def optimizedBody865_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_6 optimizedBody865_190

def optimizedBody865_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_5 optimizedBody865_191

def optimizedBody865_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody865_0 optimizedBody865_192

def optimized865 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(865, 2, optimizedBody865_193)
end InitECandidate.Proofs.StackAnalysis
