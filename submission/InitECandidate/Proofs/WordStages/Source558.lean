import InitECandidate.Proofs.WordStages.Source542
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody558_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody558_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody558_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody558_0, 558, 2)) (some 475) ([]) (some (16, sourceBody558_1, 558, 3))

def sourceBody558_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody558_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_2 sourceBody558_3

def sourceBody558_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_4 sourceBody558_0

def sourceBody558_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody558_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody558_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 4)) (some 470) ([32]) (some (32, sourceBody558_7, 558, 5))

def sourceBody558_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_8 sourceBody558_3

def sourceBody558_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_9 sourceBody558_0

def sourceBody558_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_6 sourceBody558_10

def sourceBody558_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_11

def sourceBody558_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_12

def sourceBody558_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody558_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody558_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody558_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody558_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody558_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody558_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 6)) (some 462) ([4, 22, 14, 30]) (some (4, sourceBody558_19, 558, 7))

def sourceBody558_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_20 sourceBody558_3

def sourceBody558_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_21 sourceBody558_0

def sourceBody558_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_18 sourceBody558_22

def sourceBody558_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_17 sourceBody558_23

def sourceBody558_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_16 sourceBody558_24

def sourceBody558_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_15 sourceBody558_25

def sourceBody558_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody558_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 8)) (some 69) ([]) (some (22, sourceBody558_27, 558, 9))

def sourceBody558_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_28 sourceBody558_3

def sourceBody558_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_29 sourceBody558_0

def sourceBody558_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody558_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody558_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 10)) (some 68) ([14]) (some (14, sourceBody558_32, 558, 11))

def sourceBody558_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_33 sourceBody558_3

def sourceBody558_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_34 sourceBody558_0

def sourceBody558_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_31 sourceBody558_35

def sourceBody558_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody558_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody558_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody558_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody558_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody558_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody558_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 12)) (some 484) ([30, 8, 26, 18, 34]) (some (30, sourceBody558_42, 558, 13))

def sourceBody558_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_43 sourceBody558_3

def sourceBody558_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_44 sourceBody558_0

def sourceBody558_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_41 sourceBody558_45

def sourceBody558_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_40 sourceBody558_46

def sourceBody558_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_39 sourceBody558_47

def sourceBody558_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_38 sourceBody558_48

def sourceBody558_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_37 sourceBody558_49

def sourceBody558_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_50

def sourceBody558_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_51

def sourceBody558_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody558_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody558_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody558_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 30, 8, 26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 14)) (some 146) ([18, 34]) (some (18, sourceBody558_55, 558, 15))

def sourceBody558_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_56 sourceBody558_3

def sourceBody558_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_57 sourceBody558_0

def sourceBody558_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_54 sourceBody558_58

def sourceBody558_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_53 sourceBody558_59

def sourceBody558_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody558_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody558_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody558_0, 558, 16)) (some 70) ([34]) (some (34, sourceBody558_62, 558, 17))

def sourceBody558_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_63 sourceBody558_3

def sourceBody558_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_64 sourceBody558_0

def sourceBody558_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_61 sourceBody558_65

def sourceBody558_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_66

def sourceBody558_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_67

def sourceBody558_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 14)

def sourceBody558_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 30)

def sourceBody558_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody558_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody558_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody558_0, 558, 18)) (some 476) ([34, 2, 20, 12]) (some (34, sourceBody558_62, 558, 19))

def sourceBody558_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_73 sourceBody558_3

def sourceBody558_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_74 sourceBody558_0

def sourceBody558_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_72 sourceBody558_75

def sourceBody558_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_71 sourceBody558_76

def sourceBody558_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_70 sourceBody558_77

def sourceBody558_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_69 sourceBody558_78

def sourceBody558_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_79

def sourceBody558_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_80

def sourceBody558_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_68 sourceBody558_81

def sourceBody558_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody558_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody558_0, 558, 20)) (some 490) ([34]) (some (34, sourceBody558_62, 558, 21))

def sourceBody558_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_84 sourceBody558_3

def sourceBody558_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_85 sourceBody558_0

def sourceBody558_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_83 sourceBody558_86

def sourceBody558_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_87

def sourceBody558_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_88

def sourceBody558_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_82 sourceBody558_89

def sourceBody558_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody558_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody558_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_92 sourceBody558_0

def sourceBody558_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_91 sourceBody558_93

def sourceBody558_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_90 sourceBody558_94

def sourceBody558_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_60 sourceBody558_95

def sourceBody558_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_96

def sourceBody558_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_97

def sourceBody558_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_98

def sourceBody558_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_99

def sourceBody558_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_100

def sourceBody558_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_101

def sourceBody558_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_102

def sourceBody558_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_103

def sourceBody558_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_52 sourceBody558_104

def sourceBody558_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_36 sourceBody558_105

def sourceBody558_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_106

def sourceBody558_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_107

def sourceBody558_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_30 sourceBody558_108

def sourceBody558_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_109

def sourceBody558_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_110

def sourceBody558_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_26 sourceBody558_111

def sourceBody558_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_112

def sourceBody558_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_113

def sourceBody558_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_14 sourceBody558_114

def sourceBody558_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_115

def sourceBody558_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_13 sourceBody558_116

def sourceBody558_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_5 sourceBody558_117

def sourceBody558_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_118

def sourceBody558_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_119

def sourceBody558_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_120

def sourceBody558_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_121

def sourceBody558_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_122

def sourceBody558_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_123

def sourceBody558_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_124

def sourceBody558_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody558_0 sourceBody558_125

def source558 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (558, 1, sourceBody558_126)
end InitECandidate.Proofs.WordStages
