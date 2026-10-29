import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody844_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody844_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody844_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 2)]

def optimizedBody844_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody844_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody844_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody844_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody844_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody844_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody844_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody844_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody844_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody844_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody844_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody844_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 16 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody844_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody844_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 16 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody844_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody844_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody844_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody844_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody844_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody844_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody844_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody844_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody844_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody844_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody844_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 18)))

def optimizedBody844_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody844_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody844_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody844_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody844_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody844_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody844_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody844_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody844_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody844_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody844_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody844_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody844_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 16)]

def optimizedBody844_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 2), (44, 44), (16, 46)]

def optimizedBody844_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46)]

def optimizedBody844_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody844_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_42 optimizedBody844_43

def optimizedBody844_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_41, 844, 2)) (some 181) ([2]) (some (2, optimizedBody844_44, 844, 3))

def optimizedBody844_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody844_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody844_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody844_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody844_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody844_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 16 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody844_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody844_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 16 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody844_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody844_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody844_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 16 (Flapjack.WordRegImm.imm 13#64)))

def optimizedBody844_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 16 (Flapjack.WordRegImm.imm 14#64)))

def optimizedBody844_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 16 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody844_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody844_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody844_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody844_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody844_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody844_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody844_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody844_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody844_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody844_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 16), (48, 18)]

def optimizedBody844_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (44, 44), (14, 46), (46, 48)]

def optimizedBody844_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (14, 46), (46, 48)]

def optimizedBody844_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_70 optimizedBody844_43

def optimizedBody844_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_69, 844, 4)) (some 181) ([2]) (some (2, optimizedBody844_71, 844, 5))

def optimizedBody844_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody844_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody844_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody844_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 38#64)))

def optimizedBody844_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 14 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody844_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody844_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 14 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody844_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody844_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody844_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody844_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody844_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody844_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody844_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody844_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 16)]

def optimizedBody844_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody844_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody844_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_89 optimizedBody844_43

def optimizedBody844_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_88, 844, 6)) (some 181) ([2]) (some (2, optimizedBody844_90, 844, 7))

def optimizedBody844_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody844_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody844_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody844_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 21#64)))

def optimizedBody844_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2)]

def optimizedBody844_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody844_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody844_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_98 optimizedBody844_43

def optimizedBody844_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody844_97, 844, 8)) (some 180) ([2]) (some (2, optimizedBody844_99, 844, 9))

def optimizedBody844_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody844_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody844_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody844_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_32 optimizedBody844_103

def optimizedBody844_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_102 optimizedBody844_104

def optimizedBody844_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_101 optimizedBody844_105

def optimizedBody844_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_106

def optimizedBody844_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_100 optimizedBody844_107

def optimizedBody844_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_96 optimizedBody844_108

def optimizedBody844_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_95 optimizedBody844_109

def optimizedBody844_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_94 optimizedBody844_110

def optimizedBody844_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_64 optimizedBody844_111

def optimizedBody844_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_93 optimizedBody844_112

def optimizedBody844_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_92 optimizedBody844_113

def optimizedBody844_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_114

def optimizedBody844_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_91 optimizedBody844_115

def optimizedBody844_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_87 optimizedBody844_116

def optimizedBody844_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_86 optimizedBody844_117

def optimizedBody844_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_35 optimizedBody844_118

def optimizedBody844_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_85 optimizedBody844_119

def optimizedBody844_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_84 optimizedBody844_120

def optimizedBody844_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_32 optimizedBody844_121

def optimizedBody844_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_83 optimizedBody844_122

def optimizedBody844_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_82 optimizedBody844_123

def optimizedBody844_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_64 optimizedBody844_124

def optimizedBody844_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_61 optimizedBody844_125

def optimizedBody844_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_60 optimizedBody844_126

def optimizedBody844_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_38 optimizedBody844_127

def optimizedBody844_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_59 optimizedBody844_128

def optimizedBody844_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_31 optimizedBody844_129

def optimizedBody844_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_29 optimizedBody844_130

def optimizedBody844_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_25 optimizedBody844_131

def optimizedBody844_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_24 optimizedBody844_132

def optimizedBody844_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_23 optimizedBody844_133

def optimizedBody844_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_22 optimizedBody844_134

def optimizedBody844_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_21 optimizedBody844_135

def optimizedBody844_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_20 optimizedBody844_136

def optimizedBody844_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_19 optimizedBody844_137

def optimizedBody844_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_138

def optimizedBody844_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_17 optimizedBody844_139

def optimizedBody844_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_81 optimizedBody844_140

def optimizedBody844_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_141

def optimizedBody844_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_15 optimizedBody844_142

def optimizedBody844_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_80 optimizedBody844_143

def optimizedBody844_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_144

def optimizedBody844_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_145

def optimizedBody844_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_79 optimizedBody844_146

def optimizedBody844_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_147

def optimizedBody844_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_9 optimizedBody844_148

def optimizedBody844_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_78 optimizedBody844_149

def optimizedBody844_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_150

def optimizedBody844_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_54 optimizedBody844_151

def optimizedBody844_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_77 optimizedBody844_152

def optimizedBody844_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_153

def optimizedBody844_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_50 optimizedBody844_154

def optimizedBody844_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_76 optimizedBody844_155

def optimizedBody844_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_156

def optimizedBody844_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_48 optimizedBody844_157

def optimizedBody844_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_75 optimizedBody844_158

def optimizedBody844_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_159

def optimizedBody844_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_74 optimizedBody844_160

def optimizedBody844_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_73 optimizedBody844_161

def optimizedBody844_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_162

def optimizedBody844_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_163

def optimizedBody844_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_72 optimizedBody844_164

def optimizedBody844_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_68 optimizedBody844_165

def optimizedBody844_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_67 optimizedBody844_166

def optimizedBody844_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_32 optimizedBody844_167

def optimizedBody844_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_66 optimizedBody844_168

def optimizedBody844_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_65 optimizedBody844_169

def optimizedBody844_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_64 optimizedBody844_170

def optimizedBody844_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_63 optimizedBody844_171

def optimizedBody844_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_62 optimizedBody844_172

def optimizedBody844_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_35 optimizedBody844_173

def optimizedBody844_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_61 optimizedBody844_174

def optimizedBody844_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_60 optimizedBody844_175

def optimizedBody844_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_38 optimizedBody844_176

def optimizedBody844_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_59 optimizedBody844_177

def optimizedBody844_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_31 optimizedBody844_178

def optimizedBody844_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_29 optimizedBody844_179

def optimizedBody844_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_25 optimizedBody844_180

def optimizedBody844_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_24 optimizedBody844_181

def optimizedBody844_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_23 optimizedBody844_182

def optimizedBody844_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_22 optimizedBody844_183

def optimizedBody844_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_21 optimizedBody844_184

def optimizedBody844_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_20 optimizedBody844_185

def optimizedBody844_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_19 optimizedBody844_186

def optimizedBody844_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_187

def optimizedBody844_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_17 optimizedBody844_188

def optimizedBody844_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_58 optimizedBody844_189

def optimizedBody844_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_190

def optimizedBody844_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_15 optimizedBody844_191

def optimizedBody844_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_57 optimizedBody844_192

def optimizedBody844_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_193

def optimizedBody844_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_194

def optimizedBody844_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_56 optimizedBody844_195

def optimizedBody844_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_196

def optimizedBody844_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_9 optimizedBody844_197

def optimizedBody844_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_55 optimizedBody844_198

def optimizedBody844_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_199

def optimizedBody844_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_54 optimizedBody844_200

def optimizedBody844_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_53 optimizedBody844_201

def optimizedBody844_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_202

def optimizedBody844_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_52 optimizedBody844_203

def optimizedBody844_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_51 optimizedBody844_204

def optimizedBody844_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_205

def optimizedBody844_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_50 optimizedBody844_206

def optimizedBody844_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_49 optimizedBody844_207

def optimizedBody844_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_208

def optimizedBody844_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_48 optimizedBody844_209

def optimizedBody844_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_47 optimizedBody844_210

def optimizedBody844_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_211

def optimizedBody844_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_46 optimizedBody844_212

def optimizedBody844_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_45 optimizedBody844_213

def optimizedBody844_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_40 optimizedBody844_214

def optimizedBody844_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_39 optimizedBody844_215

def optimizedBody844_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_38 optimizedBody844_216

def optimizedBody844_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_37 optimizedBody844_217

def optimizedBody844_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_36 optimizedBody844_218

def optimizedBody844_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_35 optimizedBody844_219

def optimizedBody844_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_34 optimizedBody844_220

def optimizedBody844_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_33 optimizedBody844_221

def optimizedBody844_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_32 optimizedBody844_222

def optimizedBody844_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_31 optimizedBody844_223

def optimizedBody844_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_30 optimizedBody844_224

def optimizedBody844_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_29 optimizedBody844_225

def optimizedBody844_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_28 optimizedBody844_226

def optimizedBody844_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_27 optimizedBody844_227

def optimizedBody844_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_26 optimizedBody844_228

def optimizedBody844_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_25 optimizedBody844_229

def optimizedBody844_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_24 optimizedBody844_230

def optimizedBody844_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_23 optimizedBody844_231

def optimizedBody844_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_22 optimizedBody844_232

def optimizedBody844_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_21 optimizedBody844_233

def optimizedBody844_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_20 optimizedBody844_234

def optimizedBody844_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_19 optimizedBody844_235

def optimizedBody844_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_18 optimizedBody844_236

def optimizedBody844_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_17 optimizedBody844_237

def optimizedBody844_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_16 optimizedBody844_238

def optimizedBody844_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_239

def optimizedBody844_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_15 optimizedBody844_240

def optimizedBody844_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_14 optimizedBody844_241

def optimizedBody844_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_242

def optimizedBody844_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_13 optimizedBody844_243

def optimizedBody844_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_12 optimizedBody844_244

def optimizedBody844_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_245

def optimizedBody844_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_11 optimizedBody844_246

def optimizedBody844_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_10 optimizedBody844_247

def optimizedBody844_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_248

def optimizedBody844_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_9 optimizedBody844_249

def optimizedBody844_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_8 optimizedBody844_250

def optimizedBody844_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_251

def optimizedBody844_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_7 optimizedBody844_252

def optimizedBody844_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_6 optimizedBody844_253

def optimizedBody844_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_5 optimizedBody844_254

def optimizedBody844_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_4 optimizedBody844_255

def optimizedBody844_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_3 optimizedBody844_256

def optimizedBody844_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_2 optimizedBody844_257

def optimizedBody844_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_1 optimizedBody844_258

def optimizedBody844_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody844_0 optimizedBody844_259

def optimized844 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(844, 2, optimizedBody844_260)
end InitECandidate.Proofs.StackAnalysis
