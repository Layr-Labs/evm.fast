import InitECandidate.Proofs.WordStages.Source738
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody754_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody754_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody754_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 2)) (some 69) ([]) (some (8, sourceBody754_1, 754, 3))

def sourceBody754_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody754_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_2 sourceBody754_3

def sourceBody754_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_4 sourceBody754_0

def sourceBody754_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody754_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody754_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 4)) (some 68) ([20]) (some (20, sourceBody754_7, 754, 5))

def sourceBody754_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_8 sourceBody754_3

def sourceBody754_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_9 sourceBody754_0

def sourceBody754_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_6 sourceBody754_10

def sourceBody754_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody754_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody754_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody754_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody754_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody754_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody754_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody754_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody754_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody754_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 6)) (some 740) ([10, 22]) (some (10, sourceBody754_20, 754, 7))

def sourceBody754_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_21 sourceBody754_3

def sourceBody754_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_22 sourceBody754_0

def sourceBody754_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_19 sourceBody754_23

def sourceBody754_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_18 sourceBody754_24

def sourceBody754_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_25

def sourceBody754_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_26

def sourceBody754_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody754_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody754_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody754_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 8)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 9))

def sourceBody754_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_31 sourceBody754_3

def sourceBody754_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_32 sourceBody754_0

def sourceBody754_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_30 sourceBody754_33

def sourceBody754_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_29 sourceBody754_34

def sourceBody754_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_28 sourceBody754_35

def sourceBody754_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_36

def sourceBody754_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_37

def sourceBody754_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_27 sourceBody754_38

def sourceBody754_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody754_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 10)) (some 741) ([10, 22]) (some (10, sourceBody754_20, 754, 11))

def sourceBody754_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_41 sourceBody754_3

def sourceBody754_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_42 sourceBody754_0

def sourceBody754_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_40 sourceBody754_43

def sourceBody754_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_28 sourceBody754_44

def sourceBody754_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_45

def sourceBody754_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_46

def sourceBody754_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_39 sourceBody754_47

def sourceBody754_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody754_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody754_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 12)) (some 735) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 13))

def sourceBody754_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_51 sourceBody754_3

def sourceBody754_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_52 sourceBody754_0

def sourceBody754_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_50 sourceBody754_53

def sourceBody754_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_49 sourceBody754_54

def sourceBody754_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_18 sourceBody754_55

def sourceBody754_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_56

def sourceBody754_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_57

def sourceBody754_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_48 sourceBody754_58

def sourceBody754_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody754_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody754_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 14)) (some 740) ([10, 22]) (some (10, sourceBody754_20, 754, 15))

def sourceBody754_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_62 sourceBody754_3

def sourceBody754_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_63 sourceBody754_0

def sourceBody754_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_61 sourceBody754_64

def sourceBody754_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_60 sourceBody754_65

def sourceBody754_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_66

def sourceBody754_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_67

def sourceBody754_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_59 sourceBody754_68

def sourceBody754_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody754_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 16)) (some 741) ([10, 22]) (some (10, sourceBody754_20, 754, 17))

def sourceBody754_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_71 sourceBody754_3

def sourceBody754_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_72 sourceBody754_0

def sourceBody754_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_70 sourceBody754_73

def sourceBody754_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_60 sourceBody754_74

def sourceBody754_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_75

def sourceBody754_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_76

def sourceBody754_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_69 sourceBody754_77

def sourceBody754_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody754_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 18)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 19))

def sourceBody754_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_80 sourceBody754_3

def sourceBody754_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_81 sourceBody754_0

def sourceBody754_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_79 sourceBody754_82

def sourceBody754_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_19 sourceBody754_83

def sourceBody754_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_28 sourceBody754_84

def sourceBody754_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_85

def sourceBody754_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_86

def sourceBody754_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_78 sourceBody754_87

def sourceBody754_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 20)) (some 735) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 21))

def sourceBody754_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_89 sourceBody754_3

def sourceBody754_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_90 sourceBody754_0

def sourceBody754_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_50 sourceBody754_91

def sourceBody754_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_70 sourceBody754_92

def sourceBody754_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_60 sourceBody754_93

def sourceBody754_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_94

def sourceBody754_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_95

def sourceBody754_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_88 sourceBody754_96

def sourceBody754_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody754_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 22)) (some 740) ([10, 22]) (some (10, sourceBody754_20, 754, 23))

def sourceBody754_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_99 sourceBody754_3

def sourceBody754_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_100 sourceBody754_0

def sourceBody754_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_29 sourceBody754_101

def sourceBody754_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_98 sourceBody754_102

def sourceBody754_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_103

def sourceBody754_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_104

def sourceBody754_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_97 sourceBody754_105

def sourceBody754_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 24)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 25))

def sourceBody754_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_107 sourceBody754_3

def sourceBody754_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_108 sourceBody754_0

def sourceBody754_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_30 sourceBody754_109

def sourceBody754_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_19 sourceBody754_110

def sourceBody754_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_28 sourceBody754_111

def sourceBody754_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_112

def sourceBody754_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_113

def sourceBody754_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_106 sourceBody754_114

def sourceBody754_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody754_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 26)) (some 735) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 27))

def sourceBody754_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_117 sourceBody754_3

def sourceBody754_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_118 sourceBody754_0

def sourceBody754_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_50 sourceBody754_119

def sourceBody754_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_116 sourceBody754_120

def sourceBody754_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_98 sourceBody754_121

def sourceBody754_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_122

def sourceBody754_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_123

def sourceBody754_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_115 sourceBody754_124

def sourceBody754_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody754_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody754_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 28)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 29))

def sourceBody754_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_128 sourceBody754_3

def sourceBody754_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_129 sourceBody754_0

def sourceBody754_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_127 sourceBody754_130

def sourceBody754_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_61 sourceBody754_131

def sourceBody754_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_126 sourceBody754_132

def sourceBody754_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_133

def sourceBody754_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_134

def sourceBody754_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_125 sourceBody754_135

def sourceBody754_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody754_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 30)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 31))

def sourceBody754_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_138 sourceBody754_3

def sourceBody754_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_139 sourceBody754_0

def sourceBody754_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_137 sourceBody754_140

def sourceBody754_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_29 sourceBody754_141

def sourceBody754_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_28 sourceBody754_142

def sourceBody754_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_143

def sourceBody754_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_144

def sourceBody754_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_136 sourceBody754_145

def sourceBody754_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody754_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 32)) (some 734) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 33))

def sourceBody754_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_148 sourceBody754_3

def sourceBody754_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_149 sourceBody754_0

def sourceBody754_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_50 sourceBody754_150

def sourceBody754_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_147 sourceBody754_151

def sourceBody754_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_126 sourceBody754_152

def sourceBody754_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_153

def sourceBody754_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_154

def sourceBody754_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_146 sourceBody754_155

def sourceBody754_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 34)) (some 741) ([10, 22]) (some (10, sourceBody754_20, 754, 35))

def sourceBody754_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_157 sourceBody754_3

def sourceBody754_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_158 sourceBody754_0

def sourceBody754_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_147 sourceBody754_159

def sourceBody754_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_126 sourceBody754_160

def sourceBody754_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_161

def sourceBody754_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_162

def sourceBody754_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_156 sourceBody754_163

def sourceBody754_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody754_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 36)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 37))

def sourceBody754_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_166 sourceBody754_3

def sourceBody754_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_167 sourceBody754_0

def sourceBody754_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_165 sourceBody754_168

def sourceBody754_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_19 sourceBody754_169

def sourceBody754_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_28 sourceBody754_170

def sourceBody754_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_171

def sourceBody754_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_172

def sourceBody754_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_164 sourceBody754_173

def sourceBody754_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 38)) (some 734) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 39))

def sourceBody754_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_175 sourceBody754_3

def sourceBody754_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_176 sourceBody754_0

def sourceBody754_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_50 sourceBody754_177

def sourceBody754_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_147 sourceBody754_178

def sourceBody754_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_126 sourceBody754_179

def sourceBody754_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_180

def sourceBody754_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_181

def sourceBody754_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_174 sourceBody754_182

def sourceBody754_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody754_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 40)) (some 743) ([10, 22]) (some (10, sourceBody754_20, 754, 41))

def sourceBody754_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_185 sourceBody754_3

def sourceBody754_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_186 sourceBody754_0

def sourceBody754_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_147 sourceBody754_187

def sourceBody754_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_184 sourceBody754_188

def sourceBody754_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_189

def sourceBody754_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_190

def sourceBody754_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_183 sourceBody754_191

def sourceBody754_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody754_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody754_195 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 42)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 43))

def sourceBody754_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_195 sourceBody754_3

def sourceBody754_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_196 sourceBody754_0

def sourceBody754_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_194 sourceBody754_197

def sourceBody754_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_49 sourceBody754_198

def sourceBody754_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_193 sourceBody754_199

def sourceBody754_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_200

def sourceBody754_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_201

def sourceBody754_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_192 sourceBody754_202

def sourceBody754_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody754_205 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 44)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 45))

def sourceBody754_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_205 sourceBody754_3

def sourceBody754_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_206 sourceBody754_0

def sourceBody754_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_194 sourceBody754_207

def sourceBody754_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_70 sourceBody754_208

def sourceBody754_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_204 sourceBody754_209

def sourceBody754_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_210

def sourceBody754_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_211

def sourceBody754_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_203 sourceBody754_212

def sourceBody754_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody754_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody754_0, 754, 46)) (some 739) ([10, 22, 16]) (some (10, sourceBody754_20, 754, 47))

def sourceBody754_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_215 sourceBody754_3

def sourceBody754_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_216 sourceBody754_0

def sourceBody754_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_194 sourceBody754_217

def sourceBody754_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_116 sourceBody754_218

def sourceBody754_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_214 sourceBody754_219

def sourceBody754_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_220

def sourceBody754_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_221

def sourceBody754_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_213 sourceBody754_222

def sourceBody754_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody754_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody754_0, 754, 48)) (some 70) ([10]) (some (10, sourceBody754_20, 754, 49))

def sourceBody754_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_225 sourceBody754_3

def sourceBody754_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_226 sourceBody754_0

def sourceBody754_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_224 sourceBody754_227

def sourceBody754_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_228

def sourceBody754_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_229

def sourceBody754_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_223 sourceBody754_230

def sourceBody754_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody754_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody754_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_233 sourceBody754_0

def sourceBody754_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_232 sourceBody754_234

def sourceBody754_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_231 sourceBody754_235

def sourceBody754_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_17 sourceBody754_236

def sourceBody754_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_237

def sourceBody754_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_16 sourceBody754_238

def sourceBody754_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_239

def sourceBody754_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_15 sourceBody754_240

def sourceBody754_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_241

def sourceBody754_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_14 sourceBody754_242

def sourceBody754_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_243

def sourceBody754_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_13 sourceBody754_244

def sourceBody754_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_245

def sourceBody754_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_12 sourceBody754_246

def sourceBody754_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_247

def sourceBody754_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_11 sourceBody754_248

def sourceBody754_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_249

def sourceBody754_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_250

def sourceBody754_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_5 sourceBody754_251

def sourceBody754_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_252

def sourceBody754_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody754_0 sourceBody754_253

def source754 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (754, 3, sourceBody754_254)
end InitECandidate.Proofs.WordStages
