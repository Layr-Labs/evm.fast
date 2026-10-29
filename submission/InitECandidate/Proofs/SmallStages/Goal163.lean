import InitECandidate.Proofs.ClashComputation
import InitECandidate.Proofs.WordStages.Source163
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Goal163
def optimizedBody163_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 4), (0, 0), (16, 2)]

def optimizedBody163_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody163_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody163_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody163_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 0), (54, 20), (56, 16)]

def optimizedBody163_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52), (20, 54), (16, 56)]

def optimizedBody163_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 52), (20, 54), (16, 56)]

def optimizedBody163_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody163_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_6 optimizedBody163_7

def optimizedBody163_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_5, 163, 2)) (some 159) ([2]) (some (2, optimizedBody163_8, 163, 3))

def optimizedBody163_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (20, 20), (16, 16)]

def optimizedBody163_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_10

def optimizedBody163_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_9 optimizedBody163_11

def optimizedBody163_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_4 optimizedBody163_12

def optimizedBody163_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_3 optimizedBody163_13

def optimizedBody163_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_14

def optimizedBody163_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 2) optimizedBody163_15 optimizedBody163_11

def optimizedBody163_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody163_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody163_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody163_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody163_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody163_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody163_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6)]

def optimizedBody163_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6]

def optimizedBody163_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_23 optimizedBody163_24

def optimizedBody163_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_22 optimizedBody163_25

def optimizedBody163_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_21 optimizedBody163_26

def optimizedBody163_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_1 optimizedBody163_27

def optimizedBody163_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_28

def optimizedBody163_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody163_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 2) optimizedBody163_29 optimizedBody163_30

def optimizedBody163_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183#64)

def optimizedBody163_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 18 (Flapjack.WordRegImm.imm 18446744073709551488#64)))

def optimizedBody163_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody163_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 20 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody163_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody163_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody163_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 0), (54, 4), (56, 16)]

def optimizedBody163_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 52), (4, 54), (16, 56)]

def optimizedBody163_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (4, 54), (16, 56)]

def optimizedBody163_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_40 optimizedBody163_7

def optimizedBody163_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_39, 163, 4)) (some 159) ([2]) (some (2, optimizedBody163_41, 163, 5))

def optimizedBody163_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 52), (4, 4), (16, 16)]

def optimizedBody163_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_43

def optimizedBody163_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_42 optimizedBody163_44

def optimizedBody163_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_38 optimizedBody163_45

def optimizedBody163_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_37 optimizedBody163_46

def optimizedBody163_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_47

def optimizedBody163_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 0), (4, 4), (16, 16)]

def optimizedBody163_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_49

def optimizedBody163_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody163_48 optimizedBody163_50

def optimizedBody163_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody163_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody163_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody163_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody163_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody163_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (54, 4)]

def optimizedBody163_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52), (4, 54)]

def optimizedBody163_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 52), (4, 54)]

def optimizedBody163_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_59 optimizedBody163_7

def optimizedBody163_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_58, 163, 6)) (some 159) ([2]) (some (2, optimizedBody163_60, 163, 7))

def optimizedBody163_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody163_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_62

def optimizedBody163_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_61 optimizedBody163_63

def optimizedBody163_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_57 optimizedBody163_64

def optimizedBody163_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_56 optimizedBody163_65

def optimizedBody163_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_66

def optimizedBody163_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 52), (4, 4)]

def optimizedBody163_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_68

def optimizedBody163_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody163_67 optimizedBody163_69

def optimizedBody163_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_70 optimizedBody163_63

def optimizedBody163_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_20 optimizedBody163_71

def optimizedBody163_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_55 optimizedBody163_72

def optimizedBody163_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_54 optimizedBody163_73

def optimizedBody163_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_53 optimizedBody163_74

def optimizedBody163_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_17 optimizedBody163_75

def optimizedBody163_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_76

def optimizedBody163_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody163_77 optimizedBody163_69

def optimizedBody163_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_26

def optimizedBody163_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_3 optimizedBody163_79

def optimizedBody163_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_80

def optimizedBody163_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_78 optimizedBody163_81

def optimizedBody163_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_52 optimizedBody163_82

def optimizedBody163_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_83

def optimizedBody163_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_84

def optimizedBody163_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_51 optimizedBody163_85

def optimizedBody163_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_86

def optimizedBody163_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_35 optimizedBody163_87

def optimizedBody163_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_34 optimizedBody163_88

def optimizedBody163_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_33 optimizedBody163_89

def optimizedBody163_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_19 optimizedBody163_90

def optimizedBody163_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_91

def optimizedBody163_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 0), (12, 18), (14, 20), (48, 16)]

def optimizedBody163_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 18) optimizedBody163_92 optimizedBody163_93

def optimizedBody163_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 191#64)

def optimizedBody163_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody163_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551433#64)))

def optimizedBody163_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody163_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody163_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 46), (44, 4), (56, 14), (46, 48)]

def optimizedBody163_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 52), (4, 44), (56, 56), (0, 46)]

def optimizedBody163_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (4, 44), (56, 56), (0, 46)]

def optimizedBody163_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_102 optimizedBody163_7

def optimizedBody163_104 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_101, 163, 8)) (some 159) ([2]) (some (2, optimizedBody163_103, 163, 9))

def optimizedBody163_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 52), (4, 4), (56, 56), (0, 0)]

def optimizedBody163_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_105

def optimizedBody163_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_104 optimizedBody163_106

def optimizedBody163_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_100 optimizedBody163_107

def optimizedBody163_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_37 optimizedBody163_108

def optimizedBody163_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_109

def optimizedBody163_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 46), (4, 4), (56, 14), (0, 48)]

def optimizedBody163_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_111

def optimizedBody163_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_110 optimizedBody163_112

def optimizedBody163_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody163_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (52, 52), (54, 4), (56, 56)]

def optimizedBody163_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (52, 52), (54, 54), (56, 56)]

def optimizedBody163_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (54, 54), (56, 56)]

def optimizedBody163_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_117 optimizedBody163_7

def optimizedBody163_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_116, 163, 10)) (some 160) ([2, 4]) (some (2, optimizedBody163_118, 163, 11))

def optimizedBody163_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 55#64)

def optimizedBody163_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody163_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (54, 54), (56, 56), (58, 4)]

def optimizedBody163_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 52), (6, 54), (0, 56), (4, 58)]

def optimizedBody163_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (6, 54), (0, 56), (4, 58)]

def optimizedBody163_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_124 optimizedBody163_7

def optimizedBody163_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_123, 163, 12)) (some 159) ([2]) (some (2, optimizedBody163_125, 163, 13))

def optimizedBody163_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 52), (6, 6), (0, 0), (4, 4)]

def optimizedBody163_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_127

def optimizedBody163_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_126 optimizedBody163_128

def optimizedBody163_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_122 optimizedBody163_129

def optimizedBody163_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_121 optimizedBody163_130

def optimizedBody163_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_131

def optimizedBody163_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(52, 52), (6, 54), (0, 56), (4, 4)]

def optimizedBody163_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_133

def optimizedBody163_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_132 optimizedBody163_134

def optimizedBody163_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody163_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody163_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody163_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (54, 6), (56, 4)]

def optimizedBody163_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52), (6, 54), (4, 56)]

def optimizedBody163_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 52), (6, 54), (4, 56)]

def optimizedBody163_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_141 optimizedBody163_7

def optimizedBody163_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_140, 163, 14)) (some 159) ([2]) (some (2, optimizedBody163_142, 163, 15))

def optimizedBody163_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody163_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_144

def optimizedBody163_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_143 optimizedBody163_145

def optimizedBody163_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_139 optimizedBody163_146

def optimizedBody163_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_37 optimizedBody163_147

def optimizedBody163_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_148

def optimizedBody163_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 52), (6, 6), (4, 4)]

def optimizedBody163_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_150

def optimizedBody163_152 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_149 optimizedBody163_151

def optimizedBody163_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody163_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_153 optimizedBody163_79

def optimizedBody163_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_137 optimizedBody163_154

def optimizedBody163_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_155

def optimizedBody163_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_152 optimizedBody163_156

def optimizedBody163_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_157

def optimizedBody163_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_138 optimizedBody163_158

def optimizedBody163_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_137 optimizedBody163_159

def optimizedBody163_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_136 optimizedBody163_160

def optimizedBody163_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_55 optimizedBody163_161

def optimizedBody163_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_162

def optimizedBody163_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_135 optimizedBody163_163

def optimizedBody163_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_164

def optimizedBody163_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_120 optimizedBody163_165

def optimizedBody163_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_166

def optimizedBody163_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_119 optimizedBody163_167

def optimizedBody163_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_115 optimizedBody163_168

def optimizedBody163_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_114 optimizedBody163_169

def optimizedBody163_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_55 optimizedBody163_170

def optimizedBody163_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_171

def optimizedBody163_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_113 optimizedBody163_172

def optimizedBody163_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_173

def optimizedBody163_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_99 optimizedBody163_174

def optimizedBody163_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_98 optimizedBody163_175

def optimizedBody163_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_97 optimizedBody163_176

def optimizedBody163_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_96 optimizedBody163_177

def optimizedBody163_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_178

def optimizedBody163_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (48, 48), (46, 46), (14, 14)]

def optimizedBody163_181 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody163_179 optimizedBody163_180

def optimizedBody163_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 247#64)

def optimizedBody163_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551424#64)))

def optimizedBody163_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 4)]

def optimizedBody163_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (4, 48)]

def optimizedBody163_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46), (4, 48)]

def optimizedBody163_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_186 optimizedBody163_7

def optimizedBody163_188 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_185, 163, 16)) (some 159) ([2]) (some (2, optimizedBody163_187, 163, 17))

def optimizedBody163_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_188 optimizedBody163_63

def optimizedBody163_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_184 optimizedBody163_189

def optimizedBody163_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_37 optimizedBody163_190

def optimizedBody163_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_191

def optimizedBody163_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 46), (4, 4)]

def optimizedBody163_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_193

def optimizedBody163_195 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_192 optimizedBody163_194

def optimizedBody163_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody163_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_196 optimizedBody163_25

def optimizedBody163_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_197

def optimizedBody163_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_3 optimizedBody163_198

def optimizedBody163_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_199

def optimizedBody163_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_195 optimizedBody163_200

def optimizedBody163_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_201

def optimizedBody163_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_99 optimizedBody163_202

def optimizedBody163_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_98 optimizedBody163_203

def optimizedBody163_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_183 optimizedBody163_204

def optimizedBody163_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_96 optimizedBody163_205

def optimizedBody163_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_206

def optimizedBody163_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 46), (10, 12), (8, 14), (50, 48)]

def optimizedBody163_209 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody163_207 optimizedBody163_208

def optimizedBody163_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody163_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 10 (Flapjack.WordRegImm.imm 18446744073709551369#64)))

def optimizedBody163_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody163_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody163_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 8), (50, 50)]

def optimizedBody163_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody163_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody163_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_216 optimizedBody163_7

def optimizedBody163_218 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_215, 163, 18)) (some 159) ([2]) (some (2, optimizedBody163_217, 163, 19))

def optimizedBody163_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 48), (0, 0)]

def optimizedBody163_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_219

def optimizedBody163_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_218 optimizedBody163_220

def optimizedBody163_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_214 optimizedBody163_221

def optimizedBody163_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_37 optimizedBody163_222

def optimizedBody163_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_223

def optimizedBody163_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 8), (0, 50)]

def optimizedBody163_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_225

def optimizedBody163_227 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_224 optimizedBody163_226

def optimizedBody163_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 48)]

def optimizedBody163_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody163_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody163_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_230 optimizedBody163_7

def optimizedBody163_232 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_229, 163, 20)) (some 160) ([2, 4]) (some (2, optimizedBody163_231, 163, 21))

def optimizedBody163_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 4)]

def optimizedBody163_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody163_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody163_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_235 optimizedBody163_7

def optimizedBody163_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_234, 163, 22)) (some 159) ([2]) (some (2, optimizedBody163_236, 163, 23))

def optimizedBody163_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 6), (0, 0), (4, 4)]

def optimizedBody163_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_238

def optimizedBody163_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_237 optimizedBody163_239

def optimizedBody163_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_233 optimizedBody163_240

def optimizedBody163_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_121 optimizedBody163_241

def optimizedBody163_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_242

def optimizedBody163_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (6, 46), (0, 48), (4, 4)]

def optimizedBody163_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_244

def optimizedBody163_246 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_243 optimizedBody163_245

def optimizedBody163_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4)]

def optimizedBody163_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48)]

def optimizedBody163_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48)]

def optimizedBody163_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_249 optimizedBody163_7

def optimizedBody163_251 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody163_248, 163, 24)) (some 159) ([2]) (some (2, optimizedBody163_250, 163, 25))

def optimizedBody163_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_251 optimizedBody163_145

def optimizedBody163_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_247 optimizedBody163_252

def optimizedBody163_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_37 optimizedBody163_253

def optimizedBody163_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_254

def optimizedBody163_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 6), (4, 4)]

def optimizedBody163_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_256

def optimizedBody163_258 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody163_255 optimizedBody163_257

def optimizedBody163_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_153 optimizedBody163_198

def optimizedBody163_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_137 optimizedBody163_259

def optimizedBody163_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_260

def optimizedBody163_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_258 optimizedBody163_261

def optimizedBody163_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_262

def optimizedBody163_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_138 optimizedBody163_263

def optimizedBody163_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_137 optimizedBody163_264

def optimizedBody163_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_136 optimizedBody163_265

def optimizedBody163_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_55 optimizedBody163_266

def optimizedBody163_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_267

def optimizedBody163_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_246 optimizedBody163_268

def optimizedBody163_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_269

def optimizedBody163_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_120 optimizedBody163_270

def optimizedBody163_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_271

def optimizedBody163_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_232 optimizedBody163_272

def optimizedBody163_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_228 optimizedBody163_273

def optimizedBody163_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_114 optimizedBody163_274

def optimizedBody163_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_55 optimizedBody163_275

def optimizedBody163_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_276

def optimizedBody163_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_227 optimizedBody163_277

def optimizedBody163_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_36 optimizedBody163_278

def optimizedBody163_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_213 optimizedBody163_279

def optimizedBody163_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_212 optimizedBody163_280

def optimizedBody163_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_211 optimizedBody163_281

def optimizedBody163_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_210 optimizedBody163_282

def optimizedBody163_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_283

def optimizedBody163_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_284

def optimizedBody163_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_209 optimizedBody163_285

def optimizedBody163_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_96 optimizedBody163_286

def optimizedBody163_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_182 optimizedBody163_287

def optimizedBody163_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_288

def optimizedBody163_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_289

def optimizedBody163_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_181 optimizedBody163_290

def optimizedBody163_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_96 optimizedBody163_291

def optimizedBody163_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_95 optimizedBody163_292

def optimizedBody163_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_293

def optimizedBody163_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_294

def optimizedBody163_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_94 optimizedBody163_295

def optimizedBody163_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_19 optimizedBody163_296

def optimizedBody163_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_32 optimizedBody163_297

def optimizedBody163_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_298

def optimizedBody163_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_299

def optimizedBody163_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_31 optimizedBody163_300

def optimizedBody163_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_20 optimizedBody163_301

def optimizedBody163_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_19 optimizedBody163_302

def optimizedBody163_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_18 optimizedBody163_303

def optimizedBody163_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_17 optimizedBody163_304

def optimizedBody163_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_2 optimizedBody163_305

def optimizedBody163_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_16 optimizedBody163_306

def optimizedBody163_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_1 optimizedBody163_307

def optimizedBody163_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody163_0 optimizedBody163_308

def oracle163 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 8 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 (Flapjack.Spt.ls 1))
                  Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 28))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 7 Flapjack.Spt.ln))
                  9
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
            8
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 27 Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
                8
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 22))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 26 (Flapjack.Spt.ls 2)))
                  9
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 Flapjack.Spt.ln)))
                10
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 23))) 9
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 24)))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 8
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              10
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 10
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln))
                8
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)) 10
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 26 Flapjack.Spt.ln) (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 0 (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 1
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 1)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 25)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 0))) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.ls 1)) 26
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 0))))
                0
                (Flapjack.Spt.bs Flapjack.Spt.ln 8
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 2
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
                  9 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7 Flapjack.Spt.ln)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
                  1
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 2
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 8 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5)) 0
                    (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                  0 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) (Flapjack.Spt.ls 28))
                  Flapjack.Spt.ln)
                28
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) 27
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 26))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
                26 Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 22))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
                27
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) (Flapjack.Spt.ls 23))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) 26
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))))
def optimized163 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(163, 3, optimizedBody163_309)
theorem optimize163_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source163, oracle163) = optimized163 := by
  cbv
#print axioms optimize163_eq
end InitECandidate.Proofs.SmallStages.Goal163
