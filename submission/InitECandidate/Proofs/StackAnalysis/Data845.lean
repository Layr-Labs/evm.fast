import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody845_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody845_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody845_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody845_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 2), (44, 44), (18, 46)]

def optimizedBody845_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (18, 46)]

def optimizedBody845_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody845_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_4 optimizedBody845_5

def optimizedBody845_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_3, 845, 2)) (some 68) ([2]) (some (2, optimizedBody845_6, 845, 3))

def optimizedBody845_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody845_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody845_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 20 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody845_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody845_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody845_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody845_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody845_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody845_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody845_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody845_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody845_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody845_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody845_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 18 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody845_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody845_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 18 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody845_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody845_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 18 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody845_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody845_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody845_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16 16 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody845_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody845_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody845_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 14 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody845_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody845_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody845_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 12 14 (Flapjack.WordRegImm.reg 12)))

def optimizedBody845_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody845_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody845_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody845_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody845_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody845_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody845_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody845_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody845_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 8 (Flapjack.WordRegImm.reg 0)))

def optimizedBody845_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody845_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody845_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody845_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody845_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody845_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 18), (50, 20)]

def optimizedBody845_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (18, 48), (50, 50)]

def optimizedBody845_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (18, 48), (50, 50)]

def optimizedBody845_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_51 optimizedBody845_5

def optimizedBody845_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_50, 845, 4)) (some 177) ([2, 4]) (some (2, optimizedBody845_52, 845, 5))

def optimizedBody845_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody845_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody845_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2)]

def optimizedBody845_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody845_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody845_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 18 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody845_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 18 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody845_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody845_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 18 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody845_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody845_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody845_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 18 (Flapjack.WordRegImm.imm 13#64)))

def optimizedBody845_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 18 (Flapjack.WordRegImm.imm 14#64)))

def optimizedBody845_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 18 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody845_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2)]

def optimizedBody845_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody845_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 12 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody845_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody845_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody845_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 10 (Flapjack.WordRegImm.reg 16)))

def optimizedBody845_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody845_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody845_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody845_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody845_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 18), (50, 50)]

def optimizedBody845_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46), (0, 48), (50, 50)]

def optimizedBody845_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (50, 50)]

def optimizedBody845_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_80 optimizedBody845_5

def optimizedBody845_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_79, 845, 6)) (some 177) ([2, 4]) (some (2, optimizedBody845_81, 845, 7))

def optimizedBody845_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody845_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody845_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody845_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody845_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody845_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2), (48, 0), (50, 50)]

def optimizedBody845_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (14, 48), (48, 50)]

def optimizedBody845_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (14, 48), (48, 50)]

def optimizedBody845_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_90 optimizedBody845_5

def optimizedBody845_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_89, 845, 8)) (some 176) ([2, 4, 6]) (some (2, optimizedBody845_91, 845, 9))

def optimizedBody845_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 36#64)))

def optimizedBody845_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.imm 37#64)))

def optimizedBody845_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 14 (Flapjack.WordRegImm.imm 38#64)))

def optimizedBody845_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody845_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.imm 39#64)))

def optimizedBody845_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 14 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody845_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 14 (Flapjack.WordRegImm.imm 41#64)))

def optimizedBody845_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 14 (Flapjack.WordRegImm.imm 42#64)))

def optimizedBody845_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 43#64)))

def optimizedBody845_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody845_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody845_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 6 (Flapjack.WordRegImm.reg 4)))

def optimizedBody845_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody845_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 48)]

def optimizedBody845_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody845_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody845_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_108 optimizedBody845_5

def optimizedBody845_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_107, 845, 10)) (some 177) ([2, 4]) (some (2, optimizedBody845_109, 845, 11))

def optimizedBody845_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody845_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 6)]

def optimizedBody845_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (6, 46)]

def optimizedBody845_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46)]

def optimizedBody845_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_114 optimizedBody845_5

def optimizedBody845_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody845_113, 845, 12)) (some 840) ([2, 4]) (some (2, optimizedBody845_115, 845, 13))

def optimizedBody845_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody845_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody845_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_117 optimizedBody845_118

def optimizedBody845_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_119

def optimizedBody845_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_116 optimizedBody845_120

def optimizedBody845_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_112 optimizedBody845_121

def optimizedBody845_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_111 optimizedBody845_122

def optimizedBody845_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_54 optimizedBody845_123

def optimizedBody845_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_124

def optimizedBody845_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_110 optimizedBody845_125

def optimizedBody845_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_106 optimizedBody845_126

def optimizedBody845_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_105 optimizedBody845_127

def optimizedBody845_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_41 optimizedBody845_128

def optimizedBody845_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_104 optimizedBody845_129

def optimizedBody845_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_45 optimizedBody845_130

def optimizedBody845_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_44 optimizedBody845_131

def optimizedBody845_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_103 optimizedBody845_132

def optimizedBody845_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_102 optimizedBody845_133

def optimizedBody845_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_47 optimizedBody845_134

def optimizedBody845_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_40 optimizedBody845_135

def optimizedBody845_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_39 optimizedBody845_136

def optimizedBody845_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_38 optimizedBody845_137

def optimizedBody845_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_37 optimizedBody845_138

def optimizedBody845_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_73 optimizedBody845_139

def optimizedBody845_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_72 optimizedBody845_140

def optimizedBody845_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_36 optimizedBody845_141

def optimizedBody845_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_71 optimizedBody845_142

def optimizedBody845_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_35 optimizedBody845_143

def optimizedBody845_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_34 optimizedBody845_144

def optimizedBody845_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_70 optimizedBody845_145

def optimizedBody845_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_32 optimizedBody845_146

def optimizedBody845_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_69 optimizedBody845_147

def optimizedBody845_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_68 optimizedBody845_148

def optimizedBody845_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_24 optimizedBody845_149

def optimizedBody845_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_101 optimizedBody845_150

def optimizedBody845_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_151

def optimizedBody845_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_22 optimizedBody845_152

def optimizedBody845_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_100 optimizedBody845_153

def optimizedBody845_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_154

def optimizedBody845_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_20 optimizedBody845_155

def optimizedBody845_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_99 optimizedBody845_156

def optimizedBody845_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_157

def optimizedBody845_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_64 optimizedBody845_158

def optimizedBody845_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_98 optimizedBody845_159

def optimizedBody845_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_160

def optimizedBody845_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_18 optimizedBody845_161

def optimizedBody845_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_97 optimizedBody845_162

def optimizedBody845_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_163

def optimizedBody845_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_96 optimizedBody845_164

def optimizedBody845_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_95 optimizedBody845_165

def optimizedBody845_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_166

def optimizedBody845_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_61 optimizedBody845_167

def optimizedBody845_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_94 optimizedBody845_168

def optimizedBody845_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_169

def optimizedBody845_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_16 optimizedBody845_170

def optimizedBody845_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_93 optimizedBody845_171

def optimizedBody845_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_68 optimizedBody845_172

def optimizedBody845_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_55 optimizedBody845_173

def optimizedBody845_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_54 optimizedBody845_174

def optimizedBody845_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_175

def optimizedBody845_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_92 optimizedBody845_176

def optimizedBody845_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_88 optimizedBody845_177

def optimizedBody845_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_87 optimizedBody845_178

def optimizedBody845_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_86 optimizedBody845_179

def optimizedBody845_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_85 optimizedBody845_180

def optimizedBody845_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_84 optimizedBody845_181

def optimizedBody845_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_83 optimizedBody845_182

def optimizedBody845_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_183

def optimizedBody845_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_82 optimizedBody845_184

def optimizedBody845_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_78 optimizedBody845_185

def optimizedBody845_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_48 optimizedBody845_186

def optimizedBody845_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_47 optimizedBody845_187

def optimizedBody845_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_77 optimizedBody845_188

def optimizedBody845_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_76 optimizedBody845_189

def optimizedBody845_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_41 optimizedBody845_190

def optimizedBody845_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_75 optimizedBody845_191

def optimizedBody845_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_74 optimizedBody845_192

def optimizedBody845_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_44 optimizedBody845_193

def optimizedBody845_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_40 optimizedBody845_194

def optimizedBody845_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_39 optimizedBody845_195

def optimizedBody845_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_38 optimizedBody845_196

def optimizedBody845_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_37 optimizedBody845_197

def optimizedBody845_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_73 optimizedBody845_198

def optimizedBody845_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_72 optimizedBody845_199

def optimizedBody845_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_36 optimizedBody845_200

def optimizedBody845_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_71 optimizedBody845_201

def optimizedBody845_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_35 optimizedBody845_202

def optimizedBody845_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_34 optimizedBody845_203

def optimizedBody845_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_70 optimizedBody845_204

def optimizedBody845_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_32 optimizedBody845_205

def optimizedBody845_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_69 optimizedBody845_206

def optimizedBody845_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_68 optimizedBody845_207

def optimizedBody845_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_24 optimizedBody845_208

def optimizedBody845_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_67 optimizedBody845_209

def optimizedBody845_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_210

def optimizedBody845_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_22 optimizedBody845_211

def optimizedBody845_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_66 optimizedBody845_212

def optimizedBody845_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_213

def optimizedBody845_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_20 optimizedBody845_214

def optimizedBody845_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_65 optimizedBody845_215

def optimizedBody845_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_216

def optimizedBody845_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_64 optimizedBody845_217

def optimizedBody845_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_63 optimizedBody845_218

def optimizedBody845_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_219

def optimizedBody845_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_18 optimizedBody845_220

def optimizedBody845_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_62 optimizedBody845_221

def optimizedBody845_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_222

def optimizedBody845_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_61 optimizedBody845_223

def optimizedBody845_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_60 optimizedBody845_224

def optimizedBody845_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_225

def optimizedBody845_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_16 optimizedBody845_226

def optimizedBody845_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_59 optimizedBody845_227

def optimizedBody845_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_228

def optimizedBody845_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_58 optimizedBody845_229

def optimizedBody845_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_57 optimizedBody845_230

def optimizedBody845_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_56 optimizedBody845_231

def optimizedBody845_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_55 optimizedBody845_232

def optimizedBody845_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_54 optimizedBody845_233

def optimizedBody845_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_234

def optimizedBody845_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_53 optimizedBody845_235

def optimizedBody845_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_49 optimizedBody845_236

def optimizedBody845_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_48 optimizedBody845_237

def optimizedBody845_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_47 optimizedBody845_238

def optimizedBody845_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_46 optimizedBody845_239

def optimizedBody845_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_45 optimizedBody845_240

def optimizedBody845_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_44 optimizedBody845_241

def optimizedBody845_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_43 optimizedBody845_242

def optimizedBody845_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_42 optimizedBody845_243

def optimizedBody845_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_41 optimizedBody845_244

def optimizedBody845_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_40 optimizedBody845_245

def optimizedBody845_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_39 optimizedBody845_246

def optimizedBody845_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_38 optimizedBody845_247

def optimizedBody845_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_37 optimizedBody845_248

def optimizedBody845_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_36 optimizedBody845_249

def optimizedBody845_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_35 optimizedBody845_250

def optimizedBody845_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_34 optimizedBody845_251

def optimizedBody845_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_33 optimizedBody845_252

def optimizedBody845_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_32 optimizedBody845_253

def optimizedBody845_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_31 optimizedBody845_254

def optimizedBody845_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_30 optimizedBody845_255

def optimizedBody845_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_29 optimizedBody845_256

def optimizedBody845_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_28 optimizedBody845_257

def optimizedBody845_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_27 optimizedBody845_258

def optimizedBody845_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_26 optimizedBody845_259

def optimizedBody845_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_25 optimizedBody845_260

def optimizedBody845_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_261

def optimizedBody845_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_24 optimizedBody845_262

def optimizedBody845_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_23 optimizedBody845_263

def optimizedBody845_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_264

def optimizedBody845_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_22 optimizedBody845_265

def optimizedBody845_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_21 optimizedBody845_266

def optimizedBody845_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_267

def optimizedBody845_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_20 optimizedBody845_268

def optimizedBody845_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_19 optimizedBody845_269

def optimizedBody845_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_270

def optimizedBody845_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_18 optimizedBody845_271

def optimizedBody845_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_17 optimizedBody845_272

def optimizedBody845_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_273

def optimizedBody845_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_16 optimizedBody845_274

def optimizedBody845_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_15 optimizedBody845_275

def optimizedBody845_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_276

def optimizedBody845_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_14 optimizedBody845_277

def optimizedBody845_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_13 optimizedBody845_278

def optimizedBody845_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_279

def optimizedBody845_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_12 optimizedBody845_280

def optimizedBody845_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_11 optimizedBody845_281

def optimizedBody845_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_10 optimizedBody845_282

def optimizedBody845_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_9 optimizedBody845_283

def optimizedBody845_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_8 optimizedBody845_284

def optimizedBody845_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_7 optimizedBody845_285

def optimizedBody845_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_2 optimizedBody845_286

def optimizedBody845_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_1 optimizedBody845_287

def optimizedBody845_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody845_0 optimizedBody845_288

def optimized845 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(845, 2, optimizedBody845_289)
end InitECandidate.Proofs.StackAnalysis
