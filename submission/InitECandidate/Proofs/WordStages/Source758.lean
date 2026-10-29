import InitECandidate.Proofs.WordStages.Source742
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody758_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody758_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody758_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 2)) (some 69) ([]) (some (22, sourceBody758_1, 758, 3))

def sourceBody758_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody758_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_2 sourceBody758_3

def sourceBody758_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_4 sourceBody758_0

def sourceBody758_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1440#64)

def sourceBody758_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody758_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 4)) (some 68) ([16]) (some (16, sourceBody758_7, 758, 5))

def sourceBody758_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_8 sourceBody758_3

def sourceBody758_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_9 sourceBody758_0

def sourceBody758_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_6 sourceBody758_10

def sourceBody758_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody758_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody758_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 576#64])

def sourceBody758_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 864#64])

def sourceBody758_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1152#64])

def sourceBody758_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody758_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody758_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody758_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody758_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 6)) (some 752) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 7))

def sourceBody758_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_21 sourceBody758_3

def sourceBody758_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_22 sourceBody758_0

def sourceBody758_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_19 sourceBody758_23

def sourceBody758_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_18 sourceBody758_24

def sourceBody758_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_17 sourceBody758_25

def sourceBody758_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_26

def sourceBody758_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_27

def sourceBody758_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody758_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody758_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody758_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 8)) (some 752) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 9))

def sourceBody758_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_32 sourceBody758_3

def sourceBody758_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_33 sourceBody758_0

def sourceBody758_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_31 sourceBody758_34

def sourceBody758_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_30 sourceBody758_35

def sourceBody758_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_29 sourceBody758_36

def sourceBody758_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_37

def sourceBody758_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_38

def sourceBody758_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_28 sourceBody758_39

def sourceBody758_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody758_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody758_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 10)) (some 749) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 11))

def sourceBody758_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_43 sourceBody758_3

def sourceBody758_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_44 sourceBody758_0

def sourceBody758_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_42 sourceBody758_45

def sourceBody758_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_18 sourceBody758_46

def sourceBody758_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_41 sourceBody758_47

def sourceBody758_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_48

def sourceBody758_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_49

def sourceBody758_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_40 sourceBody758_50

def sourceBody758_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody758_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody758_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 12)) (some 749) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 13))

def sourceBody758_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_54 sourceBody758_3

def sourceBody758_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_55 sourceBody758_0

def sourceBody758_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_31 sourceBody758_56

def sourceBody758_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_53 sourceBody758_57

def sourceBody758_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_52 sourceBody758_58

def sourceBody758_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_59

def sourceBody758_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_60

def sourceBody758_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_51 sourceBody758_61

def sourceBody758_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody758_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody758_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody758_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 14)) (some 752) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 15))

def sourceBody758_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_66 sourceBody758_3

def sourceBody758_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_67 sourceBody758_0

def sourceBody758_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_65 sourceBody758_68

def sourceBody758_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_64 sourceBody758_69

def sourceBody758_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_63 sourceBody758_70

def sourceBody758_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_71

def sourceBody758_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_72

def sourceBody758_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_62 sourceBody758_73

def sourceBody758_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody758_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody758_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 16)) (some 750) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 17))

def sourceBody758_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_77 sourceBody758_3

def sourceBody758_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_78 sourceBody758_0

def sourceBody758_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_76 sourceBody758_79

def sourceBody758_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_75 sourceBody758_80

def sourceBody758_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_63 sourceBody758_81

def sourceBody758_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_82

def sourceBody758_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_83

def sourceBody758_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_74 sourceBody758_84

def sourceBody758_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody758_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody758_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 18)) (some 750) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 19))

def sourceBody758_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_88 sourceBody758_3

def sourceBody758_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_89 sourceBody758_0

def sourceBody758_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_87 sourceBody758_90

def sourceBody758_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_75 sourceBody758_91

def sourceBody758_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_86 sourceBody758_92

def sourceBody758_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_93

def sourceBody758_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_94

def sourceBody758_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_85 sourceBody758_95

def sourceBody758_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody758_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 20)) (some 753) ([12, 24]) (some (12, sourceBody758_20, 758, 21))

def sourceBody758_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_98 sourceBody758_3

def sourceBody758_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_99 sourceBody758_0

def sourceBody758_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_97 sourceBody758_100

def sourceBody758_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_29 sourceBody758_101

def sourceBody758_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_102

def sourceBody758_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_103

def sourceBody758_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_96 sourceBody758_104

def sourceBody758_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody758_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody758_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody758_0, 758, 22)) (some 749) ([12, 24, 18]) (some (12, sourceBody758_20, 758, 23))

def sourceBody758_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_108 sourceBody758_3

def sourceBody758_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_109 sourceBody758_0

def sourceBody758_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_87 sourceBody758_110

def sourceBody758_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_107 sourceBody758_111

def sourceBody758_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_106 sourceBody758_112

def sourceBody758_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_113

def sourceBody758_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_114

def sourceBody758_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_105 sourceBody758_115

def sourceBody758_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody758_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody758_0, 758, 24)) (some 70) ([12]) (some (12, sourceBody758_20, 758, 25))

def sourceBody758_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_118 sourceBody758_3

def sourceBody758_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_119 sourceBody758_0

def sourceBody758_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_117 sourceBody758_120

def sourceBody758_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_121

def sourceBody758_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_122

def sourceBody758_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_116 sourceBody758_123

def sourceBody758_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody758_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody758_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_126 sourceBody758_0

def sourceBody758_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_125 sourceBody758_127

def sourceBody758_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_124 sourceBody758_128

def sourceBody758_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_16 sourceBody758_129

def sourceBody758_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_130

def sourceBody758_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_15 sourceBody758_131

def sourceBody758_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_132

def sourceBody758_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_14 sourceBody758_133

def sourceBody758_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_134

def sourceBody758_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_13 sourceBody758_135

def sourceBody758_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_136

def sourceBody758_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_12 sourceBody758_137

def sourceBody758_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_138

def sourceBody758_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_11 sourceBody758_139

def sourceBody758_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_140

def sourceBody758_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_141

def sourceBody758_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_5 sourceBody758_142

def sourceBody758_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_143

def sourceBody758_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody758_0 sourceBody758_144

def source758 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (758, 4, sourceBody758_145)
end InitECandidate.Proofs.WordStages
