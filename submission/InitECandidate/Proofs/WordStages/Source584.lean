import InitECandidate.Proofs.WordStages.Source568
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody584_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody584_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody584_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 2)) (some 69) ([]) (some (12, sourceBody584_1, 584, 3))

def sourceBody584_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody584_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_2 sourceBody584_3

def sourceBody584_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_4 sourceBody584_0

def sourceBody584_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody584_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody584_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody584_0, 584, 4)) (some 68) ([4]) (some (4, sourceBody584_7, 584, 5))

def sourceBody584_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_8 sourceBody584_3

def sourceBody584_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_9 sourceBody584_0

def sourceBody584_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_6 sourceBody584_10

def sourceBody584_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody584_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 84#64)

def sourceBody584_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody584_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_14 sourceBody584_0

def sourceBody584_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_13 sourceBody584_15

def sourceBody584_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_12 sourceBody584_16

def sourceBody584_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody584_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 114#64)

def sourceBody584_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_19 sourceBody584_15

def sourceBody584_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_18 sourceBody584_20

def sourceBody584_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_17 sourceBody584_21

def sourceBody584_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody584_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 97#64)

def sourceBody584_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_24 sourceBody584_15

def sourceBody584_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_23 sourceBody584_25

def sourceBody584_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_22 sourceBody584_26

def sourceBody584_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody584_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 110#64)

def sourceBody584_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_29 sourceBody584_15

def sourceBody584_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_28 sourceBody584_30

def sourceBody584_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_27 sourceBody584_31

def sourceBody584_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody584_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 115#64)

def sourceBody584_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_34 sourceBody584_15

def sourceBody584_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_33 sourceBody584_35

def sourceBody584_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_32 sourceBody584_36

def sourceBody584_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 5#64])

def sourceBody584_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 102#64)

def sourceBody584_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_39 sourceBody584_15

def sourceBody584_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_38 sourceBody584_40

def sourceBody584_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_37 sourceBody584_41

def sourceBody584_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 6#64])

def sourceBody584_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 101#64)

def sourceBody584_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_44 sourceBody584_15

def sourceBody584_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_43 sourceBody584_45

def sourceBody584_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_42 sourceBody584_46

def sourceBody584_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody584_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_48 sourceBody584_20

def sourceBody584_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_47 sourceBody584_49

def sourceBody584_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody584_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody584_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_52 sourceBody584_15

def sourceBody584_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_51 sourceBody584_53

def sourceBody584_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_50 sourceBody584_54

def sourceBody584_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody584_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_56 sourceBody584_25

def sourceBody584_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_55 sourceBody584_57

def sourceBody584_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 10#64])

def sourceBody584_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody584_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_60 sourceBody584_15

def sourceBody584_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_59 sourceBody584_61

def sourceBody584_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_58 sourceBody584_62

def sourceBody584_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 11#64])

def sourceBody584_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_64 sourceBody584_61

def sourceBody584_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_63 sourceBody584_65

def sourceBody584_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody584_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_67 sourceBody584_20

def sourceBody584_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_66 sourceBody584_68

def sourceBody584_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 13#64])

def sourceBody584_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_70 sourceBody584_45

def sourceBody584_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_69 sourceBody584_71

def sourceBody584_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 14#64])

def sourceBody584_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_73 sourceBody584_35

def sourceBody584_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_72 sourceBody584_74

def sourceBody584_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 15#64])

def sourceBody584_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_76 sourceBody584_35

def sourceBody584_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_75 sourceBody584_77

def sourceBody584_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody584_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody584_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_80 sourceBody584_15

def sourceBody584_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_79 sourceBody584_81

def sourceBody584_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_78 sourceBody584_82

def sourceBody584_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 17#64])

def sourceBody584_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_84 sourceBody584_25

def sourceBody584_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_83 sourceBody584_85

def sourceBody584_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 18#64])

def sourceBody584_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_87 sourceBody584_61

def sourceBody584_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_86 sourceBody584_88

def sourceBody584_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 19#64])

def sourceBody584_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_90 sourceBody584_61

def sourceBody584_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_89 sourceBody584_91

def sourceBody584_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 20#64])

def sourceBody584_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_93 sourceBody584_20

def sourceBody584_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_92 sourceBody584_94

def sourceBody584_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 21#64])

def sourceBody584_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_96 sourceBody584_45

def sourceBody584_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_95 sourceBody584_97

def sourceBody584_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 22#64])

def sourceBody584_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_99 sourceBody584_35

def sourceBody584_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_98 sourceBody584_100

def sourceBody584_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 23#64])

def sourceBody584_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_102 sourceBody584_35

def sourceBody584_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_101 sourceBody584_103

def sourceBody584_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody584_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_105 sourceBody584_81

def sourceBody584_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_104 sourceBody584_106

def sourceBody584_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 25#64])

def sourceBody584_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 117#64)

def sourceBody584_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_109 sourceBody584_15

def sourceBody584_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_108 sourceBody584_110

def sourceBody584_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_107 sourceBody584_111

def sourceBody584_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 26#64])

def sourceBody584_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 105#64)

def sourceBody584_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_114 sourceBody584_15

def sourceBody584_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_113 sourceBody584_115

def sourceBody584_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_112 sourceBody584_116

def sourceBody584_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 27#64])

def sourceBody584_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_118 sourceBody584_30

def sourceBody584_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_117 sourceBody584_119

def sourceBody584_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 28#64])

def sourceBody584_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 116#64)

def sourceBody584_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_122 sourceBody584_15

def sourceBody584_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_121 sourceBody584_123

def sourceBody584_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_120 sourceBody584_124

def sourceBody584_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 29#64])

def sourceBody584_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 50#64)

def sourceBody584_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_127 sourceBody584_15

def sourceBody584_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_126 sourceBody584_128

def sourceBody584_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_125 sourceBody584_129

def sourceBody584_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 30#64])

def sourceBody584_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 53#64)

def sourceBody584_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_132 sourceBody584_15

def sourceBody584_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_131 sourceBody584_133

def sourceBody584_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_130 sourceBody584_134

def sourceBody584_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 31#64])

def sourceBody584_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 54#64)

def sourceBody584_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_137 sourceBody584_15

def sourceBody584_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_136 sourceBody584_138

def sourceBody584_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_135 sourceBody584_139

def sourceBody584_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody584_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 41#64)

def sourceBody584_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_142 sourceBody584_15

def sourceBody584_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_141 sourceBody584_143

def sourceBody584_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_140 sourceBody584_144

def sourceBody584_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody584_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody584_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody584_0, 584, 6)) (some 70) ([10]) (some (10, sourceBody584_147, 584, 7))

def sourceBody584_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_148 sourceBody584_3

def sourceBody584_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_149 sourceBody584_0

def sourceBody584_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_146 sourceBody584_150

def sourceBody584_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_151

def sourceBody584_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_152

def sourceBody584_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_145 sourceBody584_153

def sourceBody584_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody584_156 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody584_0, 584, 8)) (some 68) ([10]) (some (10, sourceBody584_147, 584, 9))

def sourceBody584_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_156 sourceBody584_3

def sourceBody584_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_157 sourceBody584_0

def sourceBody584_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_155 sourceBody584_158

def sourceBody584_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 296#64])

def sourceBody584_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody584_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody584_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 14

def sourceBody584_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_163 sourceBody584_0

def sourceBody584_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_162 sourceBody584_164

def sourceBody584_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_165 sourceBody584_0

def sourceBody584_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_161 sourceBody584_166

def sourceBody584_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_167

def sourceBody584_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_160 sourceBody584_168

def sourceBody584_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_169

def sourceBody584_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_159 sourceBody584_170

def sourceBody584_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_171

def sourceBody584_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_172

def sourceBody584_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_154 sourceBody584_173

def sourceBody584_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody584_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody584_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 296#64]))

def sourceBody584_178 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody584_0, 584, 10)) (some 158) ([10, 8, 14]) (some (10, sourceBody584_147, 584, 11))

def sourceBody584_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_178 sourceBody584_3

def sourceBody584_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_179 sourceBody584_0

def sourceBody584_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_177 sourceBody584_180

def sourceBody584_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_176 sourceBody584_181

def sourceBody584_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_175 sourceBody584_182

def sourceBody584_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_183

def sourceBody584_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_184

def sourceBody584_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_174 sourceBody584_185

def sourceBody584_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody584_188 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody584_0, 584, 12)) (some 68) ([10]) (some (10, sourceBody584_147, 584, 13))

def sourceBody584_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_188 sourceBody584_3

def sourceBody584_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_189 sourceBody584_0

def sourceBody584_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_187 sourceBody584_190

def sourceBody584_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 304#64])

def sourceBody584_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_192 sourceBody584_168

def sourceBody584_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_193

def sourceBody584_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_191 sourceBody584_194

def sourceBody584_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_195

def sourceBody584_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_196

def sourceBody584_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_186 sourceBody584_197

def sourceBody584_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody584_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody584_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody584_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody584_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 14) sourceBody584_201 sourceBody584_202

def sourceBody584_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_203 sourceBody584_3

def sourceBody584_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody584_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 304#64]),
      Flapjack.WordLangExpHOL.var 4])

def sourceBody584_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 255#64)

def sourceBody584_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody584_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_208 sourceBody584_0

def sourceBody584_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_207 sourceBody584_209

def sourceBody584_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_206 sourceBody584_210

def sourceBody584_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody584_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody584_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_213 sourceBody584_0

def sourceBody584_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_214 sourceBody584_0

def sourceBody584_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_212 sourceBody584_215

def sourceBody584_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_216

def sourceBody584_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_211 sourceBody584_217

def sourceBody584_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody584_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_218 sourceBody584_219

def sourceBody584_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody584_222 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody584_220 sourceBody584_221

def sourceBody584_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_222 sourceBody584_3

def sourceBody584_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_223 sourceBody584_0

def sourceBody584_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_205 sourceBody584_224

def sourceBody584_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_204 sourceBody584_225

def sourceBody584_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_200 sourceBody584_226

def sourceBody584_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_161 sourceBody584_227

def sourceBody584_229 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody584_228 (Flapjack.Spt.ls PUnit.unit)

def sourceBody584_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_229 sourceBody584_3

def sourceBody584_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_3 sourceBody584_230

def sourceBody584_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 304#64]),
      Flapjack.WordLangExpHOL.const 19#64])

def sourceBody584_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 254#64)

def sourceBody584_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_233 sourceBody584_209

def sourceBody584_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_232 sourceBody584_234

def sourceBody584_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_231 sourceBody584_235

def sourceBody584_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody584_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody584_239 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 14)) (some 68) ([8]) (some (8, sourceBody584_238, 584, 15))

def sourceBody584_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_239 sourceBody584_3

def sourceBody584_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_240 sourceBody584_0

def sourceBody584_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_237 sourceBody584_241

def sourceBody584_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 312#64])

def sourceBody584_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody584_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 14)

def sourceBody584_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody584_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_246 sourceBody584_0

def sourceBody584_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_245 sourceBody584_247

def sourceBody584_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_248 sourceBody584_0

def sourceBody584_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_244 sourceBody584_249

def sourceBody584_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_250

def sourceBody584_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_243 sourceBody584_251

def sourceBody584_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_252

def sourceBody584_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_242 sourceBody584_253

def sourceBody584_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_254

def sourceBody584_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_255

def sourceBody584_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_236 sourceBody584_256

def sourceBody584_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 312#64]))

def sourceBody584_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody584_260 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 16)) (some 78) ([8, 14]) (some (8, sourceBody584_238, 584, 17))

def sourceBody584_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_260 sourceBody584_3

def sourceBody584_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_261 sourceBody584_0

def sourceBody584_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_259 sourceBody584_262

def sourceBody584_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_258 sourceBody584_263

def sourceBody584_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_264

def sourceBody584_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_265

def sourceBody584_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_257 sourceBody584_266

def sourceBody584_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody584_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 18)) (some 68) ([8]) (some (8, sourceBody584_238, 584, 19))

def sourceBody584_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_269 sourceBody584_3

def sourceBody584_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_270 sourceBody584_0

def sourceBody584_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_268 sourceBody584_271

def sourceBody584_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 264#64])

def sourceBody584_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_273 sourceBody584_251

def sourceBody584_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_274

def sourceBody584_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_272 sourceBody584_275

def sourceBody584_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_276

def sourceBody584_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_277

def sourceBody584_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_267 sourceBody584_278

def sourceBody584_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody584_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody584_282 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 20)) (some 78) ([8, 14]) (some (8, sourceBody584_238, 584, 21))

def sourceBody584_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_282 sourceBody584_3

def sourceBody584_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_283 sourceBody584_0

def sourceBody584_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_281 sourceBody584_284

def sourceBody584_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_280 sourceBody584_285

def sourceBody584_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_286

def sourceBody584_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_287

def sourceBody584_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_279 sourceBody584_288

def sourceBody584_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody584_291 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 22)) (some 68) ([8]) (some (8, sourceBody584_238, 584, 23))

def sourceBody584_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_291 sourceBody584_3

def sourceBody584_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_292 sourceBody584_0

def sourceBody584_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_290 sourceBody584_293

def sourceBody584_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 280#64])

def sourceBody584_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_295 sourceBody584_251

def sourceBody584_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_296

def sourceBody584_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_294 sourceBody584_297

def sourceBody584_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_298

def sourceBody584_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_299

def sourceBody584_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_289 sourceBody584_300

def sourceBody584_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody584_303 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody584_0, 584, 24)) (some 68) ([8]) (some (8, sourceBody584_238, 584, 25))

def sourceBody584_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_303 sourceBody584_3

def sourceBody584_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_304 sourceBody584_0

def sourceBody584_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_302 sourceBody584_305

def sourceBody584_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 272#64])

def sourceBody584_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_307 sourceBody584_251

def sourceBody584_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_308

def sourceBody584_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_306 sourceBody584_309

def sourceBody584_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_310

def sourceBody584_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_311

def sourceBody584_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_301 sourceBody584_312

def sourceBody584_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody584_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody584_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_315 sourceBody584_0

def sourceBody584_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_314 sourceBody584_316

def sourceBody584_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_313 sourceBody584_317

def sourceBody584_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_199 sourceBody584_318

def sourceBody584_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_319

def sourceBody584_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_198 sourceBody584_320

def sourceBody584_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_11 sourceBody584_321

def sourceBody584_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_322

def sourceBody584_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_323

def sourceBody584_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_5 sourceBody584_324

def sourceBody584_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_325

def sourceBody584_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody584_0 sourceBody584_326

def source584 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (584, 1, sourceBody584_327)
end InitECandidate.Proofs.WordStages
