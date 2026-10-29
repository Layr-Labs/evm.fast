import InitECandidate.Proofs.WordStages.Source711
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody727_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody727_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody727_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody727_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody727_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody727_0, 727, 2)) (some 80) ([12, 32]) (some (12, sourceBody727_3, 727, 3))

def sourceBody727_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody727_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_4 sourceBody727_5

def sourceBody727_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_6 sourceBody727_0

def sourceBody727_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_2 sourceBody727_7

def sourceBody727_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_1 sourceBody727_8

def sourceBody727_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 38)

def sourceBody727_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody727_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody727_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody727_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 22) sourceBody727_12 sourceBody727_13

def sourceBody727_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_14 sourceBody727_5

def sourceBody727_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 32)

def sourceBody727_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody727_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody727_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_18 sourceBody727_0

def sourceBody727_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_17 sourceBody727_19

def sourceBody727_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 0#64) sourceBody727_20 sourceBody727_0

def sourceBody727_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_21 sourceBody727_5

def sourceBody727_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_22 sourceBody727_0

def sourceBody727_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_16 sourceBody727_23

def sourceBody727_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_15 sourceBody727_24

def sourceBody727_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_11 sourceBody727_25

def sourceBody727_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_10 sourceBody727_26

def sourceBody727_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody727_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody727_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 32, 22, 44, 8, 30]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody727_0, 727, 4)) (some 725) ([20]) (some (20, sourceBody727_29, 727, 5))

def sourceBody727_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_30 sourceBody727_5

def sourceBody727_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_31 sourceBody727_0

def sourceBody727_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_28 sourceBody727_32

def sourceBody727_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody727_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 32)

def sourceBody727_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody727_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def sourceBody727_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 8)

def sourceBody727_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody727_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 13402431016077863595#64)

def sourceBody727_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2210141511517208575#64)

def sourceBody727_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 7435674573564081700#64)

def sourceBody727_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 7239337960414712511#64)

def sourceBody727_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 5412103778470702295#64)

def sourceBody727_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1873798617647539866#64)

def sourceBody727_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody727_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody727_0, 727, 6)) (some 707) ([42, 16, 36, 26, 48, 6, 28, 18, 40, 14, 34, 24]) (some (42, sourceBody727_46, 727, 7))

def sourceBody727_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_47 sourceBody727_5

def sourceBody727_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_48 sourceBody727_0

def sourceBody727_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_45 sourceBody727_49

def sourceBody727_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_44 sourceBody727_50

def sourceBody727_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_43 sourceBody727_51

def sourceBody727_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_42 sourceBody727_52

def sourceBody727_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_41 sourceBody727_53

def sourceBody727_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_40 sourceBody727_54

def sourceBody727_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_39 sourceBody727_55

def sourceBody727_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_38 sourceBody727_56

def sourceBody727_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_37 sourceBody727_57

def sourceBody727_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_36 sourceBody727_58

def sourceBody727_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_35 sourceBody727_59

def sourceBody727_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_34 sourceBody727_60

def sourceBody727_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody727_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody727_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody727_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody727_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 36) sourceBody727_64 sourceBody727_65

def sourceBody727_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_66 sourceBody727_5

def sourceBody727_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody727_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody727_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody727_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_70 sourceBody727_0

def sourceBody727_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_69 sourceBody727_71

def sourceBody727_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody727_72 sourceBody727_0

def sourceBody727_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_73 sourceBody727_5

def sourceBody727_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_74 sourceBody727_0

def sourceBody727_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_68 sourceBody727_75

def sourceBody727_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_67 sourceBody727_76

def sourceBody727_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_63 sourceBody727_77

def sourceBody727_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_62 sourceBody727_78

def sourceBody727_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody727_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody727_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 22)

def sourceBody727_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 44)

def sourceBody727_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 8)

def sourceBody727_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody727_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody727_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 16, 36, 26, 48, 6]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody727_0, 727, 8)) (some 716) ([28, 18, 40, 14, 34, 24]) (some (28, sourceBody727_86, 727, 9))

def sourceBody727_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_87 sourceBody727_5

def sourceBody727_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_88 sourceBody727_0

def sourceBody727_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_85 sourceBody727_89

def sourceBody727_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_84 sourceBody727_90

def sourceBody727_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_83 sourceBody727_91

def sourceBody727_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_82 sourceBody727_92

def sourceBody727_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_81 sourceBody727_93

def sourceBody727_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_80 sourceBody727_94

def sourceBody727_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody727_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 42)

def sourceBody727_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody727_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 36)

def sourceBody727_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody727_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def sourceBody727_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 6)

def sourceBody727_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody727_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 10

def sourceBody727_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_104 sourceBody727_0

def sourceBody727_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_103 sourceBody727_105

def sourceBody727_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def sourceBody727_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64])
  10

def sourceBody727_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_108 sourceBody727_0

def sourceBody727_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_107 sourceBody727_109

def sourceBody727_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody727_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64])
  10

def sourceBody727_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_112 sourceBody727_0

def sourceBody727_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_111 sourceBody727_113

def sourceBody727_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody727_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64])
  10

def sourceBody727_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_116 sourceBody727_0

def sourceBody727_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_115 sourceBody727_117

def sourceBody727_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody727_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 32#64])
  10

def sourceBody727_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_120 sourceBody727_0

def sourceBody727_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_119 sourceBody727_121

def sourceBody727_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 46)

def sourceBody727_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 40#64])
  10

def sourceBody727_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_124 sourceBody727_0

def sourceBody727_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_123 sourceBody727_125

def sourceBody727_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_126 sourceBody727_0

def sourceBody727_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_122 sourceBody727_127

def sourceBody727_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_118 sourceBody727_128

def sourceBody727_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_114 sourceBody727_129

def sourceBody727_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_110 sourceBody727_130

def sourceBody727_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_106 sourceBody727_131

def sourceBody727_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_102 sourceBody727_132

def sourceBody727_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_133

def sourceBody727_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_101 sourceBody727_134

def sourceBody727_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_135

def sourceBody727_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_100 sourceBody727_136

def sourceBody727_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_137

def sourceBody727_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_99 sourceBody727_138

def sourceBody727_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_139

def sourceBody727_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_98 sourceBody727_140

def sourceBody727_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_141

def sourceBody727_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_97 sourceBody727_142

def sourceBody727_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_143

def sourceBody727_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_96 sourceBody727_144

def sourceBody727_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_145

def sourceBody727_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody727_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody727_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_148 sourceBody727_0

def sourceBody727_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_147 sourceBody727_149

def sourceBody727_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_146 sourceBody727_150

def sourceBody727_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_95 sourceBody727_151

def sourceBody727_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_152

def sourceBody727_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_153

def sourceBody727_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_154

def sourceBody727_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_155

def sourceBody727_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_156

def sourceBody727_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_157

def sourceBody727_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_158

def sourceBody727_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_159

def sourceBody727_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_160

def sourceBody727_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_161

def sourceBody727_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_162

def sourceBody727_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_163

def sourceBody727_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_79 sourceBody727_164

def sourceBody727_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_61 sourceBody727_165

def sourceBody727_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_166

def sourceBody727_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_167

def sourceBody727_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_33 sourceBody727_168

def sourceBody727_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_169

def sourceBody727_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_170

def sourceBody727_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_171

def sourceBody727_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_172

def sourceBody727_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_173

def sourceBody727_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_174

def sourceBody727_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_175

def sourceBody727_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_176

def sourceBody727_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_177

def sourceBody727_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_178

def sourceBody727_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_179

def sourceBody727_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_180

def sourceBody727_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_27 sourceBody727_181

def sourceBody727_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_9 sourceBody727_182

def sourceBody727_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_183

def sourceBody727_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody727_0 sourceBody727_184

def source727 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (727, 3, sourceBody727_185)
end InitECandidate.Proofs.WordStages
