import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody834_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody834_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody834_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody834_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody834_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody834_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody834_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 12 96#64))

def optimizedBody834_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody834_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 213#64)

def optimizedBody834_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody834_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody834_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody834_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody834_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody834_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody834_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody834_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_15 optimizedBody834_16

def optimizedBody834_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_14 optimizedBody834_17

def optimizedBody834_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_13 optimizedBody834_18

def optimizedBody834_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_19

def optimizedBody834_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_11 optimizedBody834_20

def optimizedBody834_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_21

def optimizedBody834_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody834_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 2) optimizedBody834_22 optimizedBody834_23

def optimizedBody834_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 12 88#64))

def optimizedBody834_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody834_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody834_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody834_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody834_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody834_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody834_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody834_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody834_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody834_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody834_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody834_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody834_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody834_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 212#64)))

def optimizedBody834_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0), (44, 6), (52, 12), (54, 2), (56, 4), (58, 14)]

def optimizedBody834_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_45 optimizedBody834_16

def optimizedBody834_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_44, 834, 2)) (some 470) ([2]) (some (2, optimizedBody834_46, 834, 3))

def optimizedBody834_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody834_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody834_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody834_22 optimizedBody834_23

def optimizedBody834_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody834_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_54 optimizedBody834_16

def optimizedBody834_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_53, 834, 4)) (some 68) ([2]) (some (2, optimizedBody834_55, 834, 5))

def optimizedBody834_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (44, 44), (48, 0), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody834_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_59 optimizedBody834_16

def optimizedBody834_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_58, 834, 6)) (some 69) ([]) (some (2, optimizedBody834_60, 834, 7))

def optimizedBody834_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (62, 0)]

def optimizedBody834_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62)]

def optimizedBody834_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (44, 44), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62)]

def optimizedBody834_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_64 optimizedBody834_16

def optimizedBody834_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_63, 834, 8)) (some 68) ([2]) (some (2, optimizedBody834_65, 834, 9))

def optimizedBody834_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody834_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (44, 44), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (62, 62)]

def optimizedBody834_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (46, 46), (22, 44), (44, 48), (0, 50), (52, 52), (20, 54), (4, 56), (56, 58), (62, 62)]

def optimizedBody834_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (22, 44), (44, 48), (0, 50), (52, 52), (20, 54), (4, 56), (56, 58), (62, 62)]

def optimizedBody834_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_70 optimizedBody834_16

def optimizedBody834_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_69, 834, 10)) (some 68) ([2]) (some (2, optimizedBody834_71, 834, 11))

def optimizedBody834_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody834_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (22, 22), (44, 44), (14, 14), (0, 0), (52, 52), (20, 20), (4, 4), (18, 18), (56, 56), (62, 62)]

def optimizedBody834_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody834_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody834_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2), (14, 14)]

def optimizedBody834_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody834_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody834_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (4, 4), (14, 14)]

def optimizedBody834_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody834_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 6#64)))

def optimizedBody834_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 28 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody834_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 28 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody834_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 28 (Flapjack.WordRegImm.imm 9#64)))

def optimizedBody834_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def optimizedBody834_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 28 (Flapjack.WordRegImm.imm 10#64)))

def optimizedBody834_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def optimizedBody834_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 28 (Flapjack.WordRegImm.imm 11#64)))

def optimizedBody834_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28)]

def optimizedBody834_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 28 28 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody834_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody834_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 26 26 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 26 28 (Flapjack.WordRegImm.reg 26)))

def optimizedBody834_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody834_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 24 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 24 26 (Flapjack.WordRegImm.reg 24)))

def optimizedBody834_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody834_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 24 (Flapjack.WordRegImm.reg 10)))

def optimizedBody834_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody834_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody834_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody834_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody834_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody834_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody834_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody834_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (0, 0), (4, 4)]

def optimizedBody834_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody834_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_115 optimizedBody834_116

def optimizedBody834_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_114 optimizedBody834_117

def optimizedBody834_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_118

def optimizedBody834_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_113 optimizedBody834_119

def optimizedBody834_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_112 optimizedBody834_120

def optimizedBody834_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_111 optimizedBody834_121

def optimizedBody834_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_122

def optimizedBody834_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_108 optimizedBody834_123

def optimizedBody834_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_110 optimizedBody834_124

def optimizedBody834_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_109 optimizedBody834_125

def optimizedBody834_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_108 optimizedBody834_126

def optimizedBody834_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_38 optimizedBody834_127

def optimizedBody834_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_37 optimizedBody834_128

def optimizedBody834_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_107 optimizedBody834_129

def optimizedBody834_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_40 optimizedBody834_130

def optimizedBody834_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_131

def optimizedBody834_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_106 optimizedBody834_132

def optimizedBody834_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_105 optimizedBody834_133

def optimizedBody834_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_104 optimizedBody834_134

def optimizedBody834_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_103 optimizedBody834_135

def optimizedBody834_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_102 optimizedBody834_136

def optimizedBody834_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_101 optimizedBody834_137

def optimizedBody834_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_100 optimizedBody834_138

def optimizedBody834_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_99 optimizedBody834_139

def optimizedBody834_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_98 optimizedBody834_140

def optimizedBody834_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_97 optimizedBody834_141

def optimizedBody834_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_96 optimizedBody834_142

def optimizedBody834_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_95 optimizedBody834_143

def optimizedBody834_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_94 optimizedBody834_144

def optimizedBody834_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_145

def optimizedBody834_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_93 optimizedBody834_146

def optimizedBody834_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_92 optimizedBody834_147

def optimizedBody834_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_148

def optimizedBody834_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_91 optimizedBody834_149

def optimizedBody834_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_90 optimizedBody834_150

def optimizedBody834_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_151

def optimizedBody834_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_89 optimizedBody834_152

def optimizedBody834_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_88 optimizedBody834_153

def optimizedBody834_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_154

def optimizedBody834_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_87 optimizedBody834_155

def optimizedBody834_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_86 optimizedBody834_156

def optimizedBody834_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_157

def optimizedBody834_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_85 optimizedBody834_158

def optimizedBody834_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_84 optimizedBody834_159

def optimizedBody834_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_160

def optimizedBody834_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_83 optimizedBody834_161

def optimizedBody834_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_82 optimizedBody834_162

def optimizedBody834_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_163

def optimizedBody834_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_80 optimizedBody834_164

def optimizedBody834_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_79 optimizedBody834_165

def optimizedBody834_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_78 optimizedBody834_166

def optimizedBody834_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_77 optimizedBody834_167

def optimizedBody834_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_76 optimizedBody834_168

def optimizedBody834_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_169

def optimizedBody834_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_75 optimizedBody834_170

def optimizedBody834_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_171

def optimizedBody834_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_172

def optimizedBody834_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody834_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_174

def optimizedBody834_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 2) optimizedBody834_173 optimizedBody834_175

def optimizedBody834_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_115

def optimizedBody834_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_176 optimizedBody834_177

def optimizedBody834_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_14 optimizedBody834_178

def optimizedBody834_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_179

def optimizedBody834_181 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody834_180 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody834_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (22, 22), (44, 44), (14, 14), (24, 0), (52, 52), (20, 20), (4, 4), (6, 18), (56, 56), (62, 62)]

def optimizedBody834_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody834_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody834_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 6)]

def optimizedBody834_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody834_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0), (14, 14)]

def optimizedBody834_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody834_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 68#64)))

def optimizedBody834_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 69#64)))

def optimizedBody834_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 70#64)))

def optimizedBody834_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 28 (Flapjack.WordRegImm.imm 71#64)))

def optimizedBody834_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 28 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody834_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 28 (Flapjack.WordRegImm.imm 73#64)))

def optimizedBody834_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody834_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 28 (Flapjack.WordRegImm.imm 74#64)))

def optimizedBody834_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 28 (Flapjack.WordRegImm.imm 75#64)))

def optimizedBody834_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody834_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 18 18 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 26 (Flapjack.WordRegImm.reg 18)))

def optimizedBody834_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 18 (Flapjack.WordRegImm.reg 10)))

def optimizedBody834_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody834_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 10 (Flapjack.WordRegImm.reg 0)))

def optimizedBody834_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody834_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody834_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody834_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody834_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (4, 4), (6, 16)]

def optimizedBody834_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_214 optimizedBody834_116

def optimizedBody834_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_114 optimizedBody834_215

def optimizedBody834_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_216

def optimizedBody834_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_213 optimizedBody834_217

def optimizedBody834_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_212 optimizedBody834_218

def optimizedBody834_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_211 optimizedBody834_219

def optimizedBody834_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_109 optimizedBody834_220

def optimizedBody834_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_221

def optimizedBody834_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_210 optimizedBody834_222

def optimizedBody834_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_37 optimizedBody834_223

def optimizedBody834_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_224

def optimizedBody834_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_208 optimizedBody834_225

def optimizedBody834_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_226

def optimizedBody834_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_207 optimizedBody834_227

def optimizedBody834_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_206 optimizedBody834_228

def optimizedBody834_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_229

def optimizedBody834_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_106 optimizedBody834_230

def optimizedBody834_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_205 optimizedBody834_231

def optimizedBody834_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_104 optimizedBody834_232

def optimizedBody834_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_204 optimizedBody834_233

def optimizedBody834_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_203 optimizedBody834_234

def optimizedBody834_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_202 optimizedBody834_235

def optimizedBody834_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_100 optimizedBody834_236

def optimizedBody834_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_99 optimizedBody834_237

def optimizedBody834_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_98 optimizedBody834_238

def optimizedBody834_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_97 optimizedBody834_239

def optimizedBody834_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_96 optimizedBody834_240

def optimizedBody834_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_95 optimizedBody834_241

def optimizedBody834_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_201 optimizedBody834_242

def optimizedBody834_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_243

def optimizedBody834_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_93 optimizedBody834_244

def optimizedBody834_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_200 optimizedBody834_245

def optimizedBody834_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_246

def optimizedBody834_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_199 optimizedBody834_247

def optimizedBody834_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_198 optimizedBody834_248

def optimizedBody834_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_249

def optimizedBody834_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_89 optimizedBody834_250

def optimizedBody834_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_197 optimizedBody834_251

def optimizedBody834_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_252

def optimizedBody834_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_196 optimizedBody834_253

def optimizedBody834_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_195 optimizedBody834_254

def optimizedBody834_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_255

def optimizedBody834_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_194 optimizedBody834_256

def optimizedBody834_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_193 optimizedBody834_257

def optimizedBody834_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_258

def optimizedBody834_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_192 optimizedBody834_259

def optimizedBody834_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_191 optimizedBody834_260

def optimizedBody834_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_261

def optimizedBody834_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_190 optimizedBody834_262

def optimizedBody834_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_189 optimizedBody834_263

def optimizedBody834_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_188 optimizedBody834_264

def optimizedBody834_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_187 optimizedBody834_265

def optimizedBody834_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_186 optimizedBody834_266

def optimizedBody834_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_185 optimizedBody834_267

def optimizedBody834_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_184 optimizedBody834_268

def optimizedBody834_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_269

def optimizedBody834_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_270

def optimizedBody834_272 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 0) optimizedBody834_271 optimizedBody834_175

def optimizedBody834_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (4, 4), (6, 6)]

def optimizedBody834_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_273

def optimizedBody834_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_272 optimizedBody834_274

def optimizedBody834_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_183 optimizedBody834_275

def optimizedBody834_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_276

def optimizedBody834_278 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln) optimizedBody834_277 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)))
  Flapjack.Spt.ln)

def optimizedBody834_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 4)]

def optimizedBody834_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 196#64)))

def optimizedBody834_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 12 (Flapjack.WordRegImm.imm 197#64)))

def optimizedBody834_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 198#64)))

def optimizedBody834_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 199#64)))

def optimizedBody834_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 200#64)))

def optimizedBody834_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody834_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 201#64)))

def optimizedBody834_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody834_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 202#64)))

def optimizedBody834_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody834_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 203#64)))

def optimizedBody834_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody834_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 12 (Flapjack.WordRegImm.imm 204#64)))

def optimizedBody834_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 205#64)))

def optimizedBody834_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 206#64)))

def optimizedBody834_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 207#64)))

def optimizedBody834_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 36 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 208#64)))

def optimizedBody834_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 209#64)))

def optimizedBody834_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 32 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 210#64)))

def optimizedBody834_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 28 0#64))

def optimizedBody834_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 12 (Flapjack.WordRegImm.imm 211#64)))

def optimizedBody834_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 4), (6, 6), (4, 24), (20, 20)]

def optimizedBody834_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 24 24 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody834_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody834_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 14)))

def optimizedBody834_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody834_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody834_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody834_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody834_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody834_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 0 (Flapjack.WordRegImm.reg 18)))

def optimizedBody834_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 28 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody834_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30)]

def optimizedBody834_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 30 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody834_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 32 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 34)]

def optimizedBody834_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 34)))

def optimizedBody834_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody834_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 36)]

def optimizedBody834_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 36 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody834_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 38)]

def optimizedBody834_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 38 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody834_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40)]

def optimizedBody834_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 40 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody834_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 10 0 (Flapjack.WordRegImm.reg 26)))

def optimizedBody834_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 20), (4, 4), (6, 6), (8, 8), (10, 10), (12, 22), (46, 46), (54, 22), (44, 44), (48, 4), (52, 52), (60, 20),
    (50, 12), (58, 6), (56, 56), (62, 62)]

def optimizedBody834_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (54, 54), (6, 44), (0, 48), (52, 52), (60, 60), (50, 50), (58, 58), (56, 56), (44, 62)]

def optimizedBody834_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (54, 54), (6, 44), (0, 48), (52, 52), (60, 60), (50, 50), (58, 58), (56, 56), (44, 62)]

def optimizedBody834_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_339 optimizedBody834_16

def optimizedBody834_341 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_338, 834, 12)) (some 634) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody834_340, 834, 13))

def optimizedBody834_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody834_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (54, 54), (48, 6), (4, 4), (0, 0), (52, 52), (60, 60), (50, 50), (58, 58), (56, 56), (44, 44)]

def optimizedBody834_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody834_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48)]

def optimizedBody834_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody834_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6), (48, 4)]

def optimizedBody834_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody834_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody834_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (46, 46), (54, 54), (48, 8), (44, 48), (50, 0), (52, 52), (60, 60), (56, 50), (58, 58), (62, 56),
    (64, 44)]

def optimizedBody834_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(46, 46), (6, 54), (48, 48), (4, 44), (0, 50), (8, 52), (10, 60), (12, 56), (14, 58), (16, 62), (18, 64)]

def optimizedBody834_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (46, 46), (6, 54), (48, 48), (4, 44), (0, 50), (8, 52), (10, 60), (12, 56), (14, 58), (16, 62), (18, 64)]

def optimizedBody834_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_352 optimizedBody834_16

def optimizedBody834_354 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_351, 834, 14)) (some 87) ([2, 4]) (some (2, optimizedBody834_353, 834, 15))

def optimizedBody834_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 46), (54, 6), (48, 48), (4, 4), (0, 0), (52, 8), (60, 10), (50, 12), (58, 14), (56, 16), (44, 18)]

def optimizedBody834_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_356 optimizedBody834_116

def optimizedBody834_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_355 optimizedBody834_357

def optimizedBody834_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_358

def optimizedBody834_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_359

def optimizedBody834_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_354 optimizedBody834_360

def optimizedBody834_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_350 optimizedBody834_361

def optimizedBody834_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_349 optimizedBody834_362

def optimizedBody834_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_348 optimizedBody834_363

def optimizedBody834_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_347 optimizedBody834_364

def optimizedBody834_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_346 optimizedBody834_365

def optimizedBody834_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_345 optimizedBody834_366

def optimizedBody834_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_344 optimizedBody834_367

def optimizedBody834_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_368

def optimizedBody834_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_369

def optimizedBody834_371 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 2) optimizedBody834_370 optimizedBody834_175

def optimizedBody834_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(46, 2), (54, 6), (48, 8), (4, 4), (0, 0), (52, 10), (60, 12), (50, 14), (58, 16), (56, 18), (44, 20)]

def optimizedBody834_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_372

def optimizedBody834_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_371 optimizedBody834_373

def optimizedBody834_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_14 optimizedBody834_374

def optimizedBody834_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_375

def optimizedBody834_377 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody834_376 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody834_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (44, 46), (46, 48)]

def optimizedBody834_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46)]

def optimizedBody834_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody834_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_380 optimizedBody834_16

def optimizedBody834_382 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_379, 834, 16)) (some 70) ([2]) (some (2, optimizedBody834_381, 834, 17))

def optimizedBody834_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody834_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody834_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody834_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody834_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody834_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody834_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody834_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody834_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody834_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_394

def optimizedBody834_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_393 optimizedBody834_395

def optimizedBody834_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_392 optimizedBody834_396

def optimizedBody834_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_397

def optimizedBody834_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_51 optimizedBody834_398

def optimizedBody834_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_391 optimizedBody834_399

def optimizedBody834_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_390 optimizedBody834_400

def optimizedBody834_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_0 optimizedBody834_401

def optimizedBody834_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_389 optimizedBody834_402

def optimizedBody834_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_388 optimizedBody834_403

def optimizedBody834_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_387 optimizedBody834_404

def optimizedBody834_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_386 optimizedBody834_405

def optimizedBody834_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_385 optimizedBody834_406

def optimizedBody834_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_384 optimizedBody834_407

def optimizedBody834_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_383 optimizedBody834_408

def optimizedBody834_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_409

def optimizedBody834_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_382 optimizedBody834_410

def optimizedBody834_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_378 optimizedBody834_411

def optimizedBody834_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_412

def optimizedBody834_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_377 optimizedBody834_413

def optimizedBody834_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_343 optimizedBody834_414

def optimizedBody834_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_415

def optimizedBody834_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_342 optimizedBody834_416

def optimizedBody834_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_417

def optimizedBody834_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_341 optimizedBody834_418

def optimizedBody834_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_337 optimizedBody834_419

def optimizedBody834_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_336 optimizedBody834_420

def optimizedBody834_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_98 optimizedBody834_421

def optimizedBody834_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_422

def optimizedBody834_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_335 optimizedBody834_423

def optimizedBody834_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_334 optimizedBody834_424

def optimizedBody834_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_425

def optimizedBody834_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_333 optimizedBody834_426

def optimizedBody834_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_332 optimizedBody834_427

def optimizedBody834_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_428

def optimizedBody834_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_331 optimizedBody834_429

def optimizedBody834_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_330 optimizedBody834_430

def optimizedBody834_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_329 optimizedBody834_431

def optimizedBody834_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_328 optimizedBody834_432

def optimizedBody834_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_327 optimizedBody834_433

def optimizedBody834_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_434

def optimizedBody834_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_326 optimizedBody834_435

def optimizedBody834_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_325 optimizedBody834_436

def optimizedBody834_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_209 optimizedBody834_437

def optimizedBody834_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_324 optimizedBody834_438

def optimizedBody834_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_323 optimizedBody834_439

def optimizedBody834_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_322 optimizedBody834_440

def optimizedBody834_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_96 optimizedBody834_441

def optimizedBody834_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_321 optimizedBody834_442

def optimizedBody834_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_202 optimizedBody834_443

def optimizedBody834_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_320 optimizedBody834_444

def optimizedBody834_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_319 optimizedBody834_445

def optimizedBody834_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_446

def optimizedBody834_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_318 optimizedBody834_447

def optimizedBody834_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_317 optimizedBody834_448

def optimizedBody834_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_316 optimizedBody834_449

def optimizedBody834_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_315 optimizedBody834_450

def optimizedBody834_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_40 optimizedBody834_451

def optimizedBody834_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_452

def optimizedBody834_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_314 optimizedBody834_453

def optimizedBody834_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_313 optimizedBody834_454

def optimizedBody834_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_455

def optimizedBody834_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_312 optimizedBody834_456

def optimizedBody834_458 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_311 optimizedBody834_457

def optimizedBody834_459 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_109 optimizedBody834_458

def optimizedBody834_460 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_105 optimizedBody834_459

def optimizedBody834_461 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_310 optimizedBody834_460

def optimizedBody834_462 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_104 optimizedBody834_461

def optimizedBody834_463 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_309 optimizedBody834_462

def optimizedBody834_464 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_308 optimizedBody834_463

def optimizedBody834_465 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_95 optimizedBody834_464

def optimizedBody834_466 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_307 optimizedBody834_465

def optimizedBody834_467 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_466

def optimizedBody834_468 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_306 optimizedBody834_467

def optimizedBody834_469 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_305 optimizedBody834_468

def optimizedBody834_470 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_469

def optimizedBody834_471 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_304 optimizedBody834_470

def optimizedBody834_472 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_303 optimizedBody834_471

def optimizedBody834_473 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_472

def optimizedBody834_474 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_302 optimizedBody834_473

def optimizedBody834_475 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_301 optimizedBody834_474

def optimizedBody834_476 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_475

def optimizedBody834_477 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_300 optimizedBody834_476

def optimizedBody834_478 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_299 optimizedBody834_477

def optimizedBody834_479 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_478

def optimizedBody834_480 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_298 optimizedBody834_479

def optimizedBody834_481 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_297 optimizedBody834_480

def optimizedBody834_482 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_481

def optimizedBody834_483 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_296 optimizedBody834_482

def optimizedBody834_484 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_295 optimizedBody834_483

def optimizedBody834_485 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_484

def optimizedBody834_486 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_93 optimizedBody834_485

def optimizedBody834_487 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_294 optimizedBody834_486

def optimizedBody834_488 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_487

def optimizedBody834_489 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_293 optimizedBody834_488

def optimizedBody834_490 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_292 optimizedBody834_489

def optimizedBody834_491 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_490

def optimizedBody834_492 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_291 optimizedBody834_491

def optimizedBody834_493 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_290 optimizedBody834_492

def optimizedBody834_494 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_493

def optimizedBody834_495 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_289 optimizedBody834_494

def optimizedBody834_496 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_288 optimizedBody834_495

def optimizedBody834_497 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_496

def optimizedBody834_498 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_287 optimizedBody834_497

def optimizedBody834_499 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_286 optimizedBody834_498

def optimizedBody834_500 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_499

def optimizedBody834_501 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_87 optimizedBody834_500

def optimizedBody834_502 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_285 optimizedBody834_501

def optimizedBody834_503 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_502

def optimizedBody834_504 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_284 optimizedBody834_503

def optimizedBody834_505 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_283 optimizedBody834_504

def optimizedBody834_506 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_505

def optimizedBody834_507 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_196 optimizedBody834_506

def optimizedBody834_508 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_282 optimizedBody834_507

def optimizedBody834_509 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_508

def optimizedBody834_510 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_281 optimizedBody834_509

def optimizedBody834_511 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_280 optimizedBody834_510

def optimizedBody834_512 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_279 optimizedBody834_511

def optimizedBody834_513 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_512

def optimizedBody834_514 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_278 optimizedBody834_513

def optimizedBody834_515 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_182 optimizedBody834_514

def optimizedBody834_516 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_515

def optimizedBody834_517 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_73 optimizedBody834_516

def optimizedBody834_518 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_517

def optimizedBody834_519 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_181 optimizedBody834_518

def optimizedBody834_520 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_74 optimizedBody834_519

def optimizedBody834_521 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_520

def optimizedBody834_522 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_73 optimizedBody834_521

def optimizedBody834_523 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_522

def optimizedBody834_524 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_72 optimizedBody834_523

def optimizedBody834_525 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_68 optimizedBody834_524

def optimizedBody834_526 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_67 optimizedBody834_525

def optimizedBody834_527 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_526

def optimizedBody834_528 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_66 optimizedBody834_527

def optimizedBody834_529 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_62 optimizedBody834_528

def optimizedBody834_530 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_51 optimizedBody834_529

def optimizedBody834_531 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_530

def optimizedBody834_532 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_61 optimizedBody834_531

def optimizedBody834_533 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_57 optimizedBody834_532

def optimizedBody834_534 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_533

def optimizedBody834_535 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_56 optimizedBody834_534

def optimizedBody834_536 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_52 optimizedBody834_535

def optimizedBody834_537 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_51 optimizedBody834_536

def optimizedBody834_538 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_537

def optimizedBody834_539 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_538

def optimizedBody834_540 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_50 optimizedBody834_539

def optimizedBody834_541 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_540

def optimizedBody834_542 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_48 optimizedBody834_541

def optimizedBody834_543 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_542

def optimizedBody834_544 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_47 optimizedBody834_543

def optimizedBody834_545 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_43 optimizedBody834_544

def optimizedBody834_546 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_29 optimizedBody834_545

def optimizedBody834_547 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_42 optimizedBody834_546

def optimizedBody834_548 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_547

def optimizedBody834_549 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_41 optimizedBody834_548

def optimizedBody834_550 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_40 optimizedBody834_549

def optimizedBody834_551 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_550

def optimizedBody834_552 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_39 optimizedBody834_551

def optimizedBody834_553 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_38 optimizedBody834_552

def optimizedBody834_554 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_37 optimizedBody834_553

def optimizedBody834_555 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_36 optimizedBody834_554

def optimizedBody834_556 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_35 optimizedBody834_555

def optimizedBody834_557 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_34 optimizedBody834_556

def optimizedBody834_558 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_33 optimizedBody834_557

def optimizedBody834_559 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_32 optimizedBody834_558

def optimizedBody834_560 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_559

def optimizedBody834_561 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_31 optimizedBody834_560

def optimizedBody834_562 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_30 optimizedBody834_561

def optimizedBody834_563 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_562

def optimizedBody834_564 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_29 optimizedBody834_563

def optimizedBody834_565 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_28 optimizedBody834_564

def optimizedBody834_566 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_565

def optimizedBody834_567 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_27 optimizedBody834_566

def optimizedBody834_568 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_567

def optimizedBody834_569 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_25 optimizedBody834_568

def optimizedBody834_570 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_569

def optimizedBody834_571 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_570

def optimizedBody834_572 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_571

def optimizedBody834_573 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_24 optimizedBody834_572

def optimizedBody834_574 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_9 optimizedBody834_573

def optimizedBody834_575 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_574

def optimizedBody834_576 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_7 optimizedBody834_575

def optimizedBody834_577 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_576

def optimizedBody834_578 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_5 optimizedBody834_577

def optimizedBody834_579 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_4 optimizedBody834_578

def optimizedBody834_580 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_3 optimizedBody834_579

def optimizedBody834_581 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_2 optimizedBody834_580

def optimizedBody834_582 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_1 optimizedBody834_581

def optimizedBody834_583 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_0 optimizedBody834_582

def optimized834 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(834, 1, optimizedBody834_583)
end InitECandidate.Proofs.StackAnalysis
