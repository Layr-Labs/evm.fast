import InitECandidate.Proofs.WordStages.Source678
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody694_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody694_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody694_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 2)) (some 657) ([]) (some (22, sourceBody694_1, 694, 3))

def sourceBody694_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody694_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_2 sourceBody694_3

def sourceBody694_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_4 sourceBody694_0

def sourceBody694_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_5

def sourceBody694_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_6

def sourceBody694_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody694_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody694_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 4)) (some 681) ([22, 16]) (some (22, sourceBody694_1, 694, 5))

def sourceBody694_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_10 sourceBody694_3

def sourceBody694_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_11 sourceBody694_0

def sourceBody694_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_9 sourceBody694_12

def sourceBody694_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_8 sourceBody694_13

def sourceBody694_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody694_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody694_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody694_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 6)) (some 681) ([16, 28]) (some (16, sourceBody694_17, 694, 7))

def sourceBody694_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_18 sourceBody694_3

def sourceBody694_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_19 sourceBody694_0

def sourceBody694_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_16 sourceBody694_20

def sourceBody694_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_15 sourceBody694_21

def sourceBody694_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 22])

def sourceBody694_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody694_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody694_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody694_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 8) sourceBody694_25 sourceBody694_26

def sourceBody694_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_27 sourceBody694_3

def sourceBody694_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody694_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody694_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody694_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody694_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody694_0, 694, 8)) (some 679) ([28, 8]) (some (28, sourceBody694_32, 694, 9))

def sourceBody694_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_33 sourceBody694_3

def sourceBody694_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_34 sourceBody694_0

def sourceBody694_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_31 sourceBody694_35

def sourceBody694_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_30 sourceBody694_36

def sourceBody694_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_37

def sourceBody694_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_38

def sourceBody694_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody694_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody694_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_41 sourceBody694_0

def sourceBody694_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_40 sourceBody694_42

def sourceBody694_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_39 sourceBody694_43

def sourceBody694_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody694_44 sourceBody694_0

def sourceBody694_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_45 sourceBody694_3

def sourceBody694_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_46 sourceBody694_0

def sourceBody694_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_29 sourceBody694_47

def sourceBody694_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_28 sourceBody694_48

def sourceBody694_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_24 sourceBody694_49

def sourceBody694_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_23 sourceBody694_50

def sourceBody694_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 10)) (some 69) ([]) (some (28, sourceBody694_32, 694, 11))

def sourceBody694_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_52 sourceBody694_3

def sourceBody694_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_53 sourceBody694_0

def sourceBody694_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody694_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody694_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 12)) (some 68) ([8]) (some (8, sourceBody694_56, 694, 13))

def sourceBody694_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_57 sourceBody694_3

def sourceBody694_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_58 sourceBody694_0

def sourceBody694_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_55 sourceBody694_59

def sourceBody694_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody694_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody694_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 14)) (some 68) ([20]) (some (20, sourceBody694_62, 694, 15))

def sourceBody694_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_63 sourceBody694_3

def sourceBody694_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_64 sourceBody694_0

def sourceBody694_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_61 sourceBody694_65

def sourceBody694_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody694_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody694_69 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 16)) (some 68) ([14]) (some (14, sourceBody694_68, 694, 17))

def sourceBody694_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_69 sourceBody694_3

def sourceBody694_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_70 sourceBody694_0

def sourceBody694_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_67 sourceBody694_71

def sourceBody694_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody694_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody694_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 18)) (some 68) ([26]) (some (26, sourceBody694_74, 694, 19))

def sourceBody694_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_75 sourceBody694_3

def sourceBody694_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_76 sourceBody694_0

def sourceBody694_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_73 sourceBody694_77

def sourceBody694_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody694_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody694_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody694_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 20)) (some 686) ([12, 24]) (some (12, sourceBody694_81, 694, 21))

def sourceBody694_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_82 sourceBody694_3

def sourceBody694_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_83 sourceBody694_0

def sourceBody694_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_80 sourceBody694_84

def sourceBody694_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_79 sourceBody694_85

def sourceBody694_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_86

def sourceBody694_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_87

def sourceBody694_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody694_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody694_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 22)) (some 687) ([12, 24]) (some (12, sourceBody694_81, 694, 23))

def sourceBody694_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_91 sourceBody694_3

def sourceBody694_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_92 sourceBody694_0

def sourceBody694_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_90 sourceBody694_93

def sourceBody694_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_89 sourceBody694_94

def sourceBody694_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_95

def sourceBody694_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_96

def sourceBody694_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_88 sourceBody694_97

def sourceBody694_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody694_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody694_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody694_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody694_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 24)) (some 693) ([12, 24, 18, 30]) (some (12, sourceBody694_81, 694, 25))

def sourceBody694_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_103 sourceBody694_3

def sourceBody694_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_104 sourceBody694_0

def sourceBody694_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_102 sourceBody694_105

def sourceBody694_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_101 sourceBody694_106

def sourceBody694_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_100 sourceBody694_107

def sourceBody694_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_99 sourceBody694_108

def sourceBody694_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_109

def sourceBody694_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_110

def sourceBody694_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_98 sourceBody694_111

def sourceBody694_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody694_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 26)) (some 691) ([12, 24]) (some (12, sourceBody694_81, 694, 27))

def sourceBody694_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_114 sourceBody694_3

def sourceBody694_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_115 sourceBody694_0

def sourceBody694_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_100 sourceBody694_116

def sourceBody694_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_113 sourceBody694_117

def sourceBody694_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_118

def sourceBody694_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_119

def sourceBody694_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_112 sourceBody694_120

def sourceBody694_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody694_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody694_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 28)) (some 668) ([12, 24, 18]) (some (12, sourceBody694_81, 694, 29))

def sourceBody694_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_124 sourceBody694_3

def sourceBody694_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_125 sourceBody694_0

def sourceBody694_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_123 sourceBody694_126

def sourceBody694_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_122 sourceBody694_127

def sourceBody694_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_99 sourceBody694_128

def sourceBody694_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_129

def sourceBody694_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_130

def sourceBody694_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_121 sourceBody694_131

def sourceBody694_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody694_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 384#64]))

def sourceBody694_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody694_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody694_0, 694, 30)) (some 692) ([12, 24, 18, 30]) (some (12, sourceBody694_81, 694, 31))

def sourceBody694_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_136 sourceBody694_3

def sourceBody694_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_137 sourceBody694_0

def sourceBody694_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_135 sourceBody694_138

def sourceBody694_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_134 sourceBody694_139

def sourceBody694_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_122 sourceBody694_140

def sourceBody694_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_133 sourceBody694_141

def sourceBody694_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_142

def sourceBody694_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_143

def sourceBody694_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_132 sourceBody694_144

def sourceBody694_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody694_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody694_0, 694, 32)) (some 70) ([12]) (some (12, sourceBody694_81, 694, 33))

def sourceBody694_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_147 sourceBody694_3

def sourceBody694_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_148 sourceBody694_0

def sourceBody694_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_146 sourceBody694_149

def sourceBody694_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_150

def sourceBody694_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_151

def sourceBody694_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_145 sourceBody694_152

def sourceBody694_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody694_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody694_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_155 sourceBody694_0

def sourceBody694_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_154 sourceBody694_156

def sourceBody694_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_153 sourceBody694_157

def sourceBody694_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_78 sourceBody694_158

def sourceBody694_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_159

def sourceBody694_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_160

def sourceBody694_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_72 sourceBody694_161

def sourceBody694_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_162

def sourceBody694_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_163

def sourceBody694_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_66 sourceBody694_164

def sourceBody694_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_165

def sourceBody694_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_166

def sourceBody694_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_60 sourceBody694_167

def sourceBody694_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_168

def sourceBody694_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_169

def sourceBody694_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_54 sourceBody694_170

def sourceBody694_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_171

def sourceBody694_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_172

def sourceBody694_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_51 sourceBody694_173

def sourceBody694_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_22 sourceBody694_174

def sourceBody694_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_175

def sourceBody694_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_176

def sourceBody694_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_14 sourceBody694_177

def sourceBody694_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_178

def sourceBody694_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_0 sourceBody694_179

def sourceBody694_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody694_7 sourceBody694_180

def source694 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (694, 4, sourceBody694_181)
end InitECandidate.Proofs.WordStages
