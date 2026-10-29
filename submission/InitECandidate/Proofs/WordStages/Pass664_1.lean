import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass664_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word664_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 45 Flapjack.WordStore.heapLength

def word664_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 45 45 (Flapjack.WordRegImm.imm 1#64)))

def word664_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_0 word664_1_1

def word664_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 45 45

def word664_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_2 word664_1_3

def word664_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 45 18446744073709551224#64))

def word664_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_5

def word664_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word664_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_6 word664_1_7

def word664_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 1#64)

def word664_1_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word664_1_11 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_9 word664_1_10

def word664_1_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1#64)

def word664_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_11 word664_1_12

def word664_1_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def word664_1_15 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_13 word664_1_14

def word664_1_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def word664_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_15 word664_1_16

def word664_1_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word664_1_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 6) word664_1_17 word664_1_18

def word664_1_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 0#64)

def word664_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_20 word664_1_10

def word664_1_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def word664_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_21 word664_1_22

def word664_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_19 word664_1_23

def word664_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_8 word664_1_24

def word664_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_25 word664_1_10

def word664_1_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word664_1_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_1_18, 664, 2)) (some 658) ([]) (some (34, word664_1_27, 664, 3))

def word664_1_29 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_26 word664_1_28

def word664_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_29 word664_1_10

def word664_1_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 384#64)

def word664_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_30 word664_1_31

def word664_1_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_1_18, 664, 4)) (some 68) ([34]) (some (34, word664_1_27, 664, 5))

def word664_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_31 word664_1_33

def word664_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_32 word664_1_34

def word664_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_35 word664_1_10

def word664_1_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 34 45 (Flapjack.WordRegImm.imm 18446744073709551224#64)))

def word664_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_37

def word664_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_36 word664_1_38

def word664_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 12)]

def word664_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_39 word664_1_40

def word664_1_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 6)]

def word664_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_41 word664_1_42

def word664_1_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 34)]

def word664_1_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 28 (Flapjack.WordLangAddr.addr 45 0#64))

def word664_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_44 word664_1_45

def word664_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_43 word664_1_46

def word664_1_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 45 18446744073709551224#64))

def word664_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_48

def word664_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_47 word664_1_49

def word664_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_50 word664_1_9

def word664_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_51 word664_1_7

def word664_1_53 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_52 word664_1_22

def word664_1_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word664_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_53 word664_1_54

def word664_1_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def word664_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_55 word664_1_56

def word664_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 12)]

def word664_1_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 45 0#64))

def word664_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_58 word664_1_59

def word664_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_57 word664_1_60

def word664_1_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 0#64)

def word664_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_61 word664_1_62

def word664_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 45 8#64))

def word664_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_58 word664_1_64

def word664_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_63 word664_1_65

def word664_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_66 word664_1_62

def word664_1_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 45 16#64))

def word664_1_69 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_58 word664_1_68

def word664_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_67 word664_1_69

def word664_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_70 word664_1_62

def word664_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 45 24#64))

def word664_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_58 word664_1_72

def word664_1_74 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_71 word664_1_73

def word664_1_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 45 18446744073709551224#64))

def word664_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_75

def word664_1_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 32#64)))

def word664_1_78 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_77

def word664_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_74 word664_1_78

def word664_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_79 word664_1_20

def word664_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_80 word664_1_7

def word664_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_81 word664_1_22

def word664_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_82 word664_1_54

def word664_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_83 word664_1_62

def word664_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_84 word664_1_60

def word664_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_85 word664_1_62

def word664_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_86 word664_1_65

def word664_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_87 word664_1_62

def word664_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_88 word664_1_69

def word664_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_89 word664_1_62

def word664_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_90 word664_1_73

def word664_1_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 64#64)))

def word664_1_93 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_92

def word664_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_91 word664_1_93

def word664_1_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 15423480562983756912#64)

def word664_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_94 word664_1_95

def word664_1_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 6652412619979170166#64)

def word664_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_96 word664_1_97

def word664_1_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 16769610461022161760#64)

def word664_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_98 word664_1_99

def word664_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1334392721173227487#64)

def word664_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_100 word664_1_101

def word664_1_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 15423480562983756912#64)

def word664_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_102 word664_1_103

def word664_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_104 word664_1_60

def word664_1_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 6652412619979170166#64)

def word664_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_105 word664_1_106

def word664_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_107 word664_1_65

def word664_1_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 16769610461022161760#64)

def word664_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_108 word664_1_109

def word664_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_110 word664_1_69

def word664_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1334392721173227487#64)

def word664_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_111 word664_1_112

def word664_1_114 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_113 word664_1_73

def word664_1_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 96#64)))

def word664_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_115

def word664_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_114 word664_1_116

def word664_1_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 14581793986494816940#64)

def word664_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_117 word664_1_118

def word664_1_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 8392900422778406885#64)

def word664_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_119 word664_1_120

def word664_1_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 11975771789798476686#64)

def word664_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_121 word664_1_122

def word664_1_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 2623794231377586150#64)

def word664_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_123 word664_1_124

def word664_1_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 14581793986494816940#64)

def word664_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_125 word664_1_126

def word664_1_128 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_127 word664_1_60

def word664_1_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 8392900422778406885#64)

def word664_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_128 word664_1_129

def word664_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_130 word664_1_65

def word664_1_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 11975771789798476686#64)

def word664_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_131 word664_1_132

def word664_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_133 word664_1_69

def word664_1_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 2623794231377586150#64)

def word664_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_134 word664_1_135

def word664_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_136 word664_1_73

def word664_1_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 128#64)))

def word664_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_138

def word664_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_137 word664_1_139

def word664_1_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 11088870908804158781#64)

def word664_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_140 word664_1_141

def word664_1_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 13226160682434769676#64)

def word664_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_142 word664_1_143

def word664_1_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 5479733118184829251#64)

def word664_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_144 word664_1_145

def word664_1_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 3437169660107756023#64)

def word664_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_146 word664_1_147

def word664_1_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 11088870908804158781#64)

def word664_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_148 word664_1_149

def word664_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_150 word664_1_60

def word664_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 13226160682434769676#64)

def word664_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_151 word664_1_152

def word664_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_153 word664_1_65

def word664_1_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 5479733118184829251#64)

def word664_1_156 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_154 word664_1_155

def word664_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_156 word664_1_69

def word664_1_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 3437169660107756023#64)

def word664_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_157 word664_1_158

def word664_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_159 word664_1_73

def word664_1_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 160#64)))

def word664_1_162 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_161

def word664_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_160 word664_1_162

def word664_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 1613930359396748194#64)

def word664_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_163 word664_1_164

def word664_1_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3651902652079185358#64)

def word664_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_165 word664_1_166

def word664_1_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 5450706350010664852#64)

def word664_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_167 word664_1_168

def word664_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1642095672556236320#64)

def word664_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_169 word664_1_170

def word664_1_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1613930359396748194#64)

def word664_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_171 word664_1_172

def word664_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_173 word664_1_60

def word664_1_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 3651902652079185358#64)

def word664_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_174 word664_1_175

def word664_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_176 word664_1_65

def word664_1_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 5450706350010664852#64)

def word664_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_177 word664_1_178

def word664_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_179 word664_1_69

def word664_1_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1642095672556236320#64)

def word664_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_180 word664_1_181

def word664_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_182 word664_1_73

def word664_1_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 192#64)))

def word664_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_184

def word664_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_183 word664_1_185

def word664_1_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 15876315988453495642#64)

def word664_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_186 word664_1_187

def word664_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15828711151707445656#64)

def word664_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_188 word664_1_189

def word664_1_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 15879347695360604601#64)

def word664_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_190 word664_1_191

def word664_1_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 449501266848708060#64)

def word664_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_192 word664_1_193

def word664_1_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 15876315988453495642#64)

def word664_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_194 word664_1_195

def word664_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_196 word664_1_60

def word664_1_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 15828711151707445656#64)

def word664_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_197 word664_1_198

def word664_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_199 word664_1_65

def word664_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 15879347695360604601#64)

def word664_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_200 word664_1_201

def word664_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_202 word664_1_69

def word664_1_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 449501266848708060#64)

def word664_1_205 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_203 word664_1_204

def word664_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_205 word664_1_73

def word664_1_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 224#64)))

def word664_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_207

def word664_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_206 word664_1_208

def word664_1_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 9427018508834943203#64)

def word664_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_209 word664_1_210

def word664_1_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 2414067704922266578#64)

def word664_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_211 word664_1_212

def word664_1_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 505728791003885355#64)

def word664_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_213 word664_1_214

def word664_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 558513134835401882#64)

def word664_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_215 word664_1_216

def word664_1_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 9427018508834943203#64)

def word664_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_217 word664_1_218

def word664_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_219 word664_1_60

def word664_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 2414067704922266578#64)

def word664_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_220 word664_1_221

def word664_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_222 word664_1_65

def word664_1_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 505728791003885355#64)

def word664_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_223 word664_1_224

def word664_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_225 word664_1_69

def word664_1_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 558513134835401882#64)

def word664_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_226 word664_1_227

def word664_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_228 word664_1_73

def word664_1_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 256#64)))

def word664_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_230

def word664_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_229 word664_1_231

def word664_1_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 9550480412176721762#64)

def word664_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_232 word664_1_233

def word664_1_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 15218619680543796338#64)

def word664_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_234 word664_1_235

def word664_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 9291982349918543492#64)

def word664_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_236 word664_1_237

def word664_1_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 411322207813150721#64)

def word664_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_238 word664_1_239

def word664_1_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 9550480412176721762#64)

def word664_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_240 word664_1_241

def word664_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_242 word664_1_60

def word664_1_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 15218619680543796338#64)

def word664_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_243 word664_1_244

def word664_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_245 word664_1_65

def word664_1_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 9291982349918543492#64)

def word664_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_246 word664_1_247

def word664_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_248 word664_1_69

def word664_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 411322207813150721#64)

def word664_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_249 word664_1_250

def word664_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_251 word664_1_73

def word664_1_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 288#64)))

def word664_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_253

def word664_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_252 word664_1_254

def word664_1_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 13923800814728216870#64)

def word664_1_257 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_255 word664_1_256

def word664_1_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 3928778152882390883#64)

def word664_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_257 word664_1_258

def word664_1_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 11473624495072943250#64)

def word664_1_261 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_259 word664_1_260

def word664_1_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 3176267935786044142#64)

def word664_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_261 word664_1_262

def word664_1_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 13923800814728216870#64)

def word664_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_263 word664_1_264

def word664_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_265 word664_1_60

def word664_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 3928778152882390883#64)

def word664_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_266 word664_1_267

def word664_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_268 word664_1_65

def word664_1_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 11473624495072943250#64)

def word664_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_269 word664_1_270

def word664_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_271 word664_1_69

def word664_1_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 3176267935786044142#64)

def word664_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_272 word664_1_273

def word664_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_274 word664_1_73

def word664_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 320#64)))

def word664_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_276

def word664_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_275 word664_1_277

def word664_1_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 3360468246954731823#64)

def word664_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_278 word664_1_279

def word664_1_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 4781773437820083155#64)

def word664_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_280 word664_1_281

def word664_1_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 16805804752481107956#64)

def word664_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_282 word664_1_283

def word664_1_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 109144015201994313#64)

def word664_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_284 word664_1_285

def word664_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 3360468246954731823#64)

def word664_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_286 word664_1_287

def word664_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_288 word664_1_60

def word664_1_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 4781773437820083155#64)

def word664_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_289 word664_1_290

def word664_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_291 word664_1_65

def word664_1_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 16805804752481107956#64)

def word664_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_292 word664_1_293

def word664_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_294 word664_1_69

def word664_1_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 109144015201994313#64)

def word664_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_295 word664_1_296

def word664_1_298 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_297 word664_1_73

def word664_1_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 45 (Flapjack.WordRegImm.imm 352#64)))

def word664_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_76 word664_1_299

def word664_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_298 word664_1_300

def word664_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 2650008764942134347#64)

def word664_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_301 word664_1_302

def word664_1_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 12718389207422085824#64)

def word664_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_303 word664_1_304

def word664_1_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 11709273573250211709#64)

def word664_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_305 word664_1_306

def word664_1_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1345717340070545013#64)

def word664_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_307 word664_1_308

def word664_1_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 2650008764942134347#64)

def word664_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_309 word664_1_310

def word664_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_311 word664_1_60

def word664_1_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 12718389207422085824#64)

def word664_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_312 word664_1_313

def word664_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_314 word664_1_65

def word664_1_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 11709273573250211709#64)

def word664_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_315 word664_1_316

def word664_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_317 word664_1_69

def word664_1_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1345717340070545013#64)

def word664_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_318 word664_1_319

def word664_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_320 word664_1_73

def word664_1_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 64#64)

def word664_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_321 word664_1_322

def word664_1_324 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_1_18, 664, 6)) (some 68) ([34]) (some (34, word664_1_27, 664, 7))

def word664_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_322 word664_1_324

def word664_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_323 word664_1_325

def word664_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_326 word664_1_10

def word664_1_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 34 45 (Flapjack.WordRegImm.imm 18446744073709551112#64)))

def word664_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_328

def word664_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_327 word664_1_329

def word664_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_330 word664_1_40

def word664_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_331 word664_1_42

def word664_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_332 word664_1_46

def word664_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 2101474240800967975#64)

def word664_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_333 word664_1_334

def word664_1_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 11918193690587271358#64)

def word664_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_335 word664_1_336

def word664_1_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 11796765086790633677#64)

def word664_1_339 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_337 word664_1_338

def word664_1_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1148157965898539121#64)

def word664_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_339 word664_1_340

def word664_1_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 27#64)

def word664_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_341 word664_1_342

def word664_1_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word664_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_343 word664_1_344

def word664_1_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def word664_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_345 word664_1_346

def word664_1_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def word664_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_347 word664_1_348

def word664_1_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 2101474240800967975#64)

def word664_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_349 word664_1_350

def word664_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 11918193690587271358#64)

def word664_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_351 word664_1_352

def word664_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 11796765086790633677#64)

def word664_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_353 word664_1_354

def word664_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1148157965898539121#64)

def word664_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_355 word664_1_356

def word664_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_356 word664_1_354

def word664_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_358 word664_1_352

def word664_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_359 word664_1_350

def word664_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_360 word664_1_348

def word664_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_361 word664_1_346

def word664_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_362 word664_1_344

def word664_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_363 word664_1_342

def word664_1_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word664_1_366 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 40, 4, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word664_1_18, 664, 8)) (some 668) ([16, 38, 10, 32, 22, 44, 2, 24]) (some (16, word664_1_365, 664, 9))

def word664_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_364 word664_1_366

def word664_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_357 word664_1_367

def word664_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_368 word664_1_10

def word664_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 3#64)

def word664_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_369 word664_1_370

def word664_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 0#64)

def word664_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_371 word664_1_372

def word664_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def word664_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_373 word664_1_374

def word664_1_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def word664_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_375 word664_1_376

def word664_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 12)]

def word664_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_377 word664_1_378

def word664_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 34)]

def word664_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_379 word664_1_380

def word664_1_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 6)]

def word664_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_381 word664_1_382

def word664_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 28)]

def word664_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_383 word664_1_384

def word664_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_376 word664_1_374

def word664_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_386 word664_1_372

def word664_1_388 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_387 word664_1_370

def word664_1_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word664_1_390 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 38, 10, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word664_1_18, 664, 10)) (some 668) ([22, 44, 2, 24, 14, 36, 8, 30]) (some (22, word664_1_389, 664, 11))

def word664_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_388 word664_1_390

def word664_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_385 word664_1_391

def word664_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_392 word664_1_10

def word664_1_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 16)]

def word664_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_393 word664_1_394

def word664_1_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 38)]

def word664_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_395 word664_1_396

def word664_1_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 10)]

def word664_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_397 word664_1_398

def word664_1_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 32)]

def word664_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_399 word664_1_400

def word664_1_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word664_1_403 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 44, 2, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word664_1_18, 664, 12)) (some 667) ([14, 36, 8, 30]) (some (14, word664_1_402, 664, 13))

def word664_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_401 word664_1_403

def word664_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_404 word664_1_10

def word664_1_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 45 18446744073709551112#64))

def word664_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_406

def word664_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_405 word664_1_407

def word664_1_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 18)]

def word664_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_408 word664_1_409

def word664_1_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 40)]

def word664_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_410 word664_1_411

def word664_1_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 4)]

def word664_1_414 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_412 word664_1_413

def word664_1_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 26)]

def word664_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_414 word664_1_415

def word664_1_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 36)]

def word664_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_416 word664_1_417

def word664_1_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 14)]

def word664_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 45 0#64))

def word664_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_419 word664_1_420

def word664_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_418 word664_1_421

def word664_1_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 8)]

def word664_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_422 word664_1_423

def word664_1_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 45 8#64))

def word664_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_419 word664_1_425

def word664_1_427 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_424 word664_1_426

def word664_1_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 30)]

def word664_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_427 word664_1_428

def word664_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 45 16#64))

def word664_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_419 word664_1_430

def word664_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_429 word664_1_431

def word664_1_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 20)]

def word664_1_434 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_432 word664_1_433

def word664_1_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 42 (Flapjack.WordLangAddr.addr 45 24#64))

def word664_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_419 word664_1_435

def word664_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_434 word664_1_436

def word664_1_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 45 18446744073709551112#64))

def word664_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_438

def word664_1_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 32#64)))

def word664_1_441 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_439 word664_1_440

def word664_1_442 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_437 word664_1_441

def word664_1_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 22)]

def word664_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_442 word664_1_443

def word664_1_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44)]

def word664_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_444 word664_1_445

def word664_1_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 2)]

def word664_1_448 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_446 word664_1_447

def word664_1_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 24)]

def word664_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_448 word664_1_449

def word664_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_450 word664_1_417

def word664_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_451 word664_1_421

def word664_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_452 word664_1_423

def word664_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_453 word664_1_426

def word664_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_454 word664_1_428

def word664_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_455 word664_1_431

def word664_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_456 word664_1_433

def word664_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_457 word664_1_436

def word664_1_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 352#64)

def word664_1_460 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_458 word664_1_459

def word664_1_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word664_1_462 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_1_18, 664, 14)) (some 68) ([36]) (some (36, word664_1_461, 664, 15))

def word664_1_463 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_459 word664_1_462

def word664_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_460 word664_1_463

def word664_1_465 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_464 word664_1_10

def word664_1_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 45 (Flapjack.WordRegImm.imm 18446744073709551216#64)))

def word664_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_466

def word664_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_465 word664_1_467

def word664_1_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 14)]

def word664_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_468 word664_1_469

def word664_1_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 8)]

def word664_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_470 word664_1_471

def word664_1_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(45, 36)]

def word664_1_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 45 0#64))

def word664_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_473 word664_1_474

def word664_1_476 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_472 word664_1_475

def word664_1_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 45 18446744073709551216#64))

def word664_1_478 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_477

def word664_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_476 word664_1_478

def word664_1_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9698021743855595808#64)

def word664_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_479 word664_1_480

def word664_1_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9698021743855595808#64)

def word664_1_483 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_481 word664_1_482

def word664_1_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 45 0#64))

def word664_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_419 word664_1_484

def word664_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_483 word664_1_485

def word664_1_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 45 (Flapjack.WordLangAddr.addr 45 18446744073709551216#64))

def word664_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_4 word664_1_487

def word664_1_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 8#64)))

def word664_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_489

def word664_1_491 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_486 word664_1_490

def word664_1_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 4658111487712502692#64)

def word664_1_493 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_491 word664_1_492

def word664_1_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4658111487712502692#64)

def word664_1_495 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_493 word664_1_494

def word664_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_495 word664_1_485

def word664_1_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 16#64)))

def word664_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_497

def word664_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_496 word664_1_498

def word664_1_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9475478476403788475#64)

def word664_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_499 word664_1_500

def word664_1_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9475478476403788475#64)

def word664_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_501 word664_1_502

def word664_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_503 word664_1_485

def word664_1_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 24#64)))

def word664_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_505

def word664_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_504 word664_1_506

def word664_1_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 3895898136474990872#64)

def word664_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_507 word664_1_508

def word664_1_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 3895898136474990872#64)

def word664_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_509 word664_1_510

def word664_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_511 word664_1_485

def word664_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_440

def word664_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_512 word664_1_513

def word664_1_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 13897688294677189338#64)

def word664_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_514 word664_1_515

def word664_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13897688294677189338#64)

def word664_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_516 word664_1_517

def word664_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_518 word664_1_485

def word664_1_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 40#64)))

def word664_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_520

def word664_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_519 word664_1_521

def word664_1_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 13692288569157338976#64)

def word664_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_522 word664_1_523

def word664_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13692288569157338976#64)

def word664_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_524 word664_1_525

def word664_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_526 word664_1_485

def word664_1_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 48#64)))

def word664_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_528

def word664_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_527 word664_1_529

def word664_1_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 15521367811043670911#64)

def word664_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_530 word664_1_531

def word664_1_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 15521367811043670911#64)

def word664_1_534 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_532 word664_1_533

def word664_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_534 word664_1_485

def word664_1_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 56#64)))

def word664_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_536

def word664_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_535 word664_1_537

def word664_1_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 13992850401411864641#64)

def word664_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_538 word664_1_539

def word664_1_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13992850401411864641#64)

def word664_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_540 word664_1_541

def word664_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_542 word664_1_485

def word664_1_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 64#64)))

def word664_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_544

def word664_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_543 word664_1_545

def word664_1_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 6609620042336070051#64)

def word664_1_548 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_546 word664_1_547

def word664_1_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 6609620042336070051#64)

def word664_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_548 word664_1_549

def word664_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_550 word664_1_485

def word664_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 72#64)))

def word664_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_552

def word664_1_554 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_551 word664_1_553

def word664_1_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9167096575297741460#64)

def word664_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_554 word664_1_555

def word664_1_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9167096575297741460#64)

def word664_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_556 word664_1_557

def word664_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_558 word664_1_485

def word664_1_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 80#64)))

def word664_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_560

def word664_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_559 word664_1_561

def word664_1_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 3006977925533509404#64)

def word664_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_562 word664_1_563

def word664_1_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 3006977925533509404#64)

def word664_1_566 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_564 word664_1_565

def word664_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_566 word664_1_485

def word664_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 88#64)))

def word664_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_568

def word664_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_567 word664_1_569

def word664_1_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 13799376210358020352#64)

def word664_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_570 word664_1_571

def word664_1_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13799376210358020352#64)

def word664_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_572 word664_1_573

def word664_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_574 word664_1_485

def word664_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 96#64)))

def word664_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_576

def word664_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_575 word664_1_577

def word664_1_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 7213564696215919148#64)

def word664_1_580 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_578 word664_1_579

def word664_1_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7213564696215919148#64)

def word664_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_580 word664_1_581

def word664_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_582 word664_1_485

def word664_1_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 104#64)))

def word664_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_584

def word664_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_583 word664_1_585

def word664_1_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 12108970941387295838#64)

def word664_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_586 word664_1_587

def word664_1_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12108970941387295838#64)

def word664_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_588 word664_1_589

def word664_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_590 word664_1_485

def word664_1_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 112#64)))

def word664_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_592

def word664_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_591 word664_1_593

def word664_1_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 14800348210198864764#64)

def word664_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_594 word664_1_595

def word664_1_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 14800348210198864764#64)

def word664_1_598 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_596 word664_1_597

def word664_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_598 word664_1_485

def word664_1_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 120#64)))

def word664_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_600

def word664_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_599 word664_1_601

def word664_1_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 5333217130945090002#64)

def word664_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_602 word664_1_603

def word664_1_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 5333217130945090002#64)

def word664_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_604 word664_1_605

def word664_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_606 word664_1_485

def word664_1_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 128#64)))

def word664_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_608

def word664_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_607 word664_1_609

def word664_1_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 17191330154042290397#64)

def word664_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_610 word664_1_611

def word664_1_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 17191330154042290397#64)

def word664_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_612 word664_1_613

def word664_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_614 word664_1_485

def word664_1_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 136#64)))

def word664_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_616

def word664_1_618 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_615 word664_1_617

def word664_1_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 7728981312468502308#64)

def word664_1_620 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_618 word664_1_619

def word664_1_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7728981312468502308#64)

def word664_1_622 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_620 word664_1_621

def word664_1_623 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_622 word664_1_485

def word664_1_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 144#64)))

def word664_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_624

def word664_1_626 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_623 word664_1_625

def word664_1_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 13479501571575199621#64)

def word664_1_628 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_626 word664_1_627

def word664_1_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 13479501571575199621#64)

def word664_1_630 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_628 word664_1_629

def word664_1_631 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_630 word664_1_485

def word664_1_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 152#64)))

def word664_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_632

def word664_1_634 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_631 word664_1_633

def word664_1_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 4632319730382815766#64)

def word664_1_636 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_634 word664_1_635

def word664_1_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4632319730382815766#64)

def word664_1_638 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_636 word664_1_637

def word664_1_639 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_638 word664_1_485

def word664_1_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 160#64)))

def word664_1_641 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_640

def word664_1_642 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_639 word664_1_641

def word664_1_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 6183408236485651195#64)

def word664_1_644 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_642 word664_1_643

def word664_1_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 6183408236485651195#64)

def word664_1_646 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_644 word664_1_645

def word664_1_647 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_646 word664_1_485

def word664_1_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 168#64)))

def word664_1_649 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_648

def word664_1_650 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_647 word664_1_649

def word664_1_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 2344383644319854215#64)

def word664_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_650 word664_1_651

def word664_1_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2344383644319854215#64)

def word664_1_654 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_652 word664_1_653

def word664_1_655 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_654 word664_1_485

def word664_1_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 176#64)))

def word664_1_657 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_656

def word664_1_658 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_655 word664_1_657

def word664_1_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9541507823907846048#64)

def word664_1_660 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_658 word664_1_659

def word664_1_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9541507823907846048#64)

def word664_1_662 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_660 word664_1_661

def word664_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_662 word664_1_485

def word664_1_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 184#64)))

def word664_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_664

def word664_1_666 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_663 word664_1_665

def word664_1_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 5234407941292577173#64)

def word664_1_668 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_666 word664_1_667

def word664_1_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 5234407941292577173#64)

def word664_1_670 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_668 word664_1_669

def word664_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_670 word664_1_485

def word664_1_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 192#64)))

def word664_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_672

def word664_1_674 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_671 word664_1_673

def word664_1_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 16529975799043132950#64)

def word664_1_676 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_674 word664_1_675

def word664_1_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 16529975799043132950#64)

def word664_1_678 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_676 word664_1_677

def word664_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_678 word664_1_485

def word664_1_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 200#64)))

def word664_1_681 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_680

def word664_1_682 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_679 word664_1_681

def word664_1_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 12351756573642376427#64)

def word664_1_684 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_682 word664_1_683

def word664_1_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 12351756573642376427#64)

def word664_1_686 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_684 word664_1_685

def word664_1_687 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_686 word664_1_485

def word664_1_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 208#64)))

def word664_1_689 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_688

def word664_1_690 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_687 word664_1_689

def word664_1_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9426269327694809050#64)

def word664_1_692 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_690 word664_1_691

def word664_1_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9426269327694809050#64)

def word664_1_694 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_692 word664_1_693

def word664_1_695 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_694 word664_1_485

def word664_1_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 216#64)))

def word664_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_696

def word664_1_698 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_695 word664_1_697

def word664_1_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 7379223421642392714#64)

def word664_1_700 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_698 word664_1_699

def word664_1_701 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7379223421642392714#64)

def word664_1_702 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_700 word664_1_701

def word664_1_703 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_702 word664_1_485

def word664_1_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 224#64)))

def word664_1_705 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_704

def word664_1_706 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_703 word664_1_705

def word664_1_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 5792417538046516732#64)

def word664_1_708 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_706 word664_1_707

def word664_1_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 5792417538046516732#64)

def word664_1_710 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_708 word664_1_709

def word664_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_710 word664_1_485

def word664_1_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 232#64)))

def word664_1_713 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_712

def word664_1_714 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_711 word664_1_713

def word664_1_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9162926010144764881#64)

def word664_1_716 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_714 word664_1_715

def word664_1_717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9162926010144764881#64)

def word664_1_718 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_716 word664_1_717

def word664_1_719 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_718 word664_1_485

def word664_1_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 240#64)))

def word664_1_721 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_720

def word664_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_719 word664_1_721

def word664_1_723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 8644015420738790472#64)

def word664_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_722 word664_1_723

def word664_1_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 8644015420738790472#64)

def word664_1_726 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_724 word664_1_725

def word664_1_727 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_726 word664_1_485

def word664_1_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 248#64)))

def word664_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_728

def word664_1_730 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_727 word664_1_729

def word664_1_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 18370314904686314414#64)

def word664_1_732 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_730 word664_1_731

def word664_1_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 18370314904686314414#64)

def word664_1_734 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_732 word664_1_733

def word664_1_735 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_734 word664_1_485

def word664_1_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 256#64)))

def word664_1_737 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_736

def word664_1_738 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_735 word664_1_737

def word664_1_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 17975984934167627464#64)

def word664_1_740 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_738 word664_1_739

def word664_1_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 17975984934167627464#64)

def word664_1_742 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_740 word664_1_741

def word664_1_743 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_742 word664_1_485

def word664_1_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 264#64)))

def word664_1_745 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_744

def word664_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_743 word664_1_745

def word664_1_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 8719923968173632426#64)

def word664_1_748 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_746 word664_1_747

def word664_1_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 8719923968173632426#64)

def word664_1_750 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_748 word664_1_749

def word664_1_751 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_750 word664_1_485

def word664_1_752 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 272#64)))

def word664_1_753 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_752

def word664_1_754 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_751 word664_1_753

def word664_1_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 6379321585415610019#64)

def word664_1_756 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_754 word664_1_755

def word664_1_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 6379321585415610019#64)

def word664_1_758 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_756 word664_1_757

def word664_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_758 word664_1_485

def word664_1_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 280#64)))

def word664_1_761 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_760

def word664_1_762 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_759 word664_1_761

def word664_1_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 1402842025008175984#64)

def word664_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_762 word664_1_763

def word664_1_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1402842025008175984#64)

def word664_1_766 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_764 word664_1_765

def word664_1_767 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_766 word664_1_485

def word664_1_768 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 288#64)))

def word664_1_769 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_768

def word664_1_770 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_767 word664_1_769

def word664_1_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 888598832447275954#64)

def word664_1_772 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_770 word664_1_771

def word664_1_773 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 888598832447275954#64)

def word664_1_774 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_772 word664_1_773

def word664_1_775 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_774 word664_1_485

def word664_1_776 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 296#64)))

def word664_1_777 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_776

def word664_1_778 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_775 word664_1_777

def word664_1_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 4522688638863333623#64)

def word664_1_780 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_778 word664_1_779

def word664_1_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 4522688638863333623#64)

def word664_1_782 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_780 word664_1_781

def word664_1_783 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_782 word664_1_485

def word664_1_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 304#64)))

def word664_1_785 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_784

def word664_1_786 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_783 word664_1_785

def word664_1_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 15776483769708984925#64)

def word664_1_788 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_786 word664_1_787

def word664_1_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 15776483769708984925#64)

def word664_1_790 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_788 word664_1_789

def word664_1_791 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_790 word664_1_485

def word664_1_792 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 312#64)))

def word664_1_793 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_792

def word664_1_794 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_791 word664_1_793

def word664_1_795 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 16276864970431725248#64)

def word664_1_796 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_794 word664_1_795

def word664_1_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 16276864970431725248#64)

def word664_1_798 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_796 word664_1_797

def word664_1_799 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_798 word664_1_485

def word664_1_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 320#64)))

def word664_1_801 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_800

def word664_1_802 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_799 word664_1_801

def word664_1_803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 7646110518075161570#64)

def word664_1_804 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_802 word664_1_803

def word664_1_805 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7646110518075161570#64)

def word664_1_806 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_804 word664_1_805

def word664_1_807 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_806 word664_1_485

def word664_1_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 328#64)))

def word664_1_809 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_808

def word664_1_810 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_807 word664_1_809

def word664_1_811 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 9524343276244152831#64)

def word664_1_812 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_810 word664_1_811

def word664_1_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 9524343276244152831#64)

def word664_1_814 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_812 word664_1_813

def word664_1_815 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_814 word664_1_485

def word664_1_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 336#64)))

def word664_1_817 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_816

def word664_1_818 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_815 word664_1_817

def word664_1_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 2377296829910687932#64)

def word664_1_820 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_818 word664_1_819

def word664_1_821 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2377296829910687932#64)

def word664_1_822 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_820 word664_1_821

def word664_1_823 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_822 word664_1_485

def word664_1_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 45 (Flapjack.WordRegImm.imm 344#64)))

def word664_1_825 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_488 word664_1_824

def word664_1_826 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_823 word664_1_825

def word664_1_827 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 203128949104#64)

def word664_1_828 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_826 word664_1_827

def word664_1_829 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 203128949104#64)

def word664_1_830 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_828 word664_1_829

def word664_1_831 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_830 word664_1_485

def word664_1_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word664_1_833 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_831 word664_1_832

def word664_1_834 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def word664_1_835 : WordLangProgHOL (BitVec 64) :=
.seq word664_1_833 word664_1_834

def pass664_1 : WordLangProgHOL (BitVec 64) :=
word664_1_835
theorem pass664_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass664_0) + 1) (pass664_0) = pass664_1 := by
  kernel_rfl
#print axioms pass664_1_eq
end InitECandidate.Proofs.WordStages
