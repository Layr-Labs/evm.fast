import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody385_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody385_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (6, 6), (44, 44), (8, 46)]

def optimizedBody385_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46)]

def optimizedBody385_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody385_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_2 optimizedBody385_3

def optimizedBody385_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody385_1, 385, 2)) (some 384) ([2, 4]) (some (2, optimizedBody385_4, 385, 3))

def optimizedBody385_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody385_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody385_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 8 144#64))

def optimizedBody385_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4294967295#64)

def optimizedBody385_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody385_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 66#64)

def optimizedBody385_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody385_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody385_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody385_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody385_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_15 optimizedBody385_3

def optimizedBody385_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_14 optimizedBody385_16

def optimizedBody385_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_13 optimizedBody385_17

def optimizedBody385_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_12 optimizedBody385_18

def optimizedBody385_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_11 optimizedBody385_19

def optimizedBody385_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_20

def optimizedBody385_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody385_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 12) optimizedBody385_21 optimizedBody385_22

def optimizedBody385_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (14, 4), (12, 12)]

def optimizedBody385_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody385_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 60#64)

def optimizedBody385_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_26 optimizedBody385_19

def optimizedBody385_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_27

def optimizedBody385_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody385_28 optimizedBody385_22

def optimizedBody385_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 6), (12, 12)]

def optimizedBody385_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 61#64)

def optimizedBody385_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_31 optimizedBody385_19

def optimizedBody385_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_32

def optimizedBody385_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 10) optimizedBody385_33 optimizedBody385_22

def optimizedBody385_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 152#64))

def optimizedBody385_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody385_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 131072#64)

def optimizedBody385_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 200#64))

def optimizedBody385_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 62#64)

def optimizedBody385_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_39 optimizedBody385_19

def optimizedBody385_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_40

def optimizedBody385_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody385_41 optimizedBody385_22

def optimizedBody385_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody385_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_43

def optimizedBody385_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_44

def optimizedBody385_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_42 optimizedBody385_45

def optimizedBody385_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_38 optimizedBody385_46

def optimizedBody385_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_47

def optimizedBody385_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_37 optimizedBody385_48

def optimizedBody385_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_49

def optimizedBody385_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody385_50 optimizedBody385_44

def optimizedBody385_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16777216#64)

def optimizedBody385_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody385_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 63#64)

def optimizedBody385_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_54 optimizedBody385_19

def optimizedBody385_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_55

def optimizedBody385_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody385_56 optimizedBody385_22

def optimizedBody385_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody385_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody385_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_59 optimizedBody385_19

def optimizedBody385_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_60

def optimizedBody385_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 10) optimizedBody385_61 optimizedBody385_22

def optimizedBody385_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody385_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody385_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 32#64))

def optimizedBody385_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 40#64))

def optimizedBody385_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 14), (48, 0), (50, 10), (52, 2)]

def optimizedBody385_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (4, 46), (12, 48), (6, 50), (0, 52)]

def optimizedBody385_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (4, 46), (12, 48), (6, 50), (0, 52)]

def optimizedBody385_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_69 optimizedBody385_3

def optimizedBody385_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody385_68, 385, 4)) (some 101) ([2, 4, 6, 8]) (some (2, optimizedBody385_70, 385, 5))

def optimizedBody385_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody385_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 65#64)

def optimizedBody385_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_73 optimizedBody385_19

def optimizedBody385_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_74

def optimizedBody385_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody385_75 optimizedBody385_22

def optimizedBody385_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody385_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 65#64)

def optimizedBody385_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody385_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_79 optimizedBody385_17

def optimizedBody385_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_53 optimizedBody385_80

def optimizedBody385_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_78 optimizedBody385_81

def optimizedBody385_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_82

def optimizedBody385_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody385_83 optimizedBody385_22

def optimizedBody385_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 4), (6, 6)]

def optimizedBody385_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6]

def optimizedBody385_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_85 optimizedBody385_86

def optimizedBody385_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_87

def optimizedBody385_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_88

def optimizedBody385_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_84 optimizedBody385_89

def optimizedBody385_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_77 optimizedBody385_90

def optimizedBody385_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_53 optimizedBody385_91

def optimizedBody385_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_92

def optimizedBody385_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_93

def optimizedBody385_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_76 optimizedBody385_94

def optimizedBody385_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_72 optimizedBody385_95

def optimizedBody385_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_96

def optimizedBody385_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_97

def optimizedBody385_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_71 optimizedBody385_98

def optimizedBody385_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_67 optimizedBody385_99

def optimizedBody385_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_66 optimizedBody385_100

def optimizedBody385_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_101

def optimizedBody385_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_65 optimizedBody385_102

def optimizedBody385_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_103

def optimizedBody385_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_64 optimizedBody385_104

def optimizedBody385_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_105

def optimizedBody385_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_63 optimizedBody385_106

def optimizedBody385_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_107

def optimizedBody385_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_108

def optimizedBody385_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_109

def optimizedBody385_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_62 optimizedBody385_110

def optimizedBody385_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_58 optimizedBody385_111

def optimizedBody385_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_52 optimizedBody385_112

def optimizedBody385_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_113

def optimizedBody385_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_114

def optimizedBody385_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_57 optimizedBody385_115

def optimizedBody385_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_53 optimizedBody385_116

def optimizedBody385_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_52 optimizedBody385_117

def optimizedBody385_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_118

def optimizedBody385_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_51 optimizedBody385_119

def optimizedBody385_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_36 optimizedBody385_120

def optimizedBody385_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_35 optimizedBody385_121

def optimizedBody385_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_122

def optimizedBody385_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_123

def optimizedBody385_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_124

def optimizedBody385_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_34 optimizedBody385_125

def optimizedBody385_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_30 optimizedBody385_126

def optimizedBody385_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_127

def optimizedBody385_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_128

def optimizedBody385_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_29 optimizedBody385_129

def optimizedBody385_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_25 optimizedBody385_130

def optimizedBody385_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_24 optimizedBody385_131

def optimizedBody385_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_132

def optimizedBody385_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_133

def optimizedBody385_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_23 optimizedBody385_134

def optimizedBody385_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_10 optimizedBody385_135

def optimizedBody385_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_9 optimizedBody385_136

def optimizedBody385_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_8 optimizedBody385_137

def optimizedBody385_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_7 optimizedBody385_138

def optimizedBody385_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_6 optimizedBody385_139

def optimizedBody385_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_5 optimizedBody385_140

def optimizedBody385_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody385_0 optimizedBody385_141

def optimized385 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(385, 3, optimizedBody385_142)
end InitECandidate.Proofs.StackAnalysis
