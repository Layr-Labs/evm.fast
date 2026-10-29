import InitECandidate.Proofs.WordStages.Source490
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody506_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody506_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody506_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 34, 6, 28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody506_0, 506, 2)) (some 475) ([]) (some (18, sourceBody506_1, 506, 3))

def sourceBody506_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody506_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_2 sourceBody506_3

def sourceBody506_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_4 sourceBody506_0

def sourceBody506_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody506_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 40, 4, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody506_0, 506, 4)) (some 475) ([]) (some (16, sourceBody506_6, 506, 5))

def sourceBody506_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_7 sourceBody506_3

def sourceBody506_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_8 sourceBody506_0

def sourceBody506_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody506_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def sourceBody506_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 4)

def sourceBody506_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody506_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody506_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody506_0, 506, 6)) (some 139) ([38, 10, 32, 22]) (some (38, sourceBody506_14, 506, 7))

def sourceBody506_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_15 sourceBody506_3

def sourceBody506_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_16 sourceBody506_0

def sourceBody506_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_13 sourceBody506_17

def sourceBody506_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_12 sourceBody506_18

def sourceBody506_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_11 sourceBody506_19

def sourceBody506_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_10 sourceBody506_20

def sourceBody506_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody506_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 50#64)

def sourceBody506_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 22 22 10 32))

def sourceBody506_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 10#64, Flapjack.WordLangExpHOL.var 22])

def sourceBody506_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody506_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody506_0, 506, 8)) (some 470) ([42]) (some (10, sourceBody506_26, 506, 9))

def sourceBody506_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_27 sourceBody506_3

def sourceBody506_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_28 sourceBody506_0

def sourceBody506_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_25 sourceBody506_29

def sourceBody506_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_24 sourceBody506_30

def sourceBody506_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_23 sourceBody506_31

def sourceBody506_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_22 sourceBody506_32

def sourceBody506_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_33

def sourceBody506_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_34

def sourceBody506_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody506_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 34)

def sourceBody506_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody506_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody506_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 18)

def sourceBody506_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 40)

def sourceBody506_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody506_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody506_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody506_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 10, 32, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody506_0, 506, 10)) (some 140) ([42, 2, 24, 14, 36, 8, 30, 20]) (some (42, sourceBody506_44, 506, 11))

def sourceBody506_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_45 sourceBody506_3

def sourceBody506_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_46 sourceBody506_0

def sourceBody506_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_43 sourceBody506_47

def sourceBody506_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_42 sourceBody506_48

def sourceBody506_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_41 sourceBody506_49

def sourceBody506_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_40 sourceBody506_50

def sourceBody506_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_39 sourceBody506_51

def sourceBody506_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_38 sourceBody506_52

def sourceBody506_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_37 sourceBody506_53

def sourceBody506_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_36 sourceBody506_54

def sourceBody506_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 38)

def sourceBody506_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody506_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 32)

def sourceBody506_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody506_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody506_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody506_0, 506, 12)) (some 476) ([2, 24, 14, 36]) (some (2, sourceBody506_60, 506, 13))

def sourceBody506_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_61 sourceBody506_3

def sourceBody506_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_62 sourceBody506_0

def sourceBody506_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_59 sourceBody506_63

def sourceBody506_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_58 sourceBody506_64

def sourceBody506_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_57 sourceBody506_65

def sourceBody506_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_56 sourceBody506_66

def sourceBody506_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_67

def sourceBody506_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_68

def sourceBody506_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody506_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody506_0, 506, 14)) (some 490) ([2]) (some (2, sourceBody506_60, 506, 15))

def sourceBody506_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_71 sourceBody506_3

def sourceBody506_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_72 sourceBody506_0

def sourceBody506_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_70 sourceBody506_73

def sourceBody506_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_74

def sourceBody506_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_75

def sourceBody506_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_69 sourceBody506_76

def sourceBody506_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody506_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody506_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_79 sourceBody506_0

def sourceBody506_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_78 sourceBody506_80

def sourceBody506_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_77 sourceBody506_81

def sourceBody506_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_55 sourceBody506_82

def sourceBody506_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_83

def sourceBody506_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_84

def sourceBody506_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_85

def sourceBody506_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_86

def sourceBody506_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_87

def sourceBody506_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_88

def sourceBody506_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_89

def sourceBody506_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_90

def sourceBody506_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_35 sourceBody506_91

def sourceBody506_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_21 sourceBody506_92

def sourceBody506_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_93

def sourceBody506_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_94

def sourceBody506_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_9 sourceBody506_95

def sourceBody506_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_96

def sourceBody506_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_97

def sourceBody506_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_98

def sourceBody506_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_99

def sourceBody506_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_100

def sourceBody506_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_101

def sourceBody506_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_102

def sourceBody506_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_103

def sourceBody506_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_5 sourceBody506_104

def sourceBody506_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_105

def sourceBody506_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_106

def sourceBody506_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_107

def sourceBody506_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_108

def sourceBody506_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_109

def sourceBody506_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_110

def sourceBody506_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_111

def sourceBody506_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody506_0 sourceBody506_112

def source506 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (506, 1, sourceBody506_113)
end InitECandidate.Proofs.WordStages
