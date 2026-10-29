import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody625_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody625_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody625_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody625_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody625_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody625_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody625_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_4 optimizedBody625_5

def optimizedBody625_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_3, 625, 2)) (some 68) ([2]) (some (2, optimizedBody625_6, 625, 3))

def optimizedBody625_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody625_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody625_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 96#64)

def optimizedBody625_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (48, 2), (46, 46)]

def optimizedBody625_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 48), (0, 46)]

def optimizedBody625_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody625_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_13 optimizedBody625_5

def optimizedBody625_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_12, 625, 4)) (some 78) ([2, 4]) (some (2, optimizedBody625_14, 625, 5))

def optimizedBody625_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody625_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody625_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 2)]

def optimizedBody625_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody625_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 0)]

def optimizedBody625_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (44, 48), (0, 50)]

def optimizedBody625_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (44, 48), (0, 50)]

def optimizedBody625_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_22 optimizedBody625_5

def optimizedBody625_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_21, 625, 6)) (some 415) ([2]) (some (2, optimizedBody625_23, 625, 7))

def optimizedBody625_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody625_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody625_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 44)]

def optimizedBody625_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody625_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12#64)

def optimizedBody625_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody625_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody625_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody625_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody625_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody625_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody625_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody625_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody625_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody625_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody625_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody625_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody625_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody625_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody625_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody625_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551352#64))

def optimizedBody625_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody625_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_46

def optimizedBody625_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_40 optimizedBody625_47

def optimizedBody625_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_39 optimizedBody625_48

def optimizedBody625_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_45 optimizedBody625_49

def optimizedBody625_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_44 optimizedBody625_50

def optimizedBody625_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_43 optimizedBody625_51

def optimizedBody625_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_42 optimizedBody625_52

def optimizedBody625_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_41 optimizedBody625_53

def optimizedBody625_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_54

def optimizedBody625_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_40 optimizedBody625_55

def optimizedBody625_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_39 optimizedBody625_56

def optimizedBody625_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_38 optimizedBody625_57

def optimizedBody625_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_58

def optimizedBody625_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_37 optimizedBody625_59

def optimizedBody625_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_60

def optimizedBody625_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_61

def optimizedBody625_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_62

def optimizedBody625_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_34 optimizedBody625_63

def optimizedBody625_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_64

def optimizedBody625_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_32 optimizedBody625_65

def optimizedBody625_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_66

def optimizedBody625_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_30 optimizedBody625_67

def optimizedBody625_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_68

def optimizedBody625_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_29 optimizedBody625_69

def optimizedBody625_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_28 optimizedBody625_70

def optimizedBody625_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_27 optimizedBody625_71

def optimizedBody625_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_72

def optimizedBody625_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 44), (10, 0)]

def optimizedBody625_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody625_73 optimizedBody625_74

def optimizedBody625_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (44, 8), (46, 46)]

def optimizedBody625_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody625_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody625_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_78 optimizedBody625_5

def optimizedBody625_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_77, 625, 8)) (some 608) ([2]) (some (2, optimizedBody625_79, 625, 9))

def optimizedBody625_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (0, 0)]

def optimizedBody625_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_81

def optimizedBody625_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_80 optimizedBody625_82

def optimizedBody625_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_76 optimizedBody625_83

def optimizedBody625_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_84

def optimizedBody625_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_85

def optimizedBody625_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_75 optimizedBody625_86

def optimizedBody625_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_26 optimizedBody625_87

def optimizedBody625_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_88

def optimizedBody625_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_89

def optimizedBody625_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_24 optimizedBody625_90

def optimizedBody625_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_20 optimizedBody625_91

def optimizedBody625_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_19 optimizedBody625_92

def optimizedBody625_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_18 optimizedBody625_93

def optimizedBody625_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_94

def optimizedBody625_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody625_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 48)]

def optimizedBody625_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 48)]

def optimizedBody625_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_98 optimizedBody625_5

def optimizedBody625_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_97, 625, 10)) (some 606) ([2]) (some (2, optimizedBody625_99, 625, 11))

def optimizedBody625_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_100 optimizedBody625_82

def optimizedBody625_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_96 optimizedBody625_101

def optimizedBody625_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_102

def optimizedBody625_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 4) optimizedBody625_95 optimizedBody625_103

def optimizedBody625_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4), (0, 0)]

def optimizedBody625_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 64#64))

def optimizedBody625_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody625_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody625_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody625_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody625_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody625_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 120#64))

def optimizedBody625_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody625_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 128#64))

def optimizedBody625_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody625_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 72#64))

def optimizedBody625_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody625_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody625_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 2), (48, 0)]

def optimizedBody625_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (0, 46), (4, 48)]

def optimizedBody625_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (4, 48)]

def optimizedBody625_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_121 optimizedBody625_5

def optimizedBody625_123 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody625_120, 625, 12)) (some 473) ([2]) (some (2, optimizedBody625_122, 625, 13))

def optimizedBody625_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody625_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 200#64))

def optimizedBody625_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody625_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 8)))

def optimizedBody625_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody625_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody625_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 160#64))

def optimizedBody625_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody625_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody625_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody625_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody625_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 136#64))

def optimizedBody625_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody625_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody625_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_26 optimizedBody625_137

def optimizedBody625_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_138

def optimizedBody625_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_137

def optimizedBody625_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 6) optimizedBody625_139 optimizedBody625_140

def optimizedBody625_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody625_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody625_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_129 optimizedBody625_143

def optimizedBody625_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_128 optimizedBody625_144

def optimizedBody625_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_142 optimizedBody625_145

def optimizedBody625_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_146

def optimizedBody625_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_147

def optimizedBody625_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_141 optimizedBody625_148

def optimizedBody625_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_131 optimizedBody625_149

def optimizedBody625_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_150

def optimizedBody625_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_136 optimizedBody625_151

def optimizedBody625_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_152

def optimizedBody625_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_129 optimizedBody625_153

def optimizedBody625_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_128 optimizedBody625_154

def optimizedBody625_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_135 optimizedBody625_155

def optimizedBody625_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_156

def optimizedBody625_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_134 optimizedBody625_157

def optimizedBody625_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_158

def optimizedBody625_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_129 optimizedBody625_159

def optimizedBody625_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_128 optimizedBody625_160

def optimizedBody625_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_133 optimizedBody625_161

def optimizedBody625_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_162

def optimizedBody625_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_132 optimizedBody625_163

def optimizedBody625_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_164

def optimizedBody625_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_165

def optimizedBody625_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_143

def optimizedBody625_168 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody625_166 optimizedBody625_167

def optimizedBody625_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody625_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 208#64))

def optimizedBody625_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 88#64)))

def optimizedBody625_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 224#64))

def optimizedBody625_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody625_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody625_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody625_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody625_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_175 optimizedBody625_176

def optimizedBody625_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_174 optimizedBody625_177

def optimizedBody625_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_173 optimizedBody625_178

def optimizedBody625_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_172 optimizedBody625_179

def optimizedBody625_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_180

def optimizedBody625_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_171 optimizedBody625_181

def optimizedBody625_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_182

def optimizedBody625_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_129 optimizedBody625_183

def optimizedBody625_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_128 optimizedBody625_184

def optimizedBody625_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_170 optimizedBody625_185

def optimizedBody625_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_186

def optimizedBody625_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_169 optimizedBody625_187

def optimizedBody625_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_188

def optimizedBody625_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_189

def optimizedBody625_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_168 optimizedBody625_190

def optimizedBody625_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_131 optimizedBody625_191

def optimizedBody625_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_130 optimizedBody625_192

def optimizedBody625_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_193

def optimizedBody625_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_129 optimizedBody625_194

def optimizedBody625_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_128 optimizedBody625_195

def optimizedBody625_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_127 optimizedBody625_196

def optimizedBody625_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_126 optimizedBody625_197

def optimizedBody625_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_125 optimizedBody625_198

def optimizedBody625_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_199

def optimizedBody625_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_124 optimizedBody625_200

def optimizedBody625_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_25 optimizedBody625_201

def optimizedBody625_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_202

def optimizedBody625_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_123 optimizedBody625_203

def optimizedBody625_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_119 optimizedBody625_204

def optimizedBody625_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_205

def optimizedBody625_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_206

def optimizedBody625_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_118 optimizedBody625_207

def optimizedBody625_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_208

def optimizedBody625_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_117 optimizedBody625_209

def optimizedBody625_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_210

def optimizedBody625_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_211

def optimizedBody625_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_212

def optimizedBody625_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_116 optimizedBody625_213

def optimizedBody625_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_214

def optimizedBody625_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_115 optimizedBody625_215

def optimizedBody625_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_216

def optimizedBody625_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_217

def optimizedBody625_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_218

def optimizedBody625_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_114 optimizedBody625_219

def optimizedBody625_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_220

def optimizedBody625_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_113 optimizedBody625_221

def optimizedBody625_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_222

def optimizedBody625_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_223

def optimizedBody625_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_224

def optimizedBody625_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_112 optimizedBody625_225

def optimizedBody625_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_226

def optimizedBody625_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_111 optimizedBody625_227

def optimizedBody625_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_228

def optimizedBody625_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_36 optimizedBody625_229

def optimizedBody625_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_35 optimizedBody625_230

def optimizedBody625_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_110 optimizedBody625_231

def optimizedBody625_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_31 optimizedBody625_232

def optimizedBody625_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_109 optimizedBody625_233

def optimizedBody625_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_33 optimizedBody625_234

def optimizedBody625_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_108 optimizedBody625_235

def optimizedBody625_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_107 optimizedBody625_236

def optimizedBody625_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_106 optimizedBody625_237

def optimizedBody625_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_105 optimizedBody625_238

def optimizedBody625_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_239

def optimizedBody625_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_104 optimizedBody625_240

def optimizedBody625_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_17 optimizedBody625_241

def optimizedBody625_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_16 optimizedBody625_242

def optimizedBody625_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_9 optimizedBody625_243

def optimizedBody625_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_244

def optimizedBody625_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_15 optimizedBody625_245

def optimizedBody625_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_11 optimizedBody625_246

def optimizedBody625_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_10 optimizedBody625_247

def optimizedBody625_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_9 optimizedBody625_248

def optimizedBody625_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_8 optimizedBody625_249

def optimizedBody625_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_7 optimizedBody625_250

def optimizedBody625_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_2 optimizedBody625_251

def optimizedBody625_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_1 optimizedBody625_252

def optimizedBody625_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody625_0 optimizedBody625_253

def optimized625 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(625, 2, optimizedBody625_254)
end InitECandidate.Proofs.StackAnalysis
