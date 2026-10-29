import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass270_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word270_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 2)]

def word270_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 4)]

def word270_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_0 word270_1_1

def word270_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word270_1_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word270_1_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 12, 38, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word270_1_3, 270, 2)) (some 162) ([52, 8]) (some (52, word270_1_4, 270, 3))

def word270_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_2 word270_1_5

def word270_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word270_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_6 word270_1_7

def word270_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44)]

def word270_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_8 word270_1_9

def word270_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 1#64)

def word270_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_10 word270_1_11

def word270_1_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def word270_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_13 word270_1_7

def word270_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 1#64)

def word270_1_16 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_14 word270_1_15

def word270_1_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 10#64)

def word270_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_16 word270_1_17

def word270_1_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 52)]

def word270_1_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 57)

def word270_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_19 word270_1_20

def word270_1_22 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_18 word270_1_21

def word270_1_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 3#64)

def word270_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_22 word270_1_23

def word270_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_24 word270_1_4

def word270_1_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 34) word270_1_25 word270_1_3

def word270_1_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word270_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_27 word270_1_7

def word270_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def word270_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_28 word270_1_29

def word270_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_26 word270_1_30

def word270_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_12 word270_1_31

def word270_1_33 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_32 word270_1_7

def word270_1_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 12)]

def word270_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_33 word270_1_34

def word270_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 38)]

def word270_1_37 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_35 word270_1_36

def word270_1_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word270_1_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([52, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word270_1_3, 270, 4)) (some 169) ([34, 22]) (some (34, word270_1_38, 270, 5))

def word270_1_40 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_37 word270_1_39

def word270_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_40 word270_1_7

def word270_1_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 52)]

def word270_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_41 word270_1_42

def word270_1_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 8)]

def word270_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_43 word270_1_44

def word270_1_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 0#64)

def word270_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_45 word270_1_46

def word270_1_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 22)]

def word270_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_47 word270_1_48

def word270_1_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 23#64)

def word270_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_49 word270_1_50

def word270_1_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 1#64)

def word270_1_53 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_52 word270_1_7

def word270_1_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 1#64)

def word270_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_53 word270_1_54

def word270_1_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 1#64)

def word270_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_55 word270_1_56

def word270_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word270_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_58 word270_1_7

def word270_1_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 0#64)

def word270_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_59 word270_1_60

def word270_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_61 word270_1_48

def word270_1_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 21#64)

def word270_1_64 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_62 word270_1_63

def word270_1_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 11#64)

def word270_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_55 word270_1_65

def word270_1_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 16)]

def word270_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_20

def word270_1_69 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_66 word270_1_68

def word270_1_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 3#64)

def word270_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_69 word270_1_70

def word270_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word270_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_71 word270_1_72

def word270_1_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 30) word270_1_73 word270_1_3

def word270_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_74 word270_1_61

def word270_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_64 word270_1_75

def word270_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_76 word270_1_7

def word270_1_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word270_1_57 word270_1_77

def word270_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_51 word270_1_78

def word270_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_79 word270_1_7

def word270_1_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 248#64)

def word270_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_80 word270_1_81

def word270_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_82 word270_1_81

def word270_1_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word270_1_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 6)) (some 68) ([42]) (some (42, word270_1_84, 270, 7))

def word270_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_83 word270_1_85

def word270_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_86 word270_1_7

def word270_1_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 16)]

def word270_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_87 word270_1_88

def word270_1_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 48)]

def word270_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_89 word270_1_90

def word270_1_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 30)]

def word270_1_93 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_91 word270_1_92

def word270_1_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 42)]

def word270_1_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 56 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_94 word270_1_95

def word270_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_93 word270_1_96

def word270_1_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 34)]

def word270_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_97 word270_1_98

def word270_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_99 word270_1_60

def word270_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def word270_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_100 word270_1_101

def word270_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_102 word270_1_101

def word270_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_103 word270_1_60

def word270_1_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word270_1_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 8)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 9))

def word270_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_104 word270_1_106

def word270_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_107 word270_1_7

def word270_1_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 8#64)))

def word270_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_109

def word270_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_108 word270_1_110

def word270_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 42)]

def word270_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_111 word270_1_112

def word270_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 56)]

def word270_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_113 word270_1_114

def word270_1_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 30)]

def word270_1_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_116 word270_1_117

def word270_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_115 word270_1_118

def word270_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_119 word270_1_98

def word270_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_120 word270_1_54

def word270_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_121 word270_1_101

def word270_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_122 word270_1_101

def word270_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_123 word270_1_54

def word270_1_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 10)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 11))

def word270_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_124 word270_1_125

def word270_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_126 word270_1_7

def word270_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 16#64)))

def word270_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_128

def word270_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_127 word270_1_129

def word270_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_130 word270_1_112

def word270_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_131 word270_1_114

def word270_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_132 word270_1_118

def word270_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_133 word270_1_98

def word270_1_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 2#64)

def word270_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_134 word270_1_135

def word270_1_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def word270_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_136 word270_1_137

def word270_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_138 word270_1_137

def word270_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_139 word270_1_135

def word270_1_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 12)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 13))

def word270_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_140 word270_1_141

def word270_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_142 word270_1_7

def word270_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 24#64)))

def word270_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_144

def word270_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_143 word270_1_145

def word270_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_146 word270_1_112

def word270_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_147 word270_1_114

def word270_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_148 word270_1_118

def word270_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_149 word270_1_98

def word270_1_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 3#64)

def word270_1_152 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_150 word270_1_151

def word270_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_152 word270_1_101

def word270_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_153 word270_1_101

def word270_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_154 word270_1_151

def word270_1_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 14)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 15))

def word270_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_155 word270_1_156

def word270_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_157 word270_1_7

def word270_1_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 32#64)))

def word270_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_159

def word270_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_158 word270_1_160

def word270_1_162 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_161 word270_1_112

def word270_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_162 word270_1_114

def word270_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_163 word270_1_118

def word270_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_164 word270_1_98

def word270_1_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 4#64)

def word270_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_165 word270_1_166

def word270_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_167 word270_1_101

def word270_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_168 word270_1_101

def word270_1_170 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_169 word270_1_166

def word270_1_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 16)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 17))

def word270_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_170 word270_1_171

def word270_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_172 word270_1_7

def word270_1_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 40#64)))

def word270_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_174

def word270_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_173 word270_1_175

def word270_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_176 word270_1_112

def word270_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_177 word270_1_114

def word270_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_178 word270_1_118

def word270_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_179 word270_1_98

def word270_1_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 5#64)

def word270_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_180 word270_1_181

def word270_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_182 word270_1_101

def word270_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_183 word270_1_101

def word270_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_184 word270_1_181

def word270_1_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 18)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 19))

def word270_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_185 word270_1_186

def word270_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_187 word270_1_7

def word270_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 48#64)))

def word270_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_189

def word270_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_188 word270_1_190

def word270_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_191 word270_1_112

def word270_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_192 word270_1_114

def word270_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_193 word270_1_118

def word270_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_194 word270_1_98

def word270_1_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 6#64)

def word270_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_195 word270_1_196

def word270_1_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 256#64)

def word270_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_197 word270_1_198

def word270_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_199 word270_1_198

def word270_1_201 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_200 word270_1_196

def word270_1_202 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 20)) (some 268) ([30, 56, 6]) (some (30, word270_1_105, 270, 21))

def word270_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_201 word270_1_202

def word270_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_203 word270_1_7

def word270_1_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 57 (Flapjack.WordRegImm.imm 56#64)))

def word270_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_205

def word270_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_204 word270_1_206

def word270_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_207 word270_1_112

def word270_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_208 word270_1_114

def word270_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_209 word270_1_118

def word270_1_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 34)]

def word270_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_210 word270_1_211

def word270_1_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 7#64)

def word270_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_212 word270_1_213

def word270_1_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def word270_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_214 word270_1_215

def word270_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_216 word270_1_215

def word270_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_217 word270_1_213

def word270_1_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word270_1_220 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 56, 6, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 22)) (some 267) ([20, 46, 14]) (some (20, word270_1_219, 270, 23))

def word270_1_221 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_218 word270_1_220

def word270_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_221 word270_1_7

def word270_1_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 57 (Flapjack.WordRegImm.imm 64#64)))

def word270_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_223

def word270_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_222 word270_1_224

def word270_1_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 30)]

def word270_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_225 word270_1_226

def word270_1_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 56)]

def word270_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_227 word270_1_228

def word270_1_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 6)]

def word270_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_229 word270_1_230

def word270_1_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 32)]

def word270_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_231 word270_1_232

def word270_1_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 46)]

def word270_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_233 word270_1_234

def word270_1_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 20)]

def word270_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_236 word270_1_237

def word270_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_235 word270_1_238

def word270_1_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 14)]

def word270_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_239 word270_1_240

def word270_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 57 8#64))

def word270_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_236 word270_1_242

def word270_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_241 word270_1_243

def word270_1_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 40)]

def word270_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_244 word270_1_245

def word270_1_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 57 16#64))

def word270_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_236 word270_1_247

def word270_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_246 word270_1_248

def word270_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 28)]

def word270_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_249 word270_1_250

def word270_1_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 54 (Flapjack.WordLangAddr.addr 57 24#64))

def word270_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_236 word270_1_252

def word270_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_251 word270_1_253

def word270_1_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 34)]

def word270_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_254 word270_1_255

def word270_1_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 8#64)

def word270_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_256 word270_1_257

def word270_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_258 word270_1_257

def word270_1_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word270_1_261 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 24)) (some 266) ([46, 14]) (some (46, word270_1_260, 270, 25))

def word270_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_259 word270_1_261

def word270_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_262 word270_1_7

def word270_1_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 46 57 (Flapjack.WordRegImm.imm 96#64)))

def word270_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_264

def word270_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_263 word270_1_265

def word270_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 20)]

def word270_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_266 word270_1_267

def word270_1_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 14)]

def word270_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_268 word270_1_269

def word270_1_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 46)]

def word270_1_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_271 word270_1_272

def word270_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_270 word270_1_273

def word270_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_274 word270_1_255

def word270_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 9#64)

def word270_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_275 word270_1_276

def word270_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_277 word270_1_276

def word270_1_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 26)) (some 266) ([46, 14]) (some (46, word270_1_260, 270, 27))

def word270_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_278 word270_1_279

def word270_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_280 word270_1_7

def word270_1_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 46 57 (Flapjack.WordRegImm.imm 104#64)))

def word270_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_282

def word270_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_281 word270_1_283

def word270_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_284 word270_1_267

def word270_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_285 word270_1_269

def word270_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_286 word270_1_273

def word270_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_287 word270_1_255

def word270_1_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 10#64)

def word270_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_288 word270_1_289

def word270_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_290 word270_1_289

def word270_1_292 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 28)) (some 266) ([46, 14]) (some (46, word270_1_260, 270, 29))

def word270_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_291 word270_1_292

def word270_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_293 word270_1_7

def word270_1_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 46 57 (Flapjack.WordRegImm.imm 112#64)))

def word270_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_295

def word270_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_294 word270_1_296

def word270_1_298 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_297 word270_1_267

def word270_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_298 word270_1_269

def word270_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_299 word270_1_273

def word270_1_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 34)]

def word270_1_302 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_300 word270_1_301

def word270_1_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 11#64)

def word270_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_302 word270_1_303

def word270_1_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 32#64)

def word270_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_304 word270_1_305

def word270_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_306 word270_1_305

def word270_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_307 word270_1_303

def word270_1_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word270_1_310 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 30)) (some 265) ([40, 28, 54]) (some (40, word270_1_309, 270, 31))

def word270_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_308 word270_1_310

def word270_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_311 word270_1_7

def word270_1_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 8#64)

def word270_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_312 word270_1_313

def word270_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_314 word270_1_240

def word270_1_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1#64)

def word270_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_316 word270_1_7

def word270_1_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def word270_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_317 word270_1_318

def word270_1_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 12#64)

def word270_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_319 word270_1_320

def word270_1_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 40)]

def word270_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_322 word270_1_20

def word270_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_321 word270_1_323

def word270_1_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 3#64)

def word270_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_324 word270_1_325

def word270_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_326 word270_1_309

def word270_1_328 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 54) word270_1_327 word270_1_3

def word270_1_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def word270_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_329 word270_1_7

def word270_1_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def word270_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_330 word270_1_331

def word270_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_328 word270_1_332

def word270_1_334 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_315 word270_1_333

def word270_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_334 word270_1_7

def word270_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_335 word270_1_301

def word270_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_336 word270_1_303

def word270_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_337 word270_1_303

def word270_1_339 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 32)) (some 266) ([40, 28]) (some (40, word270_1_309, 270, 33))

def word270_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_338 word270_1_339

def word270_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_340 word270_1_7

def word270_1_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 57 (Flapjack.WordRegImm.imm 120#64)))

def word270_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_342

def word270_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_341 word270_1_343

def word270_1_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 20)]

def word270_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_344 word270_1_345

def word270_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_346 word270_1_250

def word270_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_322 word270_1_237

def word270_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_347 word270_1_348

def word270_1_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 34)]

def word270_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_349 word270_1_350

def word270_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 12#64)

def word270_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_351 word270_1_352

def word270_1_354 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_353 word270_1_352

def word270_1_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word270_1_356 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 34)) (some 269) ([54, 10]) (some (54, word270_1_355, 270, 35))

def word270_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_354 word270_1_356

def word270_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_357 word270_1_7

def word270_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 57 (Flapjack.WordRegImm.imm 128#64)))

def word270_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_359

def word270_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_358 word270_1_360

def word270_1_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 40)]

def word270_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_361 word270_1_362

def word270_1_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 10)]

def word270_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_363 word270_1_364

def word270_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 54)]

def word270_1_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 36 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_366 word270_1_367

def word270_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_365 word270_1_368

def word270_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 57 (Flapjack.WordRegImm.imm 136#64)))

def word270_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_370

def word270_1_372 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_369 word270_1_371

def word270_1_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 28)]

def word270_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_372 word270_1_373

def word270_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_374 word270_1_364

def word270_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_375 word270_1_368

def word270_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_376 word270_1_350

def word270_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 13#64)

def word270_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_377 word270_1_378

def word270_1_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 32#64)

def word270_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_379 word270_1_380

def word270_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_381 word270_1_380

def word270_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_382 word270_1_378

def word270_1_384 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 36)) (some 268) ([54, 10, 36]) (some (54, word270_1_355, 270, 37))

def word270_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_383 word270_1_384

def word270_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_385 word270_1_7

def word270_1_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 57 (Flapjack.WordRegImm.imm 144#64)))

def word270_1_388 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_387

def word270_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_386 word270_1_388

def word270_1_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 42)]

def word270_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_389 word270_1_390

def word270_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_391 word270_1_364

def word270_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_392 word270_1_368

def word270_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_393 word270_1_350

def word270_1_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 14#64)

def word270_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_394 word270_1_395

def word270_1_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 8#64)

def word270_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_396 word270_1_397

def word270_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_398 word270_1_397

def word270_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_399 word270_1_395

def word270_1_401 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 38)) (some 268) ([54, 10, 36]) (some (54, word270_1_355, 270, 39))

def word270_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_400 word270_1_401

def word270_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_402 word270_1_7

def word270_1_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 57 (Flapjack.WordRegImm.imm 152#64)))

def word270_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_404

def word270_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_403 word270_1_405

def word270_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_406 word270_1_390

def word270_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_407 word270_1_364

def word270_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_408 word270_1_368

def word270_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_409 word270_1_350

def word270_1_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 15#64)

def word270_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_410 word270_1_411

def word270_1_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 0#64)

def word270_1_414 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_412 word270_1_413

def word270_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_414 word270_1_413

def word270_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_415 word270_1_411

def word270_1_417 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 56, 6, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 40)) (some 267) ([54, 10, 36]) (some (54, word270_1_355, 270, 41))

def word270_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_416 word270_1_417

def word270_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_418 word270_1_7

def word270_1_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 57 (Flapjack.WordRegImm.imm 160#64)))

def word270_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_420

def word270_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_419 word270_1_421

def word270_1_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 30)]

def word270_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_422 word270_1_423

def word270_1_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 56)]

def word270_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_424 word270_1_425

def word270_1_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 6)]

def word270_1_428 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_426 word270_1_427

def word270_1_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 32)]

def word270_1_430 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_428 word270_1_429

def word270_1_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 10)]

def word270_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_430 word270_1_431

def word270_1_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_434 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_366 word270_1_433

def word270_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_432 word270_1_434

def word270_1_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 36)]

def word270_1_437 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_435 word270_1_436

def word270_1_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 57 8#64))

def word270_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_366 word270_1_438

def word270_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_437 word270_1_439

def word270_1_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 24)]

def word270_1_442 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_440 word270_1_441

def word270_1_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 57 16#64))

def word270_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_366 word270_1_443

def word270_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_442 word270_1_444

def word270_1_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 50)]

def word270_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_445 word270_1_446

def word270_1_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 57 24#64))

def word270_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_366 word270_1_448

def word270_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_447 word270_1_449

def word270_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_450 word270_1_350

def word270_1_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 16#64)

def word270_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_451 word270_1_452

def word270_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_453 word270_1_380

def word270_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_454 word270_1_380

def word270_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_455 word270_1_452

def word270_1_457 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 42)) (some 268) ([54, 10, 36]) (some (54, word270_1_355, 270, 43))

def word270_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_456 word270_1_457

def word270_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_458 word270_1_7

def word270_1_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 57 (Flapjack.WordRegImm.imm 192#64)))

def word270_1_461 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_460

def word270_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_459 word270_1_461

def word270_1_463 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_462 word270_1_390

def word270_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_463 word270_1_364

def word270_1_465 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_464 word270_1_368

def word270_1_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 34)]

def word270_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_465 word270_1_466

def word270_1_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 17#64)

def word270_1_469 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_467 word270_1_468

def word270_1_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 8#64)

def word270_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_469 word270_1_470

def word270_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_471 word270_1_470

def word270_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_472 word270_1_468

def word270_1_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word270_1_475 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 44)) (some 265) ([36, 24, 50]) (some (36, word270_1_474, 270, 45))

def word270_1_476 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_473 word270_1_475

def word270_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_476 word270_1_7

def word270_1_478 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_477 word270_1_466

def word270_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_478 word270_1_468

def word270_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_479 word270_1_468

def word270_1_481 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 46)) (some 266) ([36, 24]) (some (36, word270_1_474, 270, 47))

def word270_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_480 word270_1_481

def word270_1_483 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_482 word270_1_7

def word270_1_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 57 (Flapjack.WordRegImm.imm 200#64)))

def word270_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_484

def word270_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_483 word270_1_485

def word270_1_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 20)]

def word270_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_486 word270_1_487

def word270_1_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 24)]

def word270_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_488 word270_1_489

def word270_1_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(57, 36)]

def word270_1_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 50 (Flapjack.WordLangAddr.addr 57 0#64))

def word270_1_493 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_491 word270_1_492

def word270_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_490 word270_1_493

def word270_1_495 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_494 word270_1_466

def word270_1_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 18#64)

def word270_1_497 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_495 word270_1_496

def word270_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_497 word270_1_470

def word270_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_498 word270_1_470

def word270_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_499 word270_1_496

def word270_1_501 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 48)) (some 265) ([36, 24, 50]) (some (36, word270_1_474, 270, 49))

def word270_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_500 word270_1_501

def word270_1_503 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_502 word270_1_7

def word270_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_503 word270_1_466

def word270_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_504 word270_1_496

def word270_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_505 word270_1_496

def word270_1_507 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 50)) (some 266) ([36, 24]) (some (36, word270_1_474, 270, 51))

def word270_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_506 word270_1_507

def word270_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_508 word270_1_7

def word270_1_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 57 (Flapjack.WordRegImm.imm 208#64)))

def word270_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_510

def word270_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_509 word270_1_511

def word270_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_512 word270_1_487

def word270_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_513 word270_1_489

def word270_1_515 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_514 word270_1_493

def word270_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_515 word270_1_466

def word270_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 19#64)

def word270_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_516 word270_1_517

def word270_1_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 32#64)

def word270_1_520 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_518 word270_1_519

def word270_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_520 word270_1_519

def word270_1_522 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_521 word270_1_517

def word270_1_523 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 52)) (some 268) ([36, 24, 50]) (some (36, word270_1_474, 270, 53))

def word270_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_522 word270_1_523

def word270_1_525 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_524 word270_1_7

def word270_1_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 57 (Flapjack.WordRegImm.imm 216#64)))

def word270_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_526

def word270_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_525 word270_1_527

def word270_1_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 42)]

def word270_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_528 word270_1_529

def word270_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_530 word270_1_489

def word270_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_531 word270_1_493

def word270_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_532 word270_1_466

def word270_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 20#64)

def word270_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_533 word270_1_534

def word270_1_536 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_535 word270_1_519

def word270_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_536 word270_1_519

def word270_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_537 word270_1_534

def word270_1_539 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 54)) (some 268) ([36, 24, 50]) (some (36, word270_1_474, 270, 55))

def word270_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_538 word270_1_539

def word270_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_540 word270_1_7

def word270_1_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 57 (Flapjack.WordRegImm.imm 224#64)))

def word270_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_542

def word270_1_544 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_541 word270_1_543

def word270_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_544 word270_1_529

def word270_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_545 word270_1_489

def word270_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_546 word270_1_493

def word270_1_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 48)]

def word270_1_549 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_547 word270_1_548

def word270_1_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word270_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_549 word270_1_550

def word270_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 1#64)

def word270_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_552 word270_1_7

def word270_1_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def word270_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_553 word270_1_554

def word270_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_555 word270_1_466

def word270_1_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 21#64)

def word270_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_556 word270_1_557

def word270_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_558 word270_1_519

def word270_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_559 word270_1_519

def word270_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_560 word270_1_557

def word270_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_561 word270_1_519

def word270_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_562 word270_1_557

def word270_1_564 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 56)) (some 268) ([36, 24, 50]) (some (36, word270_1_474, 270, 57))

def word270_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_563 word270_1_564

def word270_1_566 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_565 word270_1_7

def word270_1_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 57 (Flapjack.WordRegImm.imm 232#64)))

def word270_1_568 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_567

def word270_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_566 word270_1_568

def word270_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_569 word270_1_529

def word270_1_571 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_570 word270_1_489

def word270_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_571 word270_1_493

def word270_1_573 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_572 word270_1_466

def word270_1_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 22#64)

def word270_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_573 word270_1_574

def word270_1_576 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_575 word270_1_470

def word270_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_576 word270_1_470

def word270_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_577 word270_1_574

def word270_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_578 word270_1_470

def word270_1_580 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_579 word270_1_574

def word270_1_581 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 58)) (some 265) ([36, 24, 50]) (some (36, word270_1_474, 270, 59))

def word270_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_580 word270_1_581

def word270_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_582 word270_1_7

def word270_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_583 word270_1_466

def word270_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_584 word270_1_574

def word270_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_585 word270_1_574

def word270_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_586 word270_1_574

def word270_1_588 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_1_3, 270, 60)) (some 266) ([36, 24]) (some (36, word270_1_474, 270, 61))

def word270_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_587 word270_1_588

def word270_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_589 word270_1_7

def word270_1_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 57 (Flapjack.WordRegImm.imm 240#64)))

def word270_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_67 word270_1_591

def word270_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_590 word270_1_592

def word270_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_593 word270_1_487

def word270_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_594 word270_1_489

def word270_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_595 word270_1_493

def word270_1_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 24 0#64)

def word270_1_598 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_597 word270_1_7

def word270_1_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word270_1_600 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_598 word270_1_599

def word270_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_600 word270_1_568

def word270_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_601 word270_1_597

def word270_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_602 word270_1_550

def word270_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_603 word270_1_493

def word270_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_604 word270_1_592

def word270_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_605 word270_1_597

def word270_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_606 word270_1_550

def word270_1_608 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_607 word270_1_493

def word270_1_609 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 50) word270_1_596 word270_1_608

def word270_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_551 word270_1_609

def word270_1_611 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_610 word270_1_7

def word270_1_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 16)]

def word270_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_611 word270_1_612

def word270_1_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def word270_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word270_1_613 word270_1_614

def pass270_1 : WordLangProgHOL (BitVec 64) :=
word270_1_615
theorem pass270_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass270_0) + 1) (pass270_0) = pass270_1 := by
  kernel_rfl
#print axioms pass270_1_eq
end InitECandidate.Proofs.WordStages
