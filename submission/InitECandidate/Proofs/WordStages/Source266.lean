import InitECandidate.Proofs.WordStages.Source250
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody266_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody266_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody266_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 2)) (some 69) ([]) (some (8, sourceBody266_1, 266, 3))

def sourceBody266_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody266_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_2 sourceBody266_3

def sourceBody266_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_4 sourceBody266_0

def sourceBody266_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody266_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody266_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 4)) (some 68) ([16]) (some (16, sourceBody266_7, 266, 5))

def sourceBody266_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_8 sourceBody266_3

def sourceBody266_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_9 sourceBody266_0

def sourceBody266_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_6 sourceBody266_10

def sourceBody266_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody266_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody266_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody266_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody266_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody266_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody266_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 6)) (some 265) ([12, 20, 6, 14, 10]) (some (12, sourceBody266_17, 266, 7))

def sourceBody266_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_18 sourceBody266_3

def sourceBody266_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_19 sourceBody266_0

def sourceBody266_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_16 sourceBody266_20

def sourceBody266_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_15 sourceBody266_21

def sourceBody266_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_14 sourceBody266_22

def sourceBody266_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_13 sourceBody266_23

def sourceBody266_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_12 sourceBody266_24

def sourceBody266_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_25

def sourceBody266_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_26

def sourceBody266_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody266_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody266_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody266_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 76#64)

def sourceBody266_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody266_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 8)) (some 265) ([12, 20, 6, 14, 10]) (some (12, sourceBody266_17, 266, 9))

def sourceBody266_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_33 sourceBody266_3

def sourceBody266_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_34 sourceBody266_0

def sourceBody266_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_32 sourceBody266_35

def sourceBody266_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_31 sourceBody266_36

def sourceBody266_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_30 sourceBody266_37

def sourceBody266_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_29 sourceBody266_38

def sourceBody266_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_28 sourceBody266_39

def sourceBody266_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_40

def sourceBody266_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_41

def sourceBody266_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_27 sourceBody266_42

def sourceBody266_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody266_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody266_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody266_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 116#64)

def sourceBody266_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody266_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 10)) (some 265) ([12, 20, 6, 14, 10]) (some (12, sourceBody266_17, 266, 11))

def sourceBody266_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_49 sourceBody266_3

def sourceBody266_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_50 sourceBody266_0

def sourceBody266_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_48 sourceBody266_51

def sourceBody266_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_47 sourceBody266_52

def sourceBody266_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_46 sourceBody266_53

def sourceBody266_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_45 sourceBody266_54

def sourceBody266_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_44 sourceBody266_55

def sourceBody266_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_56

def sourceBody266_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_57

def sourceBody266_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_43 sourceBody266_58

def sourceBody266_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody266_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody266_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody266_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 184#64)

def sourceBody266_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody266_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 12)) (some 265) ([12, 20, 6, 14, 10]) (some (12, sourceBody266_17, 266, 13))

def sourceBody266_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_65 sourceBody266_3

def sourceBody266_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_66 sourceBody266_0

def sourceBody266_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_64 sourceBody266_67

def sourceBody266_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_63 sourceBody266_68

def sourceBody266_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_62 sourceBody266_69

def sourceBody266_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_61 sourceBody266_70

def sourceBody266_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_60 sourceBody266_71

def sourceBody266_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_72

def sourceBody266_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_73

def sourceBody266_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_59 sourceBody266_74

def sourceBody266_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody266_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody266_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody266_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 68#64)

def sourceBody266_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody266_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 14)) (some 265) ([12, 20, 6, 14, 10]) (some (12, sourceBody266_17, 266, 15))

def sourceBody266_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_81 sourceBody266_3

def sourceBody266_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_82 sourceBody266_0

def sourceBody266_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_80 sourceBody266_83

def sourceBody266_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_79 sourceBody266_84

def sourceBody266_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_78 sourceBody266_85

def sourceBody266_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_77 sourceBody266_86

def sourceBody266_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_76 sourceBody266_87

def sourceBody266_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_88

def sourceBody266_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_89

def sourceBody266_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_75 sourceBody266_90

def sourceBody266_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody266_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody266_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody266_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody266_0, 266, 16)) (some 240) ([12, 20, 6]) (some (12, sourceBody266_17, 266, 17))

def sourceBody266_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_95 sourceBody266_3

def sourceBody266_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_96 sourceBody266_0

def sourceBody266_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_94 sourceBody266_97

def sourceBody266_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_93 sourceBody266_98

def sourceBody266_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_92 sourceBody266_99

def sourceBody266_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_100

def sourceBody266_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_101

def sourceBody266_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_91 sourceBody266_102

def sourceBody266_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody266_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody266_0, 266, 18)) (some 70) ([12]) (some (12, sourceBody266_17, 266, 19))

def sourceBody266_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_105 sourceBody266_3

def sourceBody266_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_106 sourceBody266_0

def sourceBody266_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_104 sourceBody266_107

def sourceBody266_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_108

def sourceBody266_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_109

def sourceBody266_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_103 sourceBody266_110

def sourceBody266_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody266_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody266_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_113 sourceBody266_0

def sourceBody266_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_112 sourceBody266_114

def sourceBody266_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_111 sourceBody266_115

def sourceBody266_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_11 sourceBody266_116

def sourceBody266_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_117

def sourceBody266_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_118

def sourceBody266_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_5 sourceBody266_119

def sourceBody266_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_120

def sourceBody266_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody266_0 sourceBody266_121

def source266 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (266, 3, sourceBody266_122)
end InitECandidate.Proofs.WordStages
