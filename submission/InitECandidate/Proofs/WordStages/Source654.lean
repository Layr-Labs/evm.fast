import InitECandidate.Proofs.WordStages.Source638
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody654_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody654_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def sourceBody654_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody654_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 14)

def sourceBody654_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody654_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody654_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 30, 50, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 2)) (some 646) ([46, 36, 56, 18]) (some (46, sourceBody654_5, 654, 3))

def sourceBody654_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody654_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_6 sourceBody654_7

def sourceBody654_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_8 sourceBody654_0

def sourceBody654_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_4 sourceBody654_9

def sourceBody654_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_3 sourceBody654_10

def sourceBody654_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_2 sourceBody654_11

def sourceBody654_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_1 sourceBody654_12

def sourceBody654_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody654_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody654_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 6)

def sourceBody654_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody654_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody654_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36, 56, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 4)) (some 646) ([38, 28, 48, 22]) (some (38, sourceBody654_18, 654, 5))

def sourceBody654_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_19 sourceBody654_7

def sourceBody654_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_20 sourceBody654_0

def sourceBody654_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_17 sourceBody654_21

def sourceBody654_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_16 sourceBody654_22

def sourceBody654_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_15 sourceBody654_23

def sourceBody654_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_14 sourceBody654_24

def sourceBody654_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def sourceBody654_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 36)

def sourceBody654_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 56)

def sourceBody654_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody654_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 2)

def sourceBody654_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody654_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def sourceBody654_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody654_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36, 56, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 6)) (some 645) ([38, 28, 48, 22, 44, 34, 54, 20]) (some (38, sourceBody654_18, 654, 7))

def sourceBody654_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_34 sourceBody654_7

def sourceBody654_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_35 sourceBody654_0

def sourceBody654_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_33 sourceBody654_36

def sourceBody654_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_32 sourceBody654_37

def sourceBody654_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_31 sourceBody654_38

def sourceBody654_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_30 sourceBody654_39

def sourceBody654_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_29 sourceBody654_40

def sourceBody654_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_28 sourceBody654_41

def sourceBody654_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_27 sourceBody654_42

def sourceBody654_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_26 sourceBody654_43

def sourceBody654_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 2)

def sourceBody654_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody654_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 6)

def sourceBody654_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody654_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody654_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 8)) (some 642) ([44, 34, 54, 20, 42, 32, 52, 26]) (some (44, sourceBody654_49, 654, 9))

def sourceBody654_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_50 sourceBody654_7

def sourceBody654_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_51 sourceBody654_0

def sourceBody654_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_48 sourceBody654_52

def sourceBody654_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_47 sourceBody654_53

def sourceBody654_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_46 sourceBody654_54

def sourceBody654_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_45 sourceBody654_55

def sourceBody654_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_33 sourceBody654_56

def sourceBody654_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_32 sourceBody654_57

def sourceBody654_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_31 sourceBody654_58

def sourceBody654_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_30 sourceBody654_59

def sourceBody654_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 38)

def sourceBody654_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody654_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def sourceBody654_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody654_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 10)) (some 642) ([44, 34, 54, 20, 42, 32, 52, 26]) (some (44, sourceBody654_49, 654, 11))

def sourceBody654_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_65 sourceBody654_7

def sourceBody654_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_66 sourceBody654_0

def sourceBody654_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_48 sourceBody654_67

def sourceBody654_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_47 sourceBody654_68

def sourceBody654_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_46 sourceBody654_69

def sourceBody654_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_45 sourceBody654_70

def sourceBody654_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_64 sourceBody654_71

def sourceBody654_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_63 sourceBody654_72

def sourceBody654_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_62 sourceBody654_73

def sourceBody654_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_61 sourceBody654_74

def sourceBody654_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 46)

def sourceBody654_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody654_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 56)

def sourceBody654_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody654_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 38)

def sourceBody654_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody654_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 48)

def sourceBody654_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody654_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36, 56, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 12)) (some 643) ([44, 34, 54, 20, 42, 32, 52, 26]) (some (44, sourceBody654_49, 654, 13))

def sourceBody654_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_84 sourceBody654_7

def sourceBody654_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_85 sourceBody654_0

def sourceBody654_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_83 sourceBody654_86

def sourceBody654_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_82 sourceBody654_87

def sourceBody654_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_81 sourceBody654_88

def sourceBody654_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_80 sourceBody654_89

def sourceBody654_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_79 sourceBody654_90

def sourceBody654_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_78 sourceBody654_91

def sourceBody654_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_77 sourceBody654_92

def sourceBody654_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_76 sourceBody654_93

def sourceBody654_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_75 sourceBody654_94

def sourceBody654_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 4309448131093880907#64)

def sourceBody654_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 7285987128567378166#64)

def sourceBody654_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 12964664127075681980#64)

def sourceBody654_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 6540974713487397863#64)

def sourceBody654_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 36, 56, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody654_0, 654, 14)) (some 642) ([44, 34, 54, 20, 42, 32, 52, 26]) (some (44, sourceBody654_49, 654, 15))

def sourceBody654_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_100 sourceBody654_7

def sourceBody654_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_101 sourceBody654_0

def sourceBody654_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_99 sourceBody654_102

def sourceBody654_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_98 sourceBody654_103

def sourceBody654_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_97 sourceBody654_104

def sourceBody654_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_96 sourceBody654_105

def sourceBody654_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_79 sourceBody654_106

def sourceBody654_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_78 sourceBody654_107

def sourceBody654_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_77 sourceBody654_108

def sourceBody654_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_76 sourceBody654_109

def sourceBody654_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_95 sourceBody654_110

def sourceBody654_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody654_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody654_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody654_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody654_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody654_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody654_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 56)

def sourceBody654_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody654_120 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 44, 34, 54, 20, 42, 32, 52, 26]) (none)

def sourceBody654_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_120 sourceBody654_0

def sourceBody654_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_119 sourceBody654_121

def sourceBody654_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_118 sourceBody654_122

def sourceBody654_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_117 sourceBody654_123

def sourceBody654_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_116 sourceBody654_124

def sourceBody654_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_115 sourceBody654_125

def sourceBody654_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_114 sourceBody654_126

def sourceBody654_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_113 sourceBody654_127

def sourceBody654_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_112 sourceBody654_128

def sourceBody654_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_111 sourceBody654_129

def sourceBody654_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_60 sourceBody654_130

def sourceBody654_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_131

def sourceBody654_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_132

def sourceBody654_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_133

def sourceBody654_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_134

def sourceBody654_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_135

def sourceBody654_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_136

def sourceBody654_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_137

def sourceBody654_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_138

def sourceBody654_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_44 sourceBody654_139

def sourceBody654_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_25 sourceBody654_140

def sourceBody654_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_141

def sourceBody654_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_142

def sourceBody654_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_143

def sourceBody654_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_144

def sourceBody654_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_145

def sourceBody654_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_146

def sourceBody654_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_147

def sourceBody654_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_148

def sourceBody654_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_13 sourceBody654_149

def sourceBody654_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_150

def sourceBody654_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_151

def sourceBody654_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_152

def sourceBody654_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_153

def sourceBody654_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_154

def sourceBody654_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_155

def sourceBody654_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_156

def sourceBody654_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody654_0 sourceBody654_157

def source654 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (654, 9, sourceBody654_158)
end InitECandidate.Proofs.WordStages
