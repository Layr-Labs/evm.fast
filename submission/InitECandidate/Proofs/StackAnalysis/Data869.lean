import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody869_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody869_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody869_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 2)]

def optimizedBody869_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody869_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody869_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 80#64))

def optimizedBody869_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6), (48, 8)]

def optimizedBody869_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (14, 2), (44, 44), (16, 46), (8, 48)]

def optimizedBody869_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (8, 48)]

def optimizedBody869_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody869_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_8 optimizedBody869_9

def optimizedBody869_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_7, 869, 2)) (some 278) ([2, 4]) (some (2, optimizedBody869_10, 869, 3))

def optimizedBody869_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody869_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody869_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 16 80#64))

def optimizedBody869_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody869_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody869_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody869_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody869_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody869_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody869_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody869_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_21 optimizedBody869_9

def optimizedBody869_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_20 optimizedBody869_22

def optimizedBody869_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_19 optimizedBody869_23

def optimizedBody869_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_18 optimizedBody869_24

def optimizedBody869_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_17 optimizedBody869_25

def optimizedBody869_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_26

def optimizedBody869_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody869_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody869_27 optimizedBody869_28

def optimizedBody869_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody869_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody869_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody869_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody869_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody869_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody869_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody869_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody869_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.imm 18446744073709551176#64)))

def optimizedBody869_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 4)]

def optimizedBody869_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody869_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551168#64)))

def optimizedBody869_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody869_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody869_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody869_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 88#64))

def optimizedBody869_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 96#64))

def optimizedBody869_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 22#64)

def optimizedBody869_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_47 optimizedBody869_25

def optimizedBody869_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_48

def optimizedBody869_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody869_49 optimizedBody869_28

def optimizedBody869_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 4), (60, 8)]

def optimizedBody869_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 104#64))

def optimizedBody869_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 12), (48, 14), (50, 6), (52, 16), (60, 60), (62, 0)]

def optimizedBody869_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (60, 60), (62, 62)]

def optimizedBody869_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (60, 60), (62, 62)]

def optimizedBody869_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_55 optimizedBody869_9

def optimizedBody869_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_54, 869, 4)) (some 282) ([2, 4]) (some (2, optimizedBody869_56, 869, 5))

def optimizedBody869_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody869_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_58 optimizedBody869_25

def optimizedBody869_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_59

def optimizedBody869_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody869_60 optimizedBody869_28

def optimizedBody869_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody869_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody869_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (56, 6), (60, 60), (62, 62)]

def optimizedBody869_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody869_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (56, 56), (60, 60), (62, 62)]

def optimizedBody869_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_66 optimizedBody869_9

def optimizedBody869_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_65, 869, 6)) (some 293) ([2, 4]) (some (2, optimizedBody869_67, 869, 7))

def optimizedBody869_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody869_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody869_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (54, 0), (56, 56), (52, 6), (60, 60), (62, 62)]

def optimizedBody869_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54), (56, 56), (4, 52), (60, 60), (62, 62)]

def optimizedBody869_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (54, 54), (56, 56), (4, 52), (60, 60), (62, 62)]

def optimizedBody869_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_73 optimizedBody869_9

def optimizedBody869_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_72, 869, 8)) (some 293) ([2, 4]) (some (2, optimizedBody869_74, 869, 9))

def optimizedBody869_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody869_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody869_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 0), (52, 6), (54, 54), (56, 56), (58, 2), (60, 60),
    (62, 62)]

def optimizedBody869_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 46), (0, 48), (48, 50), (20, 52), (18, 54), (16, 56), (14, 58), (6, 60), (8, 62)]

def optimizedBody869_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (4, 46), (0, 48), (48, 50), (20, 52), (18, 54), (16, 56), (14, 58), (6, 60), (8, 62)]

def optimizedBody869_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_80 optimizedBody869_9

def optimizedBody869_82 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody869_79, 869, 10)) (some 386) ([2, 4, 6]) (some (2, optimizedBody869_81, 869, 11))

def optimizedBody869_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 32#64))

def optimizedBody869_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody869_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def optimizedBody869_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (4, 4), (10, 10), (0, 0), (48, 48), (22, 22), (20, 20), (18, 18), (12, 12), (16, 16), (14, 14), (54, 6),
    (8, 8)]

def optimizedBody869_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (22, 22)]

def optimizedBody869_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody869_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 22 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody869_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody869_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody869_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody869_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody869_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_20 optimizedBody869_25

def optimizedBody869_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_94

def optimizedBody869_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody869_95 optimizedBody869_28

def optimizedBody869_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 22 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody869_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (22, 22), (12, 12)]

def optimizedBody869_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody869_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_98 optimizedBody869_99

def optimizedBody869_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_97 optimizedBody869_100

def optimizedBody869_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_88 optimizedBody869_101

def optimizedBody869_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_102

def optimizedBody869_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_103

def optimizedBody869_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_96 optimizedBody869_104

def optimizedBody869_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_93 optimizedBody869_105

def optimizedBody869_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_92 optimizedBody869_106

def optimizedBody869_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_91 optimizedBody869_107

def optimizedBody869_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_90 optimizedBody869_108

def optimizedBody869_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_89 optimizedBody869_109

def optimizedBody869_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_88 optimizedBody869_110

def optimizedBody869_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_111

def optimizedBody869_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody869_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_113

def optimizedBody869_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 22 (Flapjack.WordRegImm.reg 10) optimizedBody869_112 optimizedBody869_114

def optimizedBody869_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_98

def optimizedBody869_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_115 optimizedBody869_116

def optimizedBody869_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_87 optimizedBody869_117

def optimizedBody869_119 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody869_118 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody869_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 18), (44, 44), (48, 48), (50, 18), (54, 54)]

def optimizedBody869_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50), (54, 54)]

def optimizedBody869_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (54, 54)]

def optimizedBody869_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_122 optimizedBody869_9

def optimizedBody869_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_121, 869, 12)) (some 854) ([2]) (some (2, optimizedBody869_123, 869, 13))

def optimizedBody869_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody869_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (46, 0), (54, 54)]

def optimizedBody869_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody869_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (0, 46), (54, 54)]

def optimizedBody869_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_128 optimizedBody869_9

def optimizedBody869_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_127, 869, 14)) (some 68) ([2]) (some (2, optimizedBody869_129, 869, 15))

def optimizedBody869_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48), (50, 50), (52, 0), (54, 54)]

def optimizedBody869_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody869_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody869_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_133 optimizedBody869_9

def optimizedBody869_135 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody869_132, 869, 16)) (some 277) ([2, 4]) (some (2, optimizedBody869_134, 869, 17))

def optimizedBody869_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody869_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 472#64)))

def optimizedBody869_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody869_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody869_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody869_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (50, 50)]

def optimizedBody869_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_141 optimizedBody869_9

def optimizedBody869_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_140, 869, 18)) (some 79) ([2, 4, 6]) (some (2, optimizedBody869_142, 869, 19))

def optimizedBody869_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody869_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody869_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_145 optimizedBody869_23

def optimizedBody869_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_146

def optimizedBody869_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_144 optimizedBody869_147

def optimizedBody869_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_148

def optimizedBody869_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody869_149 optimizedBody869_28

def optimizedBody869_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 44), (46, 46), (48, 4), (50, 50)]

def optimizedBody869_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (46, 48), (4, 50)]

def optimizedBody869_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (4, 50)]

def optimizedBody869_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_153 optimizedBody869_9

def optimizedBody869_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_152, 869, 20)) (some 858) ([2]) (some (2, optimizedBody869_154, 869, 21))

def optimizedBody869_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 6#64)

def optimizedBody869_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_156 optimizedBody869_147

def optimizedBody869_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_157

def optimizedBody869_159 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody869_158 optimizedBody869_28

def optimizedBody869_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44), (46, 46), (48, 4)]

def optimizedBody869_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody869_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody869_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_162 optimizedBody869_9

def optimizedBody869_164 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_161, 869, 22)) (some 285) ([2, 4]) (some (2, optimizedBody869_163, 869, 23))

def optimizedBody869_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 120#64)

def optimizedBody869_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody869_167 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_166, 869, 24)) (some 68) ([2]) (some (2, optimizedBody869_163, 869, 25))

def optimizedBody869_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody869_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody869_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody869_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551208#64)))

def optimizedBody869_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody869_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody869_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody869_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551208#64))

def optimizedBody869_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 120#64)

def optimizedBody869_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody869_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody869_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody869_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_179 optimizedBody869_9

def optimizedBody869_181 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_178, 869, 26)) (some 78) ([2, 4]) (some (2, optimizedBody869_180, 869, 27))

def optimizedBody869_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 18446744073709551208#64))

def optimizedBody869_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody869_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 88#64))

def optimizedBody869_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody869_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody869_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551208#64))

def optimizedBody869_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody869_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody869_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 104#64))

def optimizedBody869_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody869_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551176#64))

def optimizedBody869_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody869_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 18446744073709551168#64))

def optimizedBody869_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody869_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody869_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody869_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody869_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody869_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 4 160#64))

def optimizedBody869_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 4 168#64))

def optimizedBody869_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 176#64))

def optimizedBody869_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 184#64))

def optimizedBody869_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (14, 14)]

def optimizedBody869_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody869_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (12, 12)]

def optimizedBody869_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody869_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (10, 10)]

def optimizedBody869_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody869_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody869_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody869_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 120#64))

def optimizedBody869_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody869_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 144#64))

def optimizedBody869_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody869_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 208#64))

def optimizedBody869_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 104#64)))

def optimizedBody869_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 216#64))

def optimizedBody869_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551208#64))

def optimizedBody869_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 112#64)))

def optimizedBody869_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 240#64))

def optimizedBody869_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody869_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody869_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody869_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody869_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody869_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_226 optimizedBody869_9

def optimizedBody869_228 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody869_225, 869, 28)) (some 868) ([2, 4]) (some (2, optimizedBody869_227, 869, 29))

def optimizedBody869_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody869_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_18 optimizedBody869_229

def optimizedBody869_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_16 optimizedBody869_230

def optimizedBody869_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_231

def optimizedBody869_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_228 optimizedBody869_232

def optimizedBody869_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_224 optimizedBody869_233

def optimizedBody869_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_223 optimizedBody869_234

def optimizedBody869_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_222 optimizedBody869_235

def optimizedBody869_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_221 optimizedBody869_236

def optimizedBody869_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_237

def optimizedBody869_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_220 optimizedBody869_238

def optimizedBody869_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_219 optimizedBody869_239

def optimizedBody869_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_240

def optimizedBody869_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_241

def optimizedBody869_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_242

def optimizedBody869_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_218 optimizedBody869_243

def optimizedBody869_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_244

def optimizedBody869_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_217 optimizedBody869_245

def optimizedBody869_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_246

def optimizedBody869_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_247

def optimizedBody869_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_248

def optimizedBody869_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_249

def optimizedBody869_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_216 optimizedBody869_250

def optimizedBody869_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_251

def optimizedBody869_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_215 optimizedBody869_252

def optimizedBody869_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_253

def optimizedBody869_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_254

def optimizedBody869_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_255

def optimizedBody869_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_256

def optimizedBody869_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_214 optimizedBody869_257

def optimizedBody869_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_258

def optimizedBody869_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_213 optimizedBody869_259

def optimizedBody869_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_260

def optimizedBody869_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_261

def optimizedBody869_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_262

def optimizedBody869_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_263

def optimizedBody869_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_212 optimizedBody869_264

def optimizedBody869_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_265

def optimizedBody869_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_211 optimizedBody869_266

def optimizedBody869_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_267

def optimizedBody869_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_268

def optimizedBody869_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_210 optimizedBody869_269

def optimizedBody869_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_270

def optimizedBody869_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_209 optimizedBody869_271

def optimizedBody869_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_208 optimizedBody869_272

def optimizedBody869_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_207 optimizedBody869_273

def optimizedBody869_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_206 optimizedBody869_274

def optimizedBody869_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_205 optimizedBody869_275

def optimizedBody869_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_204 optimizedBody869_276

def optimizedBody869_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_203 optimizedBody869_277

def optimizedBody869_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_278

def optimizedBody869_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_202 optimizedBody869_279

def optimizedBody869_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_280

def optimizedBody869_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_201 optimizedBody869_281

def optimizedBody869_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_282

def optimizedBody869_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_200 optimizedBody869_283

def optimizedBody869_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_284

def optimizedBody869_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_199 optimizedBody869_285

def optimizedBody869_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_286

def optimizedBody869_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_287

def optimizedBody869_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_288

def optimizedBody869_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_289

def optimizedBody869_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_198 optimizedBody869_290

def optimizedBody869_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_291

def optimizedBody869_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_197 optimizedBody869_292

def optimizedBody869_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_293

def optimizedBody869_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_294

def optimizedBody869_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_295

def optimizedBody869_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_296

def optimizedBody869_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_196 optimizedBody869_297

def optimizedBody869_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_298

def optimizedBody869_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_195 optimizedBody869_299

def optimizedBody869_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_300

def optimizedBody869_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_301

def optimizedBody869_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_302

def optimizedBody869_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_303

def optimizedBody869_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_194 optimizedBody869_304

def optimizedBody869_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_305

def optimizedBody869_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_193 optimizedBody869_306

def optimizedBody869_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_307

def optimizedBody869_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_308

def optimizedBody869_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_309

def optimizedBody869_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_310

def optimizedBody869_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_192 optimizedBody869_311

def optimizedBody869_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_312

def optimizedBody869_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_191 optimizedBody869_313

def optimizedBody869_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_314

def optimizedBody869_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_315

def optimizedBody869_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_316

def optimizedBody869_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_317

def optimizedBody869_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_190 optimizedBody869_318

def optimizedBody869_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_189 optimizedBody869_319

def optimizedBody869_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_188 optimizedBody869_320

def optimizedBody869_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_187 optimizedBody869_321

def optimizedBody869_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_322

def optimizedBody869_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_186 optimizedBody869_323

def optimizedBody869_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_185 optimizedBody869_324

def optimizedBody869_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_184 optimizedBody869_325

def optimizedBody869_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_183 optimizedBody869_326

def optimizedBody869_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_182 optimizedBody869_327

def optimizedBody869_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_170 optimizedBody869_328

def optimizedBody869_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_169 optimizedBody869_329

def optimizedBody869_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_168 optimizedBody869_330

def optimizedBody869_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_331

def optimizedBody869_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_181 optimizedBody869_332

def optimizedBody869_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_177 optimizedBody869_333

def optimizedBody869_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_176 optimizedBody869_334

def optimizedBody869_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_175 optimizedBody869_335

def optimizedBody869_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_174 optimizedBody869_336

def optimizedBody869_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_173 optimizedBody869_337

def optimizedBody869_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_172 optimizedBody869_338

def optimizedBody869_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_171 optimizedBody869_339

def optimizedBody869_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_170 optimizedBody869_340

def optimizedBody869_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_169 optimizedBody869_341

def optimizedBody869_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_168 optimizedBody869_342

def optimizedBody869_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_343

def optimizedBody869_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_167 optimizedBody869_344

def optimizedBody869_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_162 optimizedBody869_345

def optimizedBody869_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_165 optimizedBody869_346

def optimizedBody869_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_347

def optimizedBody869_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_164 optimizedBody869_348

def optimizedBody869_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_160 optimizedBody869_349

def optimizedBody869_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_350

def optimizedBody869_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_351

def optimizedBody869_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_159 optimizedBody869_352

def optimizedBody869_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_16 optimizedBody869_353

def optimizedBody869_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_354

def optimizedBody869_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_355

def optimizedBody869_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_155 optimizedBody869_356

def optimizedBody869_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_151 optimizedBody869_357

def optimizedBody869_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_358

def optimizedBody869_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_359

def optimizedBody869_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_150 optimizedBody869_360

def optimizedBody869_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_16 optimizedBody869_361

def optimizedBody869_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_362

def optimizedBody869_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_363

def optimizedBody869_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_143 optimizedBody869_364

def optimizedBody869_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_139 optimizedBody869_365

def optimizedBody869_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_138 optimizedBody869_366

def optimizedBody869_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_137 optimizedBody869_367

def optimizedBody869_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_136 optimizedBody869_368

def optimizedBody869_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_76 optimizedBody869_369

def optimizedBody869_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_370

def optimizedBody869_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_135 optimizedBody869_371

def optimizedBody869_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_131 optimizedBody869_372

def optimizedBody869_374 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_373

def optimizedBody869_375 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_130 optimizedBody869_374

def optimizedBody869_376 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_126 optimizedBody869_375

def optimizedBody869_377 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_125 optimizedBody869_376

def optimizedBody869_378 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_377

def optimizedBody869_379 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_124 optimizedBody869_378

def optimizedBody869_380 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_120 optimizedBody869_379

def optimizedBody869_381 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_380

def optimizedBody869_382 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_119 optimizedBody869_381

def optimizedBody869_383 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_86 optimizedBody869_382

def optimizedBody869_384 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_383

def optimizedBody869_385 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_85 optimizedBody869_384

def optimizedBody869_386 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_84 optimizedBody869_385

def optimizedBody869_387 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_4 optimizedBody869_386

def optimizedBody869_388 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_83 optimizedBody869_387

def optimizedBody869_389 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_4 optimizedBody869_388

def optimizedBody869_390 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_389

def optimizedBody869_391 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_82 optimizedBody869_390

def optimizedBody869_392 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_78 optimizedBody869_391

def optimizedBody869_393 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_77 optimizedBody869_392

def optimizedBody869_394 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_76 optimizedBody869_393

def optimizedBody869_395 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_394

def optimizedBody869_396 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_75 optimizedBody869_395

def optimizedBody869_397 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_71 optimizedBody869_396

def optimizedBody869_398 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_70 optimizedBody869_397

def optimizedBody869_399 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_398

def optimizedBody869_400 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_69 optimizedBody869_399

def optimizedBody869_401 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_400

def optimizedBody869_402 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_401

def optimizedBody869_403 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_68 optimizedBody869_402

def optimizedBody869_404 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_64 optimizedBody869_403

def optimizedBody869_405 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_63 optimizedBody869_404

def optimizedBody869_406 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_405

def optimizedBody869_407 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_62 optimizedBody869_406

def optimizedBody869_408 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_407

def optimizedBody869_409 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_408

def optimizedBody869_410 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_409

def optimizedBody869_411 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_61 optimizedBody869_410

def optimizedBody869_412 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_16 optimizedBody869_411

def optimizedBody869_413 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_4 optimizedBody869_412

def optimizedBody869_414 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_413

def optimizedBody869_415 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_57 optimizedBody869_414

def optimizedBody869_416 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_53 optimizedBody869_415

def optimizedBody869_417 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_52 optimizedBody869_416

def optimizedBody869_418 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_51 optimizedBody869_417

def optimizedBody869_419 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_418

def optimizedBody869_420 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_419

def optimizedBody869_421 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_50 optimizedBody869_420

def optimizedBody869_422 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_46 optimizedBody869_421

def optimizedBody869_423 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_44 optimizedBody869_422

def optimizedBody869_424 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_45 optimizedBody869_423

def optimizedBody869_425 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_44 optimizedBody869_424

def optimizedBody869_426 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_43 optimizedBody869_425

def optimizedBody869_427 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_42 optimizedBody869_426

def optimizedBody869_428 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_41 optimizedBody869_427

def optimizedBody869_429 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_21 optimizedBody869_428

def optimizedBody869_430 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_40 optimizedBody869_429

def optimizedBody869_431 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_39 optimizedBody869_430

def optimizedBody869_432 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_38 optimizedBody869_431

def optimizedBody869_433 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_37 optimizedBody869_432

def optimizedBody869_434 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_36 optimizedBody869_433

def optimizedBody869_435 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_35 optimizedBody869_434

def optimizedBody869_436 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_34 optimizedBody869_435

def optimizedBody869_437 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_33 optimizedBody869_436

def optimizedBody869_438 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_32 optimizedBody869_437

def optimizedBody869_439 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_31 optimizedBody869_438

def optimizedBody869_440 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_30 optimizedBody869_439

def optimizedBody869_441 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_440

def optimizedBody869_442 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_441

def optimizedBody869_443 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_442

def optimizedBody869_444 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_29 optimizedBody869_443

def optimizedBody869_445 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_16 optimizedBody869_444

def optimizedBody869_446 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_15 optimizedBody869_445

def optimizedBody869_447 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_14 optimizedBody869_446

def optimizedBody869_448 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_13 optimizedBody869_447

def optimizedBody869_449 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_12 optimizedBody869_448

def optimizedBody869_450 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_11 optimizedBody869_449

def optimizedBody869_451 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_6 optimizedBody869_450

def optimizedBody869_452 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_5 optimizedBody869_451

def optimizedBody869_453 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_4 optimizedBody869_452

def optimizedBody869_454 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_3 optimizedBody869_453

def optimizedBody869_455 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_2 optimizedBody869_454

def optimizedBody869_456 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_1 optimizedBody869_455

def optimizedBody869_457 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody869_0 optimizedBody869_456

def optimized869 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(869, 2, optimizedBody869_457)
end InitECandidate.Proofs.StackAnalysis
