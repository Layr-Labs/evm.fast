import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody602_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody602_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody602_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody602_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (4, 4)]

def optimizedBody602_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody602_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody602_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody602_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody602_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody602_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody602_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551328#64))

def optimizedBody602_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody602_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody602_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody602_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 4)]

def optimizedBody602_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_13 optimizedBody602_14

def optimizedBody602_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_15

def optimizedBody602_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody602_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 104#64))

def optimizedBody602_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody602_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody602_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody602_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 56#64))

def optimizedBody602_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 48#64))

def optimizedBody602_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody602_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody602_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody602_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (46, 48)]

def optimizedBody602_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody602_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody602_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_19 optimizedBody602_29

def optimizedBody602_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 (Flapjack.WordStore.temp 0#5)

def optimizedBody602_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 44), (44, 46), (52, 48)]

def optimizedBody602_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 50), (0, 44), (52, 52)]

def optimizedBody602_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (0, 44), (52, 52)]

def optimizedBody602_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_34 optimizedBody602_29

def optimizedBody602_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody602_33, 602, 3)) (some 597) ([2]) (some (2, optimizedBody602_35, 602, 4))

def optimizedBody602_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 50), (0, 0), (52, 52)]

def optimizedBody602_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_37

def optimizedBody602_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_36 optimizedBody602_38

def optimizedBody602_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_32 optimizedBody602_39

def optimizedBody602_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_31 optimizedBody602_40

def optimizedBody602_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_41

def optimizedBody602_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody602_30 optimizedBody602_42

def optimizedBody602_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 50), (0, 0), (46, 52)]

def optimizedBody602_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_44

def optimizedBody602_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_43 optimizedBody602_45

def optimizedBody602_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_28 optimizedBody602_46

def optimizedBody602_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody602_27, 602, 2)) (some 595) ([2]) (some (2, optimizedBody602_47, 602, 5))

def optimizedBody602_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (46, 46)]

def optimizedBody602_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_49

def optimizedBody602_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_48 optimizedBody602_50

def optimizedBody602_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_26 optimizedBody602_51

def optimizedBody602_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_25 optimizedBody602_52

def optimizedBody602_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_24 optimizedBody602_53

def optimizedBody602_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_23 optimizedBody602_54

def optimizedBody602_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_21 optimizedBody602_55

def optimizedBody602_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_56

def optimizedBody602_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 8) optimizedBody602_16 optimizedBody602_57

def optimizedBody602_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_58 optimizedBody602_50

def optimizedBody602_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_22 optimizedBody602_59

def optimizedBody602_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_21 optimizedBody602_60

def optimizedBody602_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_20 optimizedBody602_61

def optimizedBody602_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_19 optimizedBody602_62

def optimizedBody602_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_63

def optimizedBody602_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody602_16 optimizedBody602_64

def optimizedBody602_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_65 optimizedBody602_50

def optimizedBody602_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_12 optimizedBody602_66

def optimizedBody602_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_18 optimizedBody602_67

def optimizedBody602_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_17 optimizedBody602_68

def optimizedBody602_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_0 optimizedBody602_69

def optimizedBody602_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_70

def optimizedBody602_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody602_16 optimizedBody602_71

def optimizedBody602_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody602_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody602_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody602_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody602_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_76 optimizedBody602_29

def optimizedBody602_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody602_75, 602, 6)) (some 600) ([]) (some (2, optimizedBody602_77, 602, 7))

def optimizedBody602_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody602_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def optimizedBody602_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody602_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody602_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody602_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def optimizedBody602_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551328#64))

def optimizedBody602_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody602_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody602_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody602_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody602_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 4)]

def optimizedBody602_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_89 optimizedBody602_90

def optimizedBody602_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_88 optimizedBody602_91

def optimizedBody602_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_87 optimizedBody602_92

def optimizedBody602_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_86 optimizedBody602_93

def optimizedBody602_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_85 optimizedBody602_94

def optimizedBody602_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_0 optimizedBody602_95

def optimizedBody602_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_84 optimizedBody602_96

def optimizedBody602_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_0 optimizedBody602_97

def optimizedBody602_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_83 optimizedBody602_98

def optimizedBody602_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_82 optimizedBody602_99

def optimizedBody602_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_81 optimizedBody602_100

def optimizedBody602_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_21 optimizedBody602_101

def optimizedBody602_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_80 optimizedBody602_102

def optimizedBody602_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_0 optimizedBody602_103

def optimizedBody602_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_104

def optimizedBody602_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46)]

def optimizedBody602_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody602_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody602_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_108 optimizedBody602_29

def optimizedBody602_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody602_107, 602, 9)) (some 597) ([2]) (some (2, optimizedBody602_109, 602, 10))

def optimizedBody602_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody602_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_111

def optimizedBody602_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_110 optimizedBody602_112

def optimizedBody602_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_76 optimizedBody602_113

def optimizedBody602_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_31 optimizedBody602_114

def optimizedBody602_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_115

def optimizedBody602_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) optimizedBody602_30 optimizedBody602_116

def optimizedBody602_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_117 optimizedBody602_112

def optimizedBody602_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_76 optimizedBody602_118

def optimizedBody602_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody602_106, 602, 8)) (some 601) ([]) (some (2, optimizedBody602_119, 602, 11))

def optimizedBody602_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_120 optimizedBody602_112

def optimizedBody602_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_75 optimizedBody602_121

def optimizedBody602_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_122

def optimizedBody602_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 6) optimizedBody602_105 optimizedBody602_123

def optimizedBody602_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_124 optimizedBody602_112

def optimizedBody602_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_6 optimizedBody602_125

def optimizedBody602_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_79 optimizedBody602_126

def optimizedBody602_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_10 optimizedBody602_127

def optimizedBody602_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_9 optimizedBody602_128

def optimizedBody602_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_8 optimizedBody602_129

def optimizedBody602_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_7 optimizedBody602_130

def optimizedBody602_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_131

def optimizedBody602_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_78 optimizedBody602_132

def optimizedBody602_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_75 optimizedBody602_133

def optimizedBody602_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_134

def optimizedBody602_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_106

def optimizedBody602_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody602_135 optimizedBody602_136

def optimizedBody602_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4)]

def optimizedBody602_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody602_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_138 optimizedBody602_139

def optimizedBody602_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_140

def optimizedBody602_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_137 optimizedBody602_141

def optimizedBody602_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_74 optimizedBody602_142

def optimizedBody602_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_73 optimizedBody602_143

def optimizedBody602_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_144

def optimizedBody602_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_72 optimizedBody602_145

def optimizedBody602_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_12 optimizedBody602_146

def optimizedBody602_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_11 optimizedBody602_147

def optimizedBody602_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_10 optimizedBody602_148

def optimizedBody602_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_9 optimizedBody602_149

def optimizedBody602_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_8 optimizedBody602_150

def optimizedBody602_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_7 optimizedBody602_151

def optimizedBody602_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_6 optimizedBody602_152

def optimizedBody602_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_153

def optimizedBody602_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody602_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_155

def optimizedBody602_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody602_154 optimizedBody602_156

def optimizedBody602_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_138

def optimizedBody602_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_157 optimizedBody602_158

def optimizedBody602_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_5 optimizedBody602_159

def optimizedBody602_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_4 optimizedBody602_160

def optimizedBody602_162 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  Flapjack.Spt.ln) optimizedBody602_161 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody602_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody602_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody602_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_163 optimizedBody602_164

def optimizedBody602_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_74 optimizedBody602_165

def optimizedBody602_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_166

def optimizedBody602_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_162 optimizedBody602_167

def optimizedBody602_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_3 optimizedBody602_168

def optimizedBody602_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_2 optimizedBody602_169

def optimizedBody602_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_1 optimizedBody602_170

def optimizedBody602_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody602_0 optimizedBody602_171

def optimized602 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(602, 1, optimizedBody602_172)
end InitECandidate.Proofs.StackAnalysis
