import InitECandidate.Proofs.WordStages.Source598
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody614_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody614_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody614_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 2)) (some 69) ([]) (some (22, sourceBody614_1, 614, 3))

def sourceBody614_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody614_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_2 sourceBody614_3

def sourceBody614_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_4 sourceBody614_0

def sourceBody614_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody614_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody614_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 4)) (some 68) ([16]) (some (16, sourceBody614_7, 614, 5))

def sourceBody614_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_8 sourceBody614_3

def sourceBody614_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_9 sourceBody614_0

def sourceBody614_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_6 sourceBody614_10

def sourceBody614_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody614_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody614_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody614_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody614_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody614_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 6)) (some 176) ([8, 20, 14]) (some (8, sourceBody614_16, 614, 7))

def sourceBody614_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_17 sourceBody614_3

def sourceBody614_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_18 sourceBody614_0

def sourceBody614_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_15 sourceBody614_19

def sourceBody614_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_14 sourceBody614_20

def sourceBody614_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_13 sourceBody614_21

def sourceBody614_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 28])

def sourceBody614_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody614_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_24 sourceBody614_0

def sourceBody614_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_25 sourceBody614_0

def sourceBody614_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_23 sourceBody614_26

def sourceBody614_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_27

def sourceBody614_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody614_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 8)) (some 177) ([8, 20]) (some (8, sourceBody614_16, 614, 9))

def sourceBody614_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_30 sourceBody614_3

def sourceBody614_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_31 sourceBody614_0

def sourceBody614_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_29 sourceBody614_32

def sourceBody614_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_13 sourceBody614_33

def sourceBody614_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_28 sourceBody614_34

def sourceBody614_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_35 sourceBody614_28

def sourceBody614_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 9#64]])

def sourceBody614_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody614_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody614_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 10)) (some 180) ([14]) (some (14, sourceBody614_39, 614, 11))

def sourceBody614_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_40 sourceBody614_3

def sourceBody614_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_41 sourceBody614_0

def sourceBody614_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_38 sourceBody614_42

def sourceBody614_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 9#64],
      Flapjack.WordLangExpHOL.var 20])

def sourceBody614_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody614_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody614_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 12)) (some 178) ([26, 12]) (some (26, sourceBody614_46, 614, 13))

def sourceBody614_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_47 sourceBody614_3

def sourceBody614_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_48 sourceBody614_0

def sourceBody614_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_45 sourceBody614_49

def sourceBody614_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_44 sourceBody614_50

def sourceBody614_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_51

def sourceBody614_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_52

def sourceBody614_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody614_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 14)) (some 68) ([26]) (some (26, sourceBody614_46, 614, 15))

def sourceBody614_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_55 sourceBody614_3

def sourceBody614_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_56 sourceBody614_0

def sourceBody614_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_54 sourceBody614_57

def sourceBody614_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 9#64],
      Flapjack.WordLangExpHOL.var 20])

def sourceBody614_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 20])

def sourceBody614_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody614_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody614_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 16)) (some 158) ([12, 24, 18]) (some (12, sourceBody614_62, 614, 17))

def sourceBody614_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_63 sourceBody614_3

def sourceBody614_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_64 sourceBody614_0

def sourceBody614_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_61 sourceBody614_65

def sourceBody614_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_60 sourceBody614_66

def sourceBody614_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_59 sourceBody614_67

def sourceBody614_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_68

def sourceBody614_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_69

def sourceBody614_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody614_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 12#64])

def sourceBody614_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody614_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody614_0, 614, 18)) (some 77) ([12, 24, 18]) (some (12, sourceBody614_62, 614, 19))

def sourceBody614_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_74 sourceBody614_3

def sourceBody614_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_75 sourceBody614_0

def sourceBody614_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_73 sourceBody614_76

def sourceBody614_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_72 sourceBody614_77

def sourceBody614_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_71 sourceBody614_78

def sourceBody614_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_79

def sourceBody614_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_80

def sourceBody614_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_70 sourceBody614_81

def sourceBody614_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody614_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody614_0, 614, 20)) (some 70) ([12]) (some (12, sourceBody614_62, 614, 21))

def sourceBody614_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_84 sourceBody614_3

def sourceBody614_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_85 sourceBody614_0

def sourceBody614_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_83 sourceBody614_86

def sourceBody614_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_87

def sourceBody614_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_88

def sourceBody614_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_82 sourceBody614_89

def sourceBody614_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody614_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody614_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_92 sourceBody614_0

def sourceBody614_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_91 sourceBody614_93

def sourceBody614_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_90 sourceBody614_94

def sourceBody614_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_58 sourceBody614_95

def sourceBody614_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_96

def sourceBody614_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_97

def sourceBody614_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_53 sourceBody614_98

def sourceBody614_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_43 sourceBody614_99

def sourceBody614_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_100

def sourceBody614_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_101

def sourceBody614_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_37 sourceBody614_102

def sourceBody614_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_103

def sourceBody614_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_36 sourceBody614_104

def sourceBody614_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_22 sourceBody614_105

def sourceBody614_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_106

def sourceBody614_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_107

def sourceBody614_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_12 sourceBody614_108

def sourceBody614_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_109

def sourceBody614_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_11 sourceBody614_110

def sourceBody614_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_111

def sourceBody614_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_112

def sourceBody614_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_5 sourceBody614_113

def sourceBody614_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_114

def sourceBody614_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody614_0 sourceBody614_115

def source614 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (614, 4, sourceBody614_116)
end InitECandidate.Proofs.WordStages
