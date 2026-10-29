import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody248_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody248_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1073741832#64)

def optimizedBody248_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 4 (Flapjack.WordLangExpHOL.var 2)

def optimizedBody248_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1073741808#64)

def optimizedBody248_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody248_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody248_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody248_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody248_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody248_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_7 optimizedBody248_8

def optimizedBody248_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_6 optimizedBody248_9

def optimizedBody248_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_10

def optimizedBody248_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody248_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody248_11 optimizedBody248_12

def optimizedBody248_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody248_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody248_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody248_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody248_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody248_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody248_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_18 optimizedBody248_19

def optimizedBody248_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_17, 248, 2)) (some 245) ([2]) (some (2, optimizedBody248_20, 248, 3))

def optimizedBody248_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46)]

def optimizedBody248_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_22

def optimizedBody248_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_21 optimizedBody248_23

def optimizedBody248_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_16 optimizedBody248_24

def optimizedBody248_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_15 optimizedBody248_25

def optimizedBody248_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_26

def optimizedBody248_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4)]

def optimizedBody248_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_28

def optimizedBody248_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody248_27 optimizedBody248_29

def optimizedBody248_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody248_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_31, 248, 4)) (some 246) ([2]) (some (2, optimizedBody248_20, 248, 5))

def optimizedBody248_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0)]

def optimizedBody248_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody248_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48)]

def optimizedBody248_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_35 optimizedBody248_19

def optimizedBody248_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_34, 248, 6)) (some 246) ([2]) (some (2, optimizedBody248_36, 248, 7))

def optimizedBody248_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody248_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody248_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_15 optimizedBody248_39

def optimizedBody248_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_6 optimizedBody248_39

def optimizedBody248_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody248_40 optimizedBody248_41

def optimizedBody248_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody248_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody248_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody248_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_45 optimizedBody248_0

def optimizedBody248_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody248_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_47 optimizedBody248_0

def optimizedBody248_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 4) optimizedBody248_46 optimizedBody248_48

def optimizedBody248_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody248_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody248_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody248_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody248_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody248_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_54 optimizedBody248_19

def optimizedBody248_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_53, 248, 8)) (some 245) ([2]) (some (2, optimizedBody248_55, 248, 9))

def optimizedBody248_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0)]

def optimizedBody248_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_57

def optimizedBody248_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_56 optimizedBody248_58

def optimizedBody248_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_18 optimizedBody248_59

def optimizedBody248_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_14 optimizedBody248_60

def optimizedBody248_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_61

def optimizedBody248_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46)]

def optimizedBody248_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_63

def optimizedBody248_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody248_62 optimizedBody248_64

def optimizedBody248_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551614#64)))

def optimizedBody248_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody248_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody248_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody248_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_17, 248, 10)) (some 245) ([2]) (some (2, optimizedBody248_20, 248, 11))

def optimizedBody248_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_70 optimizedBody248_23

def optimizedBody248_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_69 optimizedBody248_71

def optimizedBody248_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_68 optimizedBody248_72

def optimizedBody248_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_73

def optimizedBody248_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 0)]

def optimizedBody248_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_75

def optimizedBody248_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody248_74 optimizedBody248_76

def optimizedBody248_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_31, 248, 12)) (some 247) ([2]) (some (2, optimizedBody248_20, 248, 13))

def optimizedBody248_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody248_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46), (10, 48)]

def optimizedBody248_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (10, 48)]

def optimizedBody248_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_81 optimizedBody248_19

def optimizedBody248_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_80, 248, 14)) (some 247) ([2]) (some (2, optimizedBody248_82, 248, 15))

def optimizedBody248_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody248_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody248_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody248_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551504#64))

def optimizedBody248_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody248_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody248_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody248_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody248_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody248_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551504#64))

def optimizedBody248_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody248_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 16#64)

def optimizedBody248_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody248_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 10)]

def optimizedBody248_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody248_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody248_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_99 optimizedBody248_19

def optimizedBody248_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_98, 248, 16)) (some 250) ([2, 4, 6, 8]) (some (2, optimizedBody248_100, 248, 17))

def optimizedBody248_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody248_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody248_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 44#64)

def optimizedBody248_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 81#64)

def optimizedBody248_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 4), (46, 0)]

def optimizedBody248_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46)]

def optimizedBody248_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody248_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_108 optimizedBody248_19

def optimizedBody248_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_107, 248, 18)) (some 245) ([2]) (some (2, optimizedBody248_109, 248, 19))

def optimizedBody248_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 48), (0, 0)]

def optimizedBody248_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_111

def optimizedBody248_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_110 optimizedBody248_112

def optimizedBody248_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_106 optimizedBody248_113

def optimizedBody248_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_105 optimizedBody248_114

def optimizedBody248_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_115

def optimizedBody248_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (48, 4), (0, 0)]

def optimizedBody248_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_117

def optimizedBody248_119 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody248_116 optimizedBody248_118

def optimizedBody248_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody248_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 2)]

def optimizedBody248_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody248_123 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_122, 248, 20)) (some 247) ([2]) (some (2, optimizedBody248_109, 248, 21))

def optimizedBody248_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody248_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 48), (50, 0)]

def optimizedBody248_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody248_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody248_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_127 optimizedBody248_19

def optimizedBody248_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_126, 248, 22)) (some 247) ([2]) (some (2, optimizedBody248_128, 248, 23))

def optimizedBody248_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody248_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 0), (52, 4)]

def optimizedBody248_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (8, 48), (50, 50), (10, 52)]

def optimizedBody248_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (50, 50), (10, 52)]

def optimizedBody248_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_133 optimizedBody248_19

def optimizedBody248_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_132, 248, 24)) (some 247) ([2]) (some (2, optimizedBody248_134, 248, 25))

def optimizedBody248_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551504#64))

def optimizedBody248_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody248_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody248_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody248_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (10, 10)]

def optimizedBody248_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody248_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody248_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody248_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody248_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 44#64)

def optimizedBody248_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody248_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (50, 50), (48, 10)]

def optimizedBody248_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (50, 50), (4, 48)]

def optimizedBody248_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (4, 48)]

def optimizedBody248_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_149 optimizedBody248_19

def optimizedBody248_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_148, 248, 26)) (some 250) ([2, 4, 6, 8]) (some (2, optimizedBody248_150, 248, 27))

def optimizedBody248_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 540#64)

def optimizedBody248_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50#64)

def optimizedBody248_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 0), (50, 50)]

def optimizedBody248_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody248_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50)]

def optimizedBody248_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_156 optimizedBody248_19

def optimizedBody248_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_155, 248, 28)) (some 245) ([2]) (some (2, optimizedBody248_157, 248, 29))

def optimizedBody248_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (0, 0), (4, 4)]

def optimizedBody248_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_159

def optimizedBody248_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_158 optimizedBody248_160

def optimizedBody248_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_154 optimizedBody248_161

def optimizedBody248_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_153 optimizedBody248_162

def optimizedBody248_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_163

def optimizedBody248_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 4), (0, 0), (4, 50)]

def optimizedBody248_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_165

def optimizedBody248_167 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody248_164 optimizedBody248_166

def optimizedBody248_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody248_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 436#64)))

def optimizedBody248_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody248_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody248_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_171 optimizedBody248_19

def optimizedBody248_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_170, 248, 30)) (some 247) ([2]) (some (2, optimizedBody248_172, 248, 31))

def optimizedBody248_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 504#64)))

def optimizedBody248_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 4), (48, 0)]

def optimizedBody248_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody248_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (0, 48)]

def optimizedBody248_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_177 optimizedBody248_19

def optimizedBody248_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_176, 248, 32)) (some 247) ([2]) (some (2, optimizedBody248_178, 248, 33))

def optimizedBody248_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 508#64)))

def optimizedBody248_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 4), (48, 0)]

def optimizedBody248_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (50, 50), (52, 52), (0, 48)]

def optimizedBody248_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52), (0, 48)]

def optimizedBody248_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_183 optimizedBody248_19

def optimizedBody248_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_182, 248, 34)) (some 247) ([2]) (some (2, optimizedBody248_184, 248, 35))

def optimizedBody248_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 528#64)))

def optimizedBody248_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 4), (50, 50), (52, 52)]

def optimizedBody248_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody248_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody248_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_189 optimizedBody248_19

def optimizedBody248_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_188, 248, 36)) (some 247) ([2]) (some (2, optimizedBody248_190, 248, 37))

def optimizedBody248_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 18446744073709551504#64))

def optimizedBody248_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10)]

def optimizedBody248_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody248_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 18446744073709551504#64))

def optimizedBody248_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody248_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody248_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody248_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody248_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 540#64)

def optimizedBody248_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody248_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody248_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody248_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody248_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_204 optimizedBody248_19

def optimizedBody248_206 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody248_203, 248, 38)) (some 250) ([2, 4, 6, 8]) (some (2, optimizedBody248_205, 248, 39))

def optimizedBody248_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_206 optimizedBody248_11

def optimizedBody248_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_202 optimizedBody248_207

def optimizedBody248_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_201 optimizedBody248_208

def optimizedBody248_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_200 optimizedBody248_209

def optimizedBody248_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_94 optimizedBody248_210

def optimizedBody248_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_93 optimizedBody248_211

def optimizedBody248_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_212

def optimizedBody248_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_92 optimizedBody248_213

def optimizedBody248_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_91 optimizedBody248_214

def optimizedBody248_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_199 optimizedBody248_215

def optimizedBody248_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_87 optimizedBody248_216

def optimizedBody248_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_217

def optimizedBody248_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_144 optimizedBody248_218

def optimizedBody248_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_143 optimizedBody248_219

def optimizedBody248_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_142 optimizedBody248_220

def optimizedBody248_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_136 optimizedBody248_221

def optimizedBody248_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_222

def optimizedBody248_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_198 optimizedBody248_223

def optimizedBody248_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_197 optimizedBody248_224

def optimizedBody248_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_196 optimizedBody248_225

def optimizedBody248_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_195 optimizedBody248_226

def optimizedBody248_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_227

def optimizedBody248_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_194 optimizedBody248_228

def optimizedBody248_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_193 optimizedBody248_229

def optimizedBody248_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_192 optimizedBody248_230

def optimizedBody248_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_86 optimizedBody248_231

def optimizedBody248_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_85 optimizedBody248_232

def optimizedBody248_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_84 optimizedBody248_233

def optimizedBody248_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_234

def optimizedBody248_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_191 optimizedBody248_235

def optimizedBody248_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_187 optimizedBody248_236

def optimizedBody248_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_186 optimizedBody248_237

def optimizedBody248_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_238

def optimizedBody248_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_239

def optimizedBody248_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_185 optimizedBody248_240

def optimizedBody248_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_181 optimizedBody248_241

def optimizedBody248_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_180 optimizedBody248_242

def optimizedBody248_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_243

def optimizedBody248_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_244

def optimizedBody248_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_179 optimizedBody248_245

def optimizedBody248_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_175 optimizedBody248_246

def optimizedBody248_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_174 optimizedBody248_247

def optimizedBody248_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_248

def optimizedBody248_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_249

def optimizedBody248_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_173 optimizedBody248_250

def optimizedBody248_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_33 optimizedBody248_251

def optimizedBody248_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_169 optimizedBody248_252

def optimizedBody248_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_253

def optimizedBody248_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_168 optimizedBody248_254

def optimizedBody248_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_91 optimizedBody248_255

def optimizedBody248_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_256

def optimizedBody248_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_167 optimizedBody248_257

def optimizedBody248_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_152 optimizedBody248_258

def optimizedBody248_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_4 optimizedBody248_259

def optimizedBody248_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_103 optimizedBody248_260

def optimizedBody248_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_102 optimizedBody248_261

def optimizedBody248_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_262

def optimizedBody248_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_151 optimizedBody248_263

def optimizedBody248_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_147 optimizedBody248_264

def optimizedBody248_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_146 optimizedBody248_265

def optimizedBody248_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_145 optimizedBody248_266

def optimizedBody248_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_94 optimizedBody248_267

def optimizedBody248_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_93 optimizedBody248_268

def optimizedBody248_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_269

def optimizedBody248_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_144 optimizedBody248_270

def optimizedBody248_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_143 optimizedBody248_271

def optimizedBody248_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_142 optimizedBody248_272

def optimizedBody248_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_136 optimizedBody248_273

def optimizedBody248_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_274

def optimizedBody248_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_141 optimizedBody248_275

def optimizedBody248_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_140 optimizedBody248_276

def optimizedBody248_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_139 optimizedBody248_277

def optimizedBody248_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_136 optimizedBody248_278

def optimizedBody248_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_279

def optimizedBody248_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_138 optimizedBody248_280

def optimizedBody248_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_137 optimizedBody248_281

def optimizedBody248_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_136 optimizedBody248_282

def optimizedBody248_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_86 optimizedBody248_283

def optimizedBody248_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_85 optimizedBody248_284

def optimizedBody248_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_84 optimizedBody248_285

def optimizedBody248_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_286

def optimizedBody248_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_135 optimizedBody248_287

def optimizedBody248_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_131 optimizedBody248_288

def optimizedBody248_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_130 optimizedBody248_289

def optimizedBody248_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_290

def optimizedBody248_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_291

def optimizedBody248_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_129 optimizedBody248_292

def optimizedBody248_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_125 optimizedBody248_293

def optimizedBody248_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_124 optimizedBody248_294

def optimizedBody248_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_295

def optimizedBody248_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_296

def optimizedBody248_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_123 optimizedBody248_297

def optimizedBody248_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_121 optimizedBody248_298

def optimizedBody248_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_120 optimizedBody248_299

def optimizedBody248_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_300

def optimizedBody248_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_301

def optimizedBody248_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_119 optimizedBody248_302

def optimizedBody248_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_104 optimizedBody248_303

def optimizedBody248_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_4 optimizedBody248_304

def optimizedBody248_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_103 optimizedBody248_305

def optimizedBody248_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_102 optimizedBody248_306

def optimizedBody248_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_307

def optimizedBody248_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_101 optimizedBody248_308

def optimizedBody248_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_97 optimizedBody248_309

def optimizedBody248_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_96 optimizedBody248_310

def optimizedBody248_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_95 optimizedBody248_311

def optimizedBody248_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_94 optimizedBody248_312

def optimizedBody248_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_93 optimizedBody248_313

def optimizedBody248_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_314

def optimizedBody248_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_92 optimizedBody248_315

def optimizedBody248_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_91 optimizedBody248_316

def optimizedBody248_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_90 optimizedBody248_317

def optimizedBody248_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_87 optimizedBody248_318

def optimizedBody248_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_39 optimizedBody248_319

def optimizedBody248_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_89 optimizedBody248_320

def optimizedBody248_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_88 optimizedBody248_321

def optimizedBody248_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_87 optimizedBody248_322

def optimizedBody248_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_86 optimizedBody248_323

def optimizedBody248_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_85 optimizedBody248_324

def optimizedBody248_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_84 optimizedBody248_325

def optimizedBody248_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_326

def optimizedBody248_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_83 optimizedBody248_327

def optimizedBody248_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_33 optimizedBody248_328

def optimizedBody248_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_79 optimizedBody248_329

def optimizedBody248_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_330

def optimizedBody248_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_78 optimizedBody248_331

def optimizedBody248_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_18 optimizedBody248_332

def optimizedBody248_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_14 optimizedBody248_333

def optimizedBody248_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_334

def optimizedBody248_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_77 optimizedBody248_335

def optimizedBody248_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_67 optimizedBody248_336

def optimizedBody248_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_337

def optimizedBody248_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_66 optimizedBody248_338

def optimizedBody248_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_339

def optimizedBody248_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_340

def optimizedBody248_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_65 optimizedBody248_341

def optimizedBody248_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_52 optimizedBody248_342

def optimizedBody248_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_51 optimizedBody248_343

def optimizedBody248_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_50 optimizedBody248_344

def optimizedBody248_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_345

def optimizedBody248_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_49 optimizedBody248_346

def optimizedBody248_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_44 optimizedBody248_347

def optimizedBody248_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_43 optimizedBody248_348

def optimizedBody248_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_349

def optimizedBody248_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_42 optimizedBody248_350

def optimizedBody248_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_38 optimizedBody248_351

def optimizedBody248_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_4 optimizedBody248_352

def optimizedBody248_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_353

def optimizedBody248_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_37 optimizedBody248_354

def optimizedBody248_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_33 optimizedBody248_355

def optimizedBody248_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_15 optimizedBody248_356

def optimizedBody248_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_357

def optimizedBody248_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_32 optimizedBody248_358

def optimizedBody248_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_18 optimizedBody248_359

def optimizedBody248_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_6 optimizedBody248_360

def optimizedBody248_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_361

def optimizedBody248_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_30 optimizedBody248_362

def optimizedBody248_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_14 optimizedBody248_363

def optimizedBody248_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_4 optimizedBody248_364

def optimizedBody248_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_365

def optimizedBody248_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_5 optimizedBody248_366

def optimizedBody248_368 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_13 optimizedBody248_367

def optimizedBody248_369 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_4 optimizedBody248_368

def optimizedBody248_370 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_3 optimizedBody248_369

def optimizedBody248_371 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_2 optimizedBody248_370

def optimizedBody248_372 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_1 optimizedBody248_371

def optimizedBody248_373 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody248_0 optimizedBody248_372

def optimized248 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(248, 1, optimizedBody248_373)
end InitECandidate.Proofs.StackAnalysis
