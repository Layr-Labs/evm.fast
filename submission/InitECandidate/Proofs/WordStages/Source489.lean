import InitECandidate.Proofs.WordStages.Source473
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody489_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody489_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody489_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody489_0, 489, 2)) (some 75) ([]) (some (22, sourceBody489_1, 489, 3))

def sourceBody489_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody489_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_2 sourceBody489_3

def sourceBody489_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_4 sourceBody489_0

def sourceBody489_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody489_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 4)) (some 72) ([]) (some (6, sourceBody489_6, 489, 5))

def sourceBody489_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_7 sourceBody489_3

def sourceBody489_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_8 sourceBody489_0

def sourceBody489_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 280#64)

def sourceBody489_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody489_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 6)) (some 74) ([18]) (some (18, sourceBody489_11, 489, 7))

def sourceBody489_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_12 sourceBody489_3

def sourceBody489_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_13 sourceBody489_0

def sourceBody489_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_10 sourceBody489_14

def sourceBody489_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody489_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 280#64)

def sourceBody489_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody489_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 8)) (some 78) ([14, 26]) (some (14, sourceBody489_18, 489, 9))

def sourceBody489_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_19 sourceBody489_3

def sourceBody489_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_20 sourceBody489_0

def sourceBody489_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_17 sourceBody489_21

def sourceBody489_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_16 sourceBody489_22

def sourceBody489_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_23

def sourceBody489_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_24

def sourceBody489_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody489_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 10)) (some 74) ([14]) (some (14, sourceBody489_18, 489, 11))

def sourceBody489_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_27 sourceBody489_3

def sourceBody489_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_28 sourceBody489_0

def sourceBody489_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_26 sourceBody489_29

def sourceBody489_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 208#64])

def sourceBody489_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody489_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 26)

def sourceBody489_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 4

def sourceBody489_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_34 sourceBody489_0

def sourceBody489_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_33 sourceBody489_35

def sourceBody489_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_36 sourceBody489_0

def sourceBody489_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_32 sourceBody489_37

def sourceBody489_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_38

def sourceBody489_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_31 sourceBody489_39

def sourceBody489_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_40

def sourceBody489_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody489_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody489_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_43 sourceBody489_37

def sourceBody489_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_44

def sourceBody489_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_42 sourceBody489_45

def sourceBody489_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_46

def sourceBody489_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_41 sourceBody489_47

def sourceBody489_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 232#64])

def sourceBody489_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody489_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_50 sourceBody489_37

def sourceBody489_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_51

def sourceBody489_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_49 sourceBody489_52

def sourceBody489_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_53

def sourceBody489_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_48 sourceBody489_54

def sourceBody489_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody489_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody489_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 12)) (some 71) ([26]) (some (26, sourceBody489_57, 489, 13))

def sourceBody489_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_58 sourceBody489_3

def sourceBody489_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_59 sourceBody489_0

def sourceBody489_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_56 sourceBody489_60

def sourceBody489_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 224#64])

def sourceBody489_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 22)

def sourceBody489_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody489_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 16

def sourceBody489_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_65 sourceBody489_0

def sourceBody489_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_64 sourceBody489_66

def sourceBody489_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_67 sourceBody489_0

def sourceBody489_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_63 sourceBody489_68

def sourceBody489_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_69

def sourceBody489_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_62 sourceBody489_70

def sourceBody489_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_71

def sourceBody489_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody489_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody489_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_74 sourceBody489_68

def sourceBody489_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_75

def sourceBody489_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_73 sourceBody489_76

def sourceBody489_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_77

def sourceBody489_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_72 sourceBody489_78

def sourceBody489_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody489_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody489_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_81 sourceBody489_68

def sourceBody489_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_82

def sourceBody489_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_80 sourceBody489_83

def sourceBody489_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_84

def sourceBody489_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_79 sourceBody489_85

def sourceBody489_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody489_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody489_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_88 sourceBody489_68

def sourceBody489_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_89

def sourceBody489_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_87 sourceBody489_90

def sourceBody489_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_91

def sourceBody489_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_86 sourceBody489_92

def sourceBody489_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody489_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody489_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_95 sourceBody489_68

def sourceBody489_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_96

def sourceBody489_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_94 sourceBody489_97

def sourceBody489_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_98

def sourceBody489_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_93 sourceBody489_99

def sourceBody489_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody489_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody489_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_102 sourceBody489_68

def sourceBody489_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_103

def sourceBody489_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_101 sourceBody489_104

def sourceBody489_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_105

def sourceBody489_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_100 sourceBody489_106

def sourceBody489_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody489_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody489_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_109 sourceBody489_68

def sourceBody489_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_110

def sourceBody489_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_108 sourceBody489_111

def sourceBody489_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_112

def sourceBody489_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_107 sourceBody489_113

def sourceBody489_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody489_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody489_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 14)) (some 485) ([4, 16]) (some (4, sourceBody489_116, 489, 15))

def sourceBody489_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_117 sourceBody489_3

def sourceBody489_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_118 sourceBody489_0

def sourceBody489_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_115 sourceBody489_119

def sourceBody489_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_88 sourceBody489_120

def sourceBody489_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody489_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody489_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody489_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 12

def sourceBody489_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_125 sourceBody489_0

def sourceBody489_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_124 sourceBody489_126

def sourceBody489_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_127 sourceBody489_0

def sourceBody489_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_123 sourceBody489_128

def sourceBody489_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_129

def sourceBody489_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_122 sourceBody489_130

def sourceBody489_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_131

def sourceBody489_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody489_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody489_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody489_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 16)) (some 436) ([16, 12]) (some (16, sourceBody489_135, 489, 17))

def sourceBody489_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_136 sourceBody489_3

def sourceBody489_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_137 sourceBody489_0

def sourceBody489_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_134 sourceBody489_138

def sourceBody489_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_133 sourceBody489_139

def sourceBody489_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody489_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody489_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody489_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 24

def sourceBody489_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_144 sourceBody489_0

def sourceBody489_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_143 sourceBody489_145

def sourceBody489_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_146 sourceBody489_0

def sourceBody489_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_142 sourceBody489_147

def sourceBody489_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_148

def sourceBody489_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_141 sourceBody489_149

def sourceBody489_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_150

def sourceBody489_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 104#64])

def sourceBody489_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody489_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_153 sourceBody489_147

def sourceBody489_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_154

def sourceBody489_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_152 sourceBody489_155

def sourceBody489_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_156

def sourceBody489_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_151 sourceBody489_157

def sourceBody489_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 112#64])

def sourceBody489_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody489_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_160 sourceBody489_147

def sourceBody489_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_161

def sourceBody489_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_159 sourceBody489_162

def sourceBody489_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_163

def sourceBody489_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_158 sourceBody489_164

def sourceBody489_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody489_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody489_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody489_169 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 18)) (some 183) ([12, 24]) (some (12, sourceBody489_168, 489, 19))

def sourceBody489_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_169 sourceBody489_3

def sourceBody489_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_170 sourceBody489_0

def sourceBody489_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_167 sourceBody489_171

def sourceBody489_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_166 sourceBody489_172

def sourceBody489_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 136#64])

def sourceBody489_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody489_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody489_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 8

def sourceBody489_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_177 sourceBody489_0

def sourceBody489_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_176 sourceBody489_178

def sourceBody489_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_179 sourceBody489_0

def sourceBody489_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_175 sourceBody489_180

def sourceBody489_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_181

def sourceBody489_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_174 sourceBody489_182

def sourceBody489_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_183

def sourceBody489_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody489_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody489_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_186 sourceBody489_180

def sourceBody489_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_187

def sourceBody489_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_185 sourceBody489_188

def sourceBody489_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_189

def sourceBody489_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_184 sourceBody489_190

def sourceBody489_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 176#64])

def sourceBody489_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody489_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_193 sourceBody489_180

def sourceBody489_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_194

def sourceBody489_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_192 sourceBody489_195

def sourceBody489_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_196

def sourceBody489_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_191 sourceBody489_197

def sourceBody489_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody489_200 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 20)) (some 195) ([24]) (some (24, sourceBody489_199, 489, 21))

def sourceBody489_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_200 sourceBody489_3

def sourceBody489_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_201 sourceBody489_0

def sourceBody489_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_186 sourceBody489_202

def sourceBody489_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 264#64])

def sourceBody489_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody489_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody489_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 20

def sourceBody489_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_207 sourceBody489_0

def sourceBody489_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_206 sourceBody489_208

def sourceBody489_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_209 sourceBody489_0

def sourceBody489_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_205 sourceBody489_210

def sourceBody489_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_211

def sourceBody489_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_204 sourceBody489_212

def sourceBody489_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_213

def sourceBody489_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody489_0, 489, 22)) (some 195) ([24]) (some (24, sourceBody489_199, 489, 23))

def sourceBody489_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_215 sourceBody489_3

def sourceBody489_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_216 sourceBody489_0

def sourceBody489_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_193 sourceBody489_217

def sourceBody489_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_214 sourceBody489_218

def sourceBody489_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 272#64])

def sourceBody489_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_220 sourceBody489_212

def sourceBody489_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_221

def sourceBody489_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_219 sourceBody489_222

def sourceBody489_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 120#64])

def sourceBody489_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody489_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_225 sourceBody489_210

def sourceBody489_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_226

def sourceBody489_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_224 sourceBody489_227

def sourceBody489_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_228

def sourceBody489_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_223 sourceBody489_229

def sourceBody489_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 144#64])

def sourceBody489_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_231 sourceBody489_227

def sourceBody489_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_232

def sourceBody489_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_230 sourceBody489_233

def sourceBody489_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 216#64])

def sourceBody489_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody489_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_236 sourceBody489_210

def sourceBody489_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_237

def sourceBody489_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_235 sourceBody489_238

def sourceBody489_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_239

def sourceBody489_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_234 sourceBody489_240

def sourceBody489_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody489_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody489_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_243 sourceBody489_0

def sourceBody489_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_242 sourceBody489_244

def sourceBody489_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_241 sourceBody489_245

def sourceBody489_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_203 sourceBody489_246

def sourceBody489_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_247

def sourceBody489_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_248

def sourceBody489_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_198 sourceBody489_249

def sourceBody489_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_173 sourceBody489_250

def sourceBody489_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_251

def sourceBody489_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_252

def sourceBody489_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_165 sourceBody489_253

def sourceBody489_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_140 sourceBody489_254

def sourceBody489_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_255

def sourceBody489_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_256

def sourceBody489_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_132 sourceBody489_257

def sourceBody489_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_121 sourceBody489_258

def sourceBody489_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_259

def sourceBody489_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_260

def sourceBody489_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_114 sourceBody489_261

def sourceBody489_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_61 sourceBody489_262

def sourceBody489_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_263

def sourceBody489_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_264

def sourceBody489_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_55 sourceBody489_265

def sourceBody489_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_30 sourceBody489_266

def sourceBody489_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_267

def sourceBody489_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_268

def sourceBody489_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_25 sourceBody489_269

def sourceBody489_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_15 sourceBody489_270

def sourceBody489_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_271

def sourceBody489_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_272

def sourceBody489_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_9 sourceBody489_273

def sourceBody489_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_274

def sourceBody489_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_275

def sourceBody489_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_5 sourceBody489_276

def sourceBody489_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_277

def sourceBody489_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody489_0 sourceBody489_278

def source489 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (489, 2, sourceBody489_279)
end InitECandidate.Proofs.WordStages
