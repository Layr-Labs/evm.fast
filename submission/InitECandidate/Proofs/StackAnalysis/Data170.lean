import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody170_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody170_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody170_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody170_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody170_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody170_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody170_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48)]

def optimizedBody170_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody170_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody170_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_7 optimizedBody170_8

def optimizedBody170_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody170_6, 170, 2)) (some 159) ([2]) (some (2, optimizedBody170_9, 170, 3))

def optimizedBody170_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (6, 6)]

def optimizedBody170_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_11

def optimizedBody170_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_10 optimizedBody170_12

def optimizedBody170_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_5 optimizedBody170_13

def optimizedBody170_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_4 optimizedBody170_14

def optimizedBody170_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_15

def optimizedBody170_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (4, 4), (6, 6)]

def optimizedBody170_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_17

def optimizedBody170_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody170_16 optimizedBody170_18

def optimizedBody170_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody170_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody170_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody170_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_21 optimizedBody170_22

def optimizedBody170_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_23

def optimizedBody170_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody170_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_25 optimizedBody170_22

def optimizedBody170_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_26

def optimizedBody170_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody170_24 optimizedBody170_27

def optimizedBody170_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody170_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody170_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody170_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody170_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody170_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody170_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_33 optimizedBody170_34

def optimizedBody170_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_35

def optimizedBody170_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_20 optimizedBody170_34

def optimizedBody170_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_37

def optimizedBody170_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 8) optimizedBody170_36 optimizedBody170_38

def optimizedBody170_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody170_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody170_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 21#64)

def optimizedBody170_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6)]

def optimizedBody170_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (6, 48)]

def optimizedBody170_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody170_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_45 optimizedBody170_8

def optimizedBody170_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody170_44, 170, 4)) (some 159) ([2]) (some (2, optimizedBody170_46, 170, 5))

def optimizedBody170_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody170_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_48

def optimizedBody170_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_47 optimizedBody170_49

def optimizedBody170_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_43 optimizedBody170_50

def optimizedBody170_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_42 optimizedBody170_51

def optimizedBody170_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 44), (4, 4), (6, 6)]

def optimizedBody170_54 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.imm 0#64) optimizedBody170_52 optimizedBody170_53

def optimizedBody170_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (6, 6), (8, 8), (2, 2)]

def optimizedBody170_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody170_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody170_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 8 (Flapjack.WordRegImm.reg 6)))

def optimizedBody170_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody170_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody170_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody170_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 10 (Flapjack.WordRegImm.reg 2)))

def optimizedBody170_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (2, 2)]

def optimizedBody170_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody170_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (8, 8), (2, 2)]

def optimizedBody170_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody170_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_65 optimizedBody170_66

def optimizedBody170_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_64 optimizedBody170_67

def optimizedBody170_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_63 optimizedBody170_68

def optimizedBody170_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_62 optimizedBody170_69

def optimizedBody170_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_61 optimizedBody170_70

def optimizedBody170_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_60 optimizedBody170_71

def optimizedBody170_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_59 optimizedBody170_72

def optimizedBody170_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_58 optimizedBody170_73

def optimizedBody170_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_57 optimizedBody170_74

def optimizedBody170_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_75

def optimizedBody170_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody170_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_77

def optimizedBody170_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 4) optimizedBody170_76 optimizedBody170_78

def optimizedBody170_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_65

def optimizedBody170_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_79 optimizedBody170_80

def optimizedBody170_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_56 optimizedBody170_81

def optimizedBody170_83 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody170_82 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def optimizedBody170_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody170_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody170_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_84 optimizedBody170_85

def optimizedBody170_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_86

def optimizedBody170_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_83 optimizedBody170_87

def optimizedBody170_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_55 optimizedBody170_88

def optimizedBody170_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_89

def optimizedBody170_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_32 optimizedBody170_90

def optimizedBody170_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_25 optimizedBody170_91

def optimizedBody170_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_92

def optimizedBody170_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_54 optimizedBody170_93

def optimizedBody170_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_41 optimizedBody170_94

def optimizedBody170_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_40 optimizedBody170_95

def optimizedBody170_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_96

def optimizedBody170_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_39 optimizedBody170_97

def optimizedBody170_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_32 optimizedBody170_98

def optimizedBody170_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_31 optimizedBody170_99

def optimizedBody170_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_30 optimizedBody170_100

def optimizedBody170_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_29 optimizedBody170_101

def optimizedBody170_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_102

def optimizedBody170_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_28 optimizedBody170_103

def optimizedBody170_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_2 optimizedBody170_104

def optimizedBody170_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_20 optimizedBody170_105

def optimizedBody170_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_3 optimizedBody170_106

def optimizedBody170_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_19 optimizedBody170_107

def optimizedBody170_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_2 optimizedBody170_108

def optimizedBody170_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_1 optimizedBody170_109

def optimizedBody170_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody170_0 optimizedBody170_110

def optimized170 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(170, 3, optimizedBody170_111)
end InitECandidate.Proofs.StackAnalysis
