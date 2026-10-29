import InitECandidate.Proofs.WordStages.Optimize313
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source329
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody329_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0), (4, 4)]

def optimizedBody329_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody329_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody329_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody329_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody329_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody329_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody329_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody329_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody329_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_7 optimizedBody329_8

def optimizedBody329_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_6 optimizedBody329_9

def optimizedBody329_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_5 optimizedBody329_10

def optimizedBody329_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_4 optimizedBody329_11

def optimizedBody329_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_3 optimizedBody329_12

def optimizedBody329_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_13

def optimizedBody329_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 4)]

def optimizedBody329_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody329_14 optimizedBody329_15

def optimizedBody329_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody329_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody329_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody329_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46)]

def optimizedBody329_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def optimizedBody329_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody329_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody329_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody329_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody329_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (48, 0)]

def optimizedBody329_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48)]

def optimizedBody329_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 48)]

def optimizedBody329_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody329_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_28 optimizedBody329_29

def optimizedBody329_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody329_27, 329, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody329_30, 329, 3))

def optimizedBody329_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 33#64)

def optimizedBody329_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_32 optimizedBody329_9

def optimizedBody329_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_33

def optimizedBody329_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_31 optimizedBody329_34

def optimizedBody329_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_26 optimizedBody329_35

def optimizedBody329_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_25 optimizedBody329_36

def optimizedBody329_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_24 optimizedBody329_37

def optimizedBody329_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_17 optimizedBody329_38

def optimizedBody329_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_23 optimizedBody329_39

def optimizedBody329_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_7 optimizedBody329_40

def optimizedBody329_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_22 optimizedBody329_41

def optimizedBody329_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_21 optimizedBody329_42

def optimizedBody329_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_20 optimizedBody329_43

def optimizedBody329_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_44

def optimizedBody329_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (8, 8), (44, 0)]

def optimizedBody329_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody329_45 optimizedBody329_46

def optimizedBody329_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody329_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody329_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 8)]

def optimizedBody329_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (8, 48)]

def optimizedBody329_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody329_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_52 optimizedBody329_29

def optimizedBody329_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody329_51, 329, 4)) (some 286) ([2]) (some (2, optimizedBody329_53, 329, 5))

def optimizedBody329_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (8, 8)]

def optimizedBody329_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_55

def optimizedBody329_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_54 optimizedBody329_56

def optimizedBody329_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_50 optimizedBody329_57

def optimizedBody329_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_49 optimizedBody329_58

def optimizedBody329_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_59

def optimizedBody329_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody329_60 optimizedBody329_56

def optimizedBody329_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody329_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody329_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody329_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 32#64)

def optimizedBody329_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (4, 4), (6, 6), (48, 44), (50, 6)]

def optimizedBody329_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 48), (4, 50)]

def optimizedBody329_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 48), (4, 50)]

def optimizedBody329_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_68 optimizedBody329_29

def optimizedBody329_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody329_67, 329, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody329_69, 329, 7))

def optimizedBody329_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody329_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_71 optimizedBody329_8

def optimizedBody329_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_72

def optimizedBody329_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_70 optimizedBody329_73

def optimizedBody329_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_66 optimizedBody329_74

def optimizedBody329_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_75

def optimizedBody329_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (8, 8), (44, 44)]

def optimizedBody329_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 0) optimizedBody329_76 optimizedBody329_77

def optimizedBody329_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (44, 44), (46, 46)]

def optimizedBody329_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody329_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody329_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_81 optimizedBody329_29

def optimizedBody329_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody329_80, 329, 8)) (some 328) ([2]) (some (2, optimizedBody329_82, 329, 9))

def optimizedBody329_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody329_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 160#64)

def optimizedBody329_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody329_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody329_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44)]

def optimizedBody329_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody329_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody329_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_90 optimizedBody329_29

def optimizedBody329_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody329_89, 329, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody329_91, 329, 11))

def optimizedBody329_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_92 optimizedBody329_34

def optimizedBody329_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_88 optimizedBody329_93

def optimizedBody329_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_25 optimizedBody329_94

def optimizedBody329_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_3 optimizedBody329_95

def optimizedBody329_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_87 optimizedBody329_96

def optimizedBody329_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_84 optimizedBody329_97

def optimizedBody329_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_86 optimizedBody329_98

def optimizedBody329_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_85 optimizedBody329_99

def optimizedBody329_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_84 optimizedBody329_100

def optimizedBody329_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_101

def optimizedBody329_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_83 optimizedBody329_102

def optimizedBody329_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_79 optimizedBody329_103

def optimizedBody329_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_104

def optimizedBody329_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_105

def optimizedBody329_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_78 optimizedBody329_106

def optimizedBody329_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_65 optimizedBody329_107

def optimizedBody329_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_64 optimizedBody329_108

def optimizedBody329_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_63 optimizedBody329_109

def optimizedBody329_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_17 optimizedBody329_110

def optimizedBody329_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_62 optimizedBody329_111

def optimizedBody329_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_17 optimizedBody329_112

def optimizedBody329_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_113

def optimizedBody329_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_61 optimizedBody329_114

def optimizedBody329_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_1 optimizedBody329_115

def optimizedBody329_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_48 optimizedBody329_116

def optimizedBody329_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_17 optimizedBody329_117

def optimizedBody329_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_118

def optimizedBody329_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_119

def optimizedBody329_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_47 optimizedBody329_120

def optimizedBody329_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_19 optimizedBody329_121

def optimizedBody329_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_18 optimizedBody329_122

def optimizedBody329_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_17 optimizedBody329_123

def optimizedBody329_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_124

def optimizedBody329_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_2 optimizedBody329_125

def optimizedBody329_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_16 optimizedBody329_126

def optimizedBody329_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_1 optimizedBody329_127

def optimizedBody329_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody329_0 optimizedBody329_128

def oracle329 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 2 Flapjack.Spt.ln)
              23 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)) 2 Flapjack.Spt.ln))
            2
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            0
            (Flapjack.Spt.bs Flapjack.Spt.ln 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 3)) 1 Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
              2 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln 4
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
def optimized329 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(329, 3, optimizedBody329_129)
theorem optimize329_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source329, oracle329) = optimized329 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize329_eq
end InitECandidate.Proofs.WordStages
