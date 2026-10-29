import InitECandidate.Proofs.WordStages.Source776
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody792_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody792_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody792_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 2)) (some 69) ([]) (some (30, sourceBody792_1, 792, 3))

def sourceBody792_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody792_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_2 sourceBody792_3

def sourceBody792_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_4 sourceBody792_0

def sourceBody792_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody792_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody792_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 4)) (some 68) ([40]) (some (40, sourceBody792_7, 792, 5))

def sourceBody792_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_8 sourceBody792_3

def sourceBody792_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_9 sourceBody792_0

def sourceBody792_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_6 sourceBody792_10

def sourceBody792_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody792_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody792_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody792_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 6)) (some 78) ([36, 46]) (some (36, sourceBody792_14, 792, 7))

def sourceBody792_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_15 sourceBody792_3

def sourceBody792_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_16 sourceBody792_0

def sourceBody792_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_13 sourceBody792_17

def sourceBody792_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_12 sourceBody792_18

def sourceBody792_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_19

def sourceBody792_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_20

def sourceBody792_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody792_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 8)) (some 729) ([36, 46]) (some (36, sourceBody792_14, 792, 9))

def sourceBody792_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_23 sourceBody792_3

def sourceBody792_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_24 sourceBody792_0

def sourceBody792_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_22 sourceBody792_25

def sourceBody792_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_12 sourceBody792_26

def sourceBody792_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_27

def sourceBody792_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_28

def sourceBody792_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_21 sourceBody792_29

def sourceBody792_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody792_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody792_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody792_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 8)

def sourceBody792_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody792_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 12)

def sourceBody792_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody792_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody792_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 10)) (some 742) ([36, 46, 34, 44, 38, 48, 32, 42]) (some (36, sourceBody792_14, 792, 11))

def sourceBody792_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_39 sourceBody792_3

def sourceBody792_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_40 sourceBody792_0

def sourceBody792_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_38 sourceBody792_41

def sourceBody792_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_37 sourceBody792_42

def sourceBody792_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_36 sourceBody792_43

def sourceBody792_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_35 sourceBody792_44

def sourceBody792_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_34 sourceBody792_45

def sourceBody792_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_33 sourceBody792_46

def sourceBody792_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_32 sourceBody792_47

def sourceBody792_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_31 sourceBody792_48

def sourceBody792_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_49

def sourceBody792_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_50

def sourceBody792_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_30 sourceBody792_51

def sourceBody792_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody792_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 4)

def sourceBody792_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody792_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 20)

def sourceBody792_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody792_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def sourceBody792_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody792_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 28)

def sourceBody792_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 12)) (some 742) ([36, 46, 34, 44, 38, 48, 32, 42]) (some (36, sourceBody792_14, 792, 13))

def sourceBody792_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_61 sourceBody792_3

def sourceBody792_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_62 sourceBody792_0

def sourceBody792_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_60 sourceBody792_63

def sourceBody792_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_59 sourceBody792_64

def sourceBody792_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_58 sourceBody792_65

def sourceBody792_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_57 sourceBody792_66

def sourceBody792_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_56 sourceBody792_67

def sourceBody792_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_55 sourceBody792_68

def sourceBody792_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_54 sourceBody792_69

def sourceBody792_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_53 sourceBody792_70

def sourceBody792_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_71

def sourceBody792_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_72

def sourceBody792_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_52 sourceBody792_73

def sourceBody792_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody792_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody792_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody792_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody792_0, 792, 14)) (some 758) ([36, 46, 34]) (some (36, sourceBody792_14, 792, 15))

def sourceBody792_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_78 sourceBody792_3

def sourceBody792_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_79 sourceBody792_0

def sourceBody792_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_77 sourceBody792_80

def sourceBody792_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_76 sourceBody792_81

def sourceBody792_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_75 sourceBody792_82

def sourceBody792_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_83

def sourceBody792_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_84

def sourceBody792_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_74 sourceBody792_85

def sourceBody792_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 50)

def sourceBody792_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody792_0, 792, 16)) (some 70) ([36]) (some (36, sourceBody792_14, 792, 17))

def sourceBody792_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_88 sourceBody792_3

def sourceBody792_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_89 sourceBody792_0

def sourceBody792_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_87 sourceBody792_90

def sourceBody792_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_91

def sourceBody792_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_92

def sourceBody792_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_86 sourceBody792_93

def sourceBody792_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody792_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40]

def sourceBody792_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_96 sourceBody792_0

def sourceBody792_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_95 sourceBody792_97

def sourceBody792_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_94 sourceBody792_98

def sourceBody792_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_11 sourceBody792_99

def sourceBody792_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_100

def sourceBody792_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_101

def sourceBody792_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_5 sourceBody792_102

def sourceBody792_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_103

def sourceBody792_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody792_0 sourceBody792_104

def source792 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (792, 15, sourceBody792_105)
end InitECandidate.Proofs.WordStages
