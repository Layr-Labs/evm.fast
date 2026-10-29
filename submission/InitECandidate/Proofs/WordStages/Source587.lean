import InitECandidate.Proofs.WordStages.Source571
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody587_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody587_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody587_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody587_0, 587, 2)) (some 475) ([]) (some (16, sourceBody587_1, 587, 3))

def sourceBody587_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody587_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_2 sourceBody587_3

def sourceBody587_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_4 sourceBody587_0

def sourceBody587_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody587_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody587_0, 587, 4)) (some 475) ([]) (some (14, sourceBody587_6, 587, 5))

def sourceBody587_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_7 sourceBody587_3

def sourceBody587_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_8 sourceBody587_0

def sourceBody587_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody587_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody587_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody587_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody587_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody587_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody587_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody587_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody587_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody587_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody587_0, 587, 6)) (some 480) ([8, 26, 18, 36, 2, 20, 12, 30]) (some (8, sourceBody587_18, 587, 7))

def sourceBody587_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_19 sourceBody587_3

def sourceBody587_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_20 sourceBody587_0

def sourceBody587_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_17 sourceBody587_21

def sourceBody587_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_16 sourceBody587_22

def sourceBody587_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_15 sourceBody587_23

def sourceBody587_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_14 sourceBody587_24

def sourceBody587_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_13 sourceBody587_25

def sourceBody587_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_12 sourceBody587_26

def sourceBody587_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_11 sourceBody587_27

def sourceBody587_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_10 sourceBody587_28

def sourceBody587_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody587_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody587_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody587_0, 587, 8)) (some 470) ([26]) (some (26, sourceBody587_31, 587, 9))

def sourceBody587_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_32 sourceBody587_3

def sourceBody587_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_33 sourceBody587_0

def sourceBody587_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_30 sourceBody587_34

def sourceBody587_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_35

def sourceBody587_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_36

def sourceBody587_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody587_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody587_0, 587, 10)) (some 482) ([26]) (some (26, sourceBody587_31, 587, 11))

def sourceBody587_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_39 sourceBody587_3

def sourceBody587_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_40 sourceBody587_0

def sourceBody587_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_38 sourceBody587_41

def sourceBody587_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_42

def sourceBody587_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_43

def sourceBody587_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_37 sourceBody587_44

def sourceBody587_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody587_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody587_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody587_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 22)

def sourceBody587_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody587_0, 587, 12)) (some 462) ([26, 18, 36, 2]) (some (26, sourceBody587_31, 587, 13))

def sourceBody587_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_50 sourceBody587_3

def sourceBody587_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_51 sourceBody587_0

def sourceBody587_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_49 sourceBody587_52

def sourceBody587_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_48 sourceBody587_53

def sourceBody587_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_47 sourceBody587_54

def sourceBody587_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_46 sourceBody587_55

def sourceBody587_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody587_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody587_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody587_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody587_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody587_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody587_0, 587, 14)) (some 462) ([18, 36, 2, 20]) (some (18, sourceBody587_61, 587, 15))

def sourceBody587_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_62 sourceBody587_3

def sourceBody587_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_63 sourceBody587_0

def sourceBody587_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_60 sourceBody587_64

def sourceBody587_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_59 sourceBody587_65

def sourceBody587_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_58 sourceBody587_66

def sourceBody587_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_57 sourceBody587_67

def sourceBody587_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody587_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 26])

def sourceBody587_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody587_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 2

def sourceBody587_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_72 sourceBody587_0

def sourceBody587_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_71 sourceBody587_73

def sourceBody587_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_74 sourceBody587_0

def sourceBody587_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_70 sourceBody587_75

def sourceBody587_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_76

def sourceBody587_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_69 sourceBody587_77

def sourceBody587_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_78

def sourceBody587_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody587_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody587_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_81 sourceBody587_75

def sourceBody587_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_82

def sourceBody587_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_80 sourceBody587_83

def sourceBody587_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_84

def sourceBody587_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_79 sourceBody587_85

def sourceBody587_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody587_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 18)

def sourceBody587_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_88 sourceBody587_0

def sourceBody587_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_89 sourceBody587_0

def sourceBody587_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_87 sourceBody587_90

def sourceBody587_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_91

def sourceBody587_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody587_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_93 sourceBody587_61

def sourceBody587_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_92 sourceBody587_94

def sourceBody587_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_86 sourceBody587_95

def sourceBody587_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody587_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody587_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_98 sourceBody587_0

def sourceBody587_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_97 sourceBody587_99

def sourceBody587_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_96 sourceBody587_100

def sourceBody587_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_68 sourceBody587_101

def sourceBody587_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_102

def sourceBody587_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_103

def sourceBody587_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_56 sourceBody587_104

def sourceBody587_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_105

def sourceBody587_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_106

def sourceBody587_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_45 sourceBody587_107

def sourceBody587_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_29 sourceBody587_108

def sourceBody587_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_109

def sourceBody587_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_110

def sourceBody587_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_111

def sourceBody587_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_112

def sourceBody587_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_9 sourceBody587_113

def sourceBody587_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_114

def sourceBody587_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_115

def sourceBody587_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_116

def sourceBody587_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_117

def sourceBody587_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_118

def sourceBody587_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_119

def sourceBody587_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_120

def sourceBody587_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_121

def sourceBody587_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_5 sourceBody587_122

def sourceBody587_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_123

def sourceBody587_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_124

def sourceBody587_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_125

def sourceBody587_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_126

def sourceBody587_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_127

def sourceBody587_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_128

def sourceBody587_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_129

def sourceBody587_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody587_0 sourceBody587_130

def source587 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (587, 1, sourceBody587_131)
end InitECandidate.Proofs.WordStages
