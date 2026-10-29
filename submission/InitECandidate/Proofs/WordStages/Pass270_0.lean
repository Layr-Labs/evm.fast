import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source270
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word270_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 2)

def word270_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def word270_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_0 word270_0_1

def word270_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word270_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word270_0_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 12, 38, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word270_0_3, 270, 2)) (some 162) ([52, 8]) (some (52, word270_0_4, 270, 3))

def word270_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_2 word270_0_5

def word270_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word270_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_6 word270_0_7

def word270_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 44)

def word270_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_8 word270_0_9

def word270_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_10 word270_0_11

def word270_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_13 word270_0_7

def word270_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_14 word270_0_15

def word270_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 10#64)

def word270_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_16 word270_0_17

def word270_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 52)

def word270_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_18 word270_0_19

def word270_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 3#64)

def word270_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_20 word270_0_21

def word270_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_22 word270_0_4

def word270_0_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 34) word270_0_23 word270_0_3

def word270_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_25 word270_0_7

def word270_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_26 word270_0_27

def word270_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_24 word270_0_28

def word270_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_12 word270_0_29

def word270_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_30 word270_0_7

def word270_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def word270_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_31 word270_0_32

def word270_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def word270_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_33 word270_0_34

def word270_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word270_0_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([52, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word270_0_3, 270, 4)) (some 169) ([34, 22]) (some (34, word270_0_36, 270, 5))

def word270_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_35 word270_0_37

def word270_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_38 word270_0_7

def word270_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 52)

def word270_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_39 word270_0_40

def word270_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def word270_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_41 word270_0_42

def word270_0_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_43 word270_0_44

def word270_0_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)

def word270_0_47 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_45 word270_0_46

def word270_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 23#64)

def word270_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_47 word270_0_48

def word270_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_50 word270_0_7

def word270_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_51 word270_0_52

def word270_0_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_53 word270_0_54

def word270_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_56 word270_0_7

def word270_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_57 word270_0_58

def word270_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_59 word270_0_46

def word270_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 21#64)

def word270_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_60 word270_0_61

def word270_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 11#64)

def word270_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_53 word270_0_63

def word270_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def word270_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_64 word270_0_65

def word270_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 3#64)

def word270_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_66 word270_0_67

def word270_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word270_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_68 word270_0_69

def word270_0_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 30) word270_0_70 word270_0_3

def word270_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_71 word270_0_59

def word270_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_62 word270_0_72

def word270_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_73 word270_0_7

def word270_0_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 30) word270_0_55 word270_0_74

def word270_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_49 word270_0_75

def word270_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_76 word270_0_7

def word270_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 248#64)

def word270_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_77 word270_0_78

def word270_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_79 word270_0_78

def word270_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word270_0_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 6)) (some 68) ([42]) (some (42, word270_0_81, 270, 7))

def word270_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_80 word270_0_82

def word270_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_83 word270_0_7

def word270_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 0#64])

def word270_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_84 word270_0_85

def word270_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def word270_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_86 word270_0_87

def word270_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 30)

def word270_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_88 word270_0_89

def word270_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 42) 56

def word270_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_90 word270_0_91

def word270_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def word270_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_92 word270_0_93

def word270_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_94 word270_0_58

def word270_0_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def word270_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_95 word270_0_96

def word270_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_97 word270_0_96

def word270_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_98 word270_0_58

def word270_0_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word270_0_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 8)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 9))

def word270_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_99 word270_0_101

def word270_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_102 word270_0_7

def word270_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 8#64])

def word270_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_103 word270_0_104

def word270_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 42)

def word270_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_105 word270_0_106

def word270_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 56)

def word270_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_107 word270_0_108

def word270_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 6

def word270_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_109 word270_0_110

def word270_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_111 word270_0_93

def word270_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_112 word270_0_52

def word270_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_113 word270_0_96

def word270_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_114 word270_0_96

def word270_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_115 word270_0_52

def word270_0_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 10)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 11))

def word270_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_116 word270_0_117

def word270_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_118 word270_0_7

def word270_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 16#64])

def word270_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_119 word270_0_120

def word270_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_121 word270_0_106

def word270_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_122 word270_0_108

def word270_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_123 word270_0_110

def word270_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_124 word270_0_93

def word270_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 2#64)

def word270_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_125 word270_0_126

def word270_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 20#64)

def word270_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_127 word270_0_128

def word270_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_129 word270_0_128

def word270_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_130 word270_0_126

def word270_0_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 12)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 13))

def word270_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_131 word270_0_132

def word270_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_133 word270_0_7

def word270_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 24#64])

def word270_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_134 word270_0_135

def word270_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_136 word270_0_106

def word270_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_137 word270_0_108

def word270_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_138 word270_0_110

def word270_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_139 word270_0_93

def word270_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 3#64)

def word270_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_140 word270_0_141

def word270_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_142 word270_0_96

def word270_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_143 word270_0_96

def word270_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_144 word270_0_141

def word270_0_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 14)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 15))

def word270_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_145 word270_0_146

def word270_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_147 word270_0_7

def word270_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 32#64])

def word270_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_148 word270_0_149

def word270_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_150 word270_0_106

def word270_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_151 word270_0_108

def word270_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_152 word270_0_110

def word270_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_153 word270_0_93

def word270_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 4#64)

def word270_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_154 word270_0_155

def word270_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_156 word270_0_96

def word270_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_157 word270_0_96

def word270_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_158 word270_0_155

def word270_0_160 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 16)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 17))

def word270_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_159 word270_0_160

def word270_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_161 word270_0_7

def word270_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 40#64])

def word270_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_162 word270_0_163

def word270_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_164 word270_0_106

def word270_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_165 word270_0_108

def word270_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_166 word270_0_110

def word270_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_167 word270_0_93

def word270_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 5#64)

def word270_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_168 word270_0_169

def word270_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_170 word270_0_96

def word270_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_171 word270_0_96

def word270_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_172 word270_0_169

def word270_0_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 18)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 19))

def word270_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_173 word270_0_174

def word270_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_175 word270_0_7

def word270_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 48#64])

def word270_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_176 word270_0_177

def word270_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_178 word270_0_106

def word270_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_179 word270_0_108

def word270_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_180 word270_0_110

def word270_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_181 word270_0_93

def word270_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 6#64)

def word270_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_182 word270_0_183

def word270_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 256#64)

def word270_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_184 word270_0_185

def word270_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_186 word270_0_185

def word270_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_187 word270_0_183

def word270_0_189 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 20)) (some 268) ([30, 56, 6]) (some (30, word270_0_100, 270, 21))

def word270_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_188 word270_0_189

def word270_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_190 word270_0_7

def word270_0_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 56#64])

def word270_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_191 word270_0_192

def word270_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_193 word270_0_106

def word270_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_194 word270_0_108

def word270_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_195 word270_0_110

def word270_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def word270_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_196 word270_0_197

def word270_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 7#64)

def word270_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_198 word270_0_199

def word270_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_200 word270_0_201

def word270_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_202 word270_0_201

def word270_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_203 word270_0_199

def word270_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word270_0_206 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 56, 6, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 22)) (some 267) ([20, 46, 14]) (some (20, word270_0_205, 270, 23))

def word270_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_204 word270_0_206

def word270_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_207 word270_0_7

def word270_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 64#64])

def word270_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_208 word270_0_209

def word270_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def word270_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_210 word270_0_211

def word270_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 56)

def word270_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_212 word270_0_213

def word270_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def word270_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_214 word270_0_215

def word270_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def word270_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_216 word270_0_217

def word270_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 46)

def word270_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_218 word270_0_219

def word270_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 54

def word270_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_220 word270_0_221

def word270_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 14)

def word270_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_222 word270_0_223

def word270_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64])
  54

def word270_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_224 word270_0_225

def word270_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def word270_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_226 word270_0_227

def word270_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 16#64])
  54

def word270_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_228 word270_0_229

def word270_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 28)

def word270_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_230 word270_0_231

def word270_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 24#64])
  54

def word270_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_232 word270_0_233

def word270_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 34)

def word270_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_234 word270_0_235

def word270_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def word270_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_236 word270_0_237

def word270_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_238 word270_0_237

def word270_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word270_0_241 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 24)) (some 266) ([46, 14]) (some (46, word270_0_240, 270, 25))

def word270_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_239 word270_0_241

def word270_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_242 word270_0_7

def word270_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 96#64])

def word270_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_243 word270_0_244

def word270_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def word270_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_245 word270_0_246

def word270_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def word270_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_247 word270_0_248

def word270_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 46) 40

def word270_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_249 word270_0_250

def word270_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_251 word270_0_235

def word270_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 9#64)

def word270_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_252 word270_0_253

def word270_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_254 word270_0_253

def word270_0_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 26)) (some 266) ([46, 14]) (some (46, word270_0_240, 270, 27))

def word270_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_255 word270_0_256

def word270_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_257 word270_0_7

def word270_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 104#64])

def word270_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_258 word270_0_259

def word270_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_260 word270_0_246

def word270_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_261 word270_0_248

def word270_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_262 word270_0_250

def word270_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_263 word270_0_235

def word270_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 10#64)

def word270_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_264 word270_0_265

def word270_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_266 word270_0_265

def word270_0_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 28)) (some 266) ([46, 14]) (some (46, word270_0_240, 270, 29))

def word270_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_267 word270_0_268

def word270_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_269 word270_0_7

def word270_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 112#64])

def word270_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_270 word270_0_271

def word270_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_272 word270_0_246

def word270_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_273 word270_0_248

def word270_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_274 word270_0_250

def word270_0_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def word270_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_275 word270_0_276

def word270_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 11#64)

def word270_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_277 word270_0_278

def word270_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 32#64)

def word270_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_279 word270_0_280

def word270_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_281 word270_0_280

def word270_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_282 word270_0_278

def word270_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word270_0_285 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 30)) (some 265) ([40, 28, 54]) (some (40, word270_0_284, 270, 31))

def word270_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_283 word270_0_285

def word270_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_286 word270_0_7

def word270_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 8#64)

def word270_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_287 word270_0_288

def word270_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_289 word270_0_223

def word270_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_291 word270_0_7

def word270_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_292 word270_0_293

def word270_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 12#64)

def word270_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_294 word270_0_295

def word270_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 40)

def word270_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_296 word270_0_297

def word270_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3#64)

def word270_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_298 word270_0_299

def word270_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_300 word270_0_284

def word270_0_302 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 54) word270_0_301 word270_0_3

def word270_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_303 word270_0_7

def word270_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_304 word270_0_305

def word270_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_302 word270_0_306

def word270_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_290 word270_0_307

def word270_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_308 word270_0_7

def word270_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_309 word270_0_276

def word270_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_310 word270_0_278

def word270_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_311 word270_0_278

def word270_0_313 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 32)) (some 266) ([40, 28]) (some (40, word270_0_284, 270, 33))

def word270_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_312 word270_0_313

def word270_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_314 word270_0_7

def word270_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 120#64])

def word270_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_315 word270_0_316

def word270_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def word270_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_317 word270_0_318

def word270_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_319 word270_0_231

def word270_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 54

def word270_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_320 word270_0_321

def word270_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 34)

def word270_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_322 word270_0_323

def word270_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12#64)

def word270_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_324 word270_0_325

def word270_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_326 word270_0_325

def word270_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word270_0_329 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 34)) (some 269) ([54, 10]) (some (54, word270_0_328, 270, 35))

def word270_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_327 word270_0_329

def word270_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_330 word270_0_7

def word270_0_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 128#64])

def word270_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_331 word270_0_332

def word270_0_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def word270_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_333 word270_0_334

def word270_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def word270_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_335 word270_0_336

def word270_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 54) 36

def word270_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_337 word270_0_338

def word270_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 136#64])

def word270_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_339 word270_0_340

def word270_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def word270_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_341 word270_0_342

def word270_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_343 word270_0_336

def word270_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_344 word270_0_338

def word270_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_345 word270_0_323

def word270_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13#64)

def word270_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_346 word270_0_347

def word270_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 32#64)

def word270_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_348 word270_0_349

def word270_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_350 word270_0_349

def word270_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_351 word270_0_347

def word270_0_353 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 36)) (some 268) ([54, 10, 36]) (some (54, word270_0_328, 270, 37))

def word270_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_352 word270_0_353

def word270_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_354 word270_0_7

def word270_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 144#64])

def word270_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_355 word270_0_356

def word270_0_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def word270_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_357 word270_0_358

def word270_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_359 word270_0_336

def word270_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_360 word270_0_338

def word270_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_361 word270_0_323

def word270_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14#64)

def word270_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_362 word270_0_363

def word270_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 8#64)

def word270_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_364 word270_0_365

def word270_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_366 word270_0_365

def word270_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_367 word270_0_363

def word270_0_369 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 38)) (some 268) ([54, 10, 36]) (some (54, word270_0_328, 270, 39))

def word270_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_368 word270_0_369

def word270_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_370 word270_0_7

def word270_0_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 152#64])

def word270_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_371 word270_0_372

def word270_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_373 word270_0_358

def word270_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_374 word270_0_336

def word270_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_375 word270_0_338

def word270_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_376 word270_0_323

def word270_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15#64)

def word270_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_377 word270_0_378

def word270_0_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_379 word270_0_380

def word270_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_381 word270_0_380

def word270_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_382 word270_0_378

def word270_0_384 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 56, 6, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 40)) (some 267) ([54, 10, 36]) (some (54, word270_0_328, 270, 41))

def word270_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_383 word270_0_384

def word270_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_385 word270_0_7

def word270_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 160#64])

def word270_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_386 word270_0_387

def word270_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 30)

def word270_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_388 word270_0_389

def word270_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 56)

def word270_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_390 word270_0_391

def word270_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def word270_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_392 word270_0_393

def word270_0_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def word270_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_394 word270_0_395

def word270_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def word270_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_396 word270_0_397

def word270_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 54) 18

def word270_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_398 word270_0_399

def word270_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def word270_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_400 word270_0_401

def word270_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 8#64])
  18

def word270_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_402 word270_0_403

def word270_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def word270_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_404 word270_0_405

def word270_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 16#64])
  18

def word270_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_406 word270_0_407

def word270_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 50)

def word270_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_408 word270_0_409

def word270_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 24#64])
  18

def word270_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_410 word270_0_411

def word270_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_412 word270_0_323

def word270_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16#64)

def word270_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_413 word270_0_414

def word270_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_415 word270_0_349

def word270_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_416 word270_0_349

def word270_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_417 word270_0_414

def word270_0_419 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 42)) (some 268) ([54, 10, 36]) (some (54, word270_0_328, 270, 43))

def word270_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_418 word270_0_419

def word270_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_420 word270_0_7

def word270_0_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 192#64])

def word270_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_421 word270_0_422

def word270_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_423 word270_0_358

def word270_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_424 word270_0_336

def word270_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_425 word270_0_338

def word270_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def word270_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_426 word270_0_427

def word270_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 17#64)

def word270_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_428 word270_0_429

def word270_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 8#64)

def word270_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_430 word270_0_431

def word270_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_432 word270_0_431

def word270_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_433 word270_0_429

def word270_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word270_0_436 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 44)) (some 265) ([36, 24, 50]) (some (36, word270_0_435, 270, 45))

def word270_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_434 word270_0_436

def word270_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_437 word270_0_7

def word270_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_438 word270_0_427

def word270_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_439 word270_0_429

def word270_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_440 word270_0_429

def word270_0_442 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 46)) (some 266) ([36, 24]) (some (36, word270_0_435, 270, 47))

def word270_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_441 word270_0_442

def word270_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_443 word270_0_7

def word270_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 200#64])

def word270_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_444 word270_0_445

def word270_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def word270_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_446 word270_0_447

def word270_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 24)

def word270_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_448 word270_0_449

def word270_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 36) 50

def word270_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_450 word270_0_451

def word270_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_452 word270_0_427

def word270_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 18#64)

def word270_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_453 word270_0_454

def word270_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_455 word270_0_431

def word270_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_456 word270_0_431

def word270_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_457 word270_0_454

def word270_0_459 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 48)) (some 265) ([36, 24, 50]) (some (36, word270_0_435, 270, 49))

def word270_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_458 word270_0_459

def word270_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_460 word270_0_7

def word270_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_461 word270_0_427

def word270_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_462 word270_0_454

def word270_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_463 word270_0_454

def word270_0_465 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 50)) (some 266) ([36, 24]) (some (36, word270_0_435, 270, 51))

def word270_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_464 word270_0_465

def word270_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_466 word270_0_7

def word270_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 208#64])

def word270_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_467 word270_0_468

def word270_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_469 word270_0_447

def word270_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_470 word270_0_449

def word270_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_471 word270_0_451

def word270_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_472 word270_0_427

def word270_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 19#64)

def word270_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_473 word270_0_474

def word270_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 32#64)

def word270_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_475 word270_0_476

def word270_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_477 word270_0_476

def word270_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_478 word270_0_474

def word270_0_480 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 52)) (some 268) ([36, 24, 50]) (some (36, word270_0_435, 270, 53))

def word270_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_479 word270_0_480

def word270_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_481 word270_0_7

def word270_0_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 216#64])

def word270_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_482 word270_0_483

def word270_0_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def word270_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_484 word270_0_485

def word270_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_486 word270_0_449

def word270_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_487 word270_0_451

def word270_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_488 word270_0_427

def word270_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 20#64)

def word270_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_489 word270_0_490

def word270_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_491 word270_0_476

def word270_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_492 word270_0_476

def word270_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_493 word270_0_490

def word270_0_495 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 54)) (some 268) ([36, 24, 50]) (some (36, word270_0_435, 270, 55))

def word270_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_494 word270_0_495

def word270_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_496 word270_0_7

def word270_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 224#64])

def word270_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_497 word270_0_498

def word270_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_499 word270_0_485

def word270_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_500 word270_0_449

def word270_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_501 word270_0_451

def word270_0_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def word270_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_502 word270_0_503

def word270_0_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_504 word270_0_505

def word270_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_507 word270_0_7

def word270_0_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word270_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_508 word270_0_509

def word270_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_510 word270_0_427

def word270_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 21#64)

def word270_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_511 word270_0_512

def word270_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_513 word270_0_476

def word270_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_514 word270_0_476

def word270_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_515 word270_0_512

def word270_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_516 word270_0_476

def word270_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_517 word270_0_512

def word270_0_519 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 56)) (some 268) ([36, 24, 50]) (some (36, word270_0_435, 270, 57))

def word270_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_518 word270_0_519

def word270_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_520 word270_0_7

def word270_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 232#64])

def word270_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_521 word270_0_522

def word270_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_523 word270_0_485

def word270_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_524 word270_0_449

def word270_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_525 word270_0_451

def word270_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_526 word270_0_427

def word270_0_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 22#64)

def word270_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_527 word270_0_528

def word270_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_529 word270_0_431

def word270_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_530 word270_0_431

def word270_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_531 word270_0_528

def word270_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_532 word270_0_431

def word270_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_533 word270_0_528

def word270_0_535 : WordLangProgHOL (BitVec 64) :=
.call (some (([54, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 58)) (some 265) ([36, 24, 50]) (some (36, word270_0_435, 270, 59))

def word270_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_534 word270_0_535

def word270_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_536 word270_0_7

def word270_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_537 word270_0_427

def word270_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_538 word270_0_528

def word270_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_539 word270_0_528

def word270_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_540 word270_0_528

def word270_0_542 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word270_0_3, 270, 60)) (some 266) ([36, 24]) (some (36, word270_0_435, 270, 61))

def word270_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_541 word270_0_542

def word270_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_543 word270_0_7

def word270_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 240#64])

def word270_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_544 word270_0_545

def word270_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_546 word270_0_447

def word270_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_547 word270_0_449

def word270_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_548 word270_0_451

def word270_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_550 word270_0_7

def word270_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word270_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_551 word270_0_552

def word270_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_553 word270_0_522

def word270_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_554 word270_0_550

def word270_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_555 word270_0_505

def word270_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_556 word270_0_451

def word270_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_557 word270_0_545

def word270_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_558 word270_0_550

def word270_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_559 word270_0_505

def word270_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_560 word270_0_451

def word270_0_562 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 50) word270_0_549 word270_0_561

def word270_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_506 word270_0_562

def word270_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_563 word270_0_7

def word270_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def word270_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_564 word270_0_565

def word270_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def word270_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word270_0_566 word270_0_567

def pass270_0 : WordLangProgHOL (BitVec 64) :=
word270_0_568
theorem pass270_0_eq : WordSimp.compileExp (source270.2.2) = pass270_0 := by
  kernel_rfl
#print axioms pass270_0_eq
end InitECandidate.Proofs.WordStages
