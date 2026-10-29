import InitECandidate.Proofs.WordStages.Source570
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody586_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody586_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody586_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody586_0, 586, 2)) (some 475) ([]) (some (16, sourceBody586_1, 586, 3))

def sourceBody586_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody586_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_2 sourceBody586_3

def sourceBody586_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_4 sourceBody586_0

def sourceBody586_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody586_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody586_0, 586, 4)) (some 475) ([]) (some (14, sourceBody586_6, 586, 5))

def sourceBody586_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_7 sourceBody586_3

def sourceBody586_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_8 sourceBody586_0

def sourceBody586_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody586_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody586_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody586_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody586_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody586_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody586_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody586_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody586_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody586_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody586_0, 586, 6)) (some 480) ([8, 26, 18, 36, 2, 20, 12, 30]) (some (8, sourceBody586_18, 586, 7))

def sourceBody586_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_19 sourceBody586_3

def sourceBody586_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_20 sourceBody586_0

def sourceBody586_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_17 sourceBody586_21

def sourceBody586_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_16 sourceBody586_22

def sourceBody586_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_15 sourceBody586_23

def sourceBody586_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_14 sourceBody586_24

def sourceBody586_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_13 sourceBody586_25

def sourceBody586_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_12 sourceBody586_26

def sourceBody586_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_11 sourceBody586_27

def sourceBody586_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_10 sourceBody586_28

def sourceBody586_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody586_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody586_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody586_0, 586, 8)) (some 470) ([26]) (some (26, sourceBody586_31, 586, 9))

def sourceBody586_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_32 sourceBody586_3

def sourceBody586_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_33 sourceBody586_0

def sourceBody586_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_30 sourceBody586_34

def sourceBody586_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_35

def sourceBody586_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_36

def sourceBody586_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody586_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody586_0, 586, 10)) (some 482) ([26]) (some (26, sourceBody586_31, 586, 11))

def sourceBody586_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_39 sourceBody586_3

def sourceBody586_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_40 sourceBody586_0

def sourceBody586_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_38 sourceBody586_41

def sourceBody586_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_42

def sourceBody586_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_43

def sourceBody586_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_37 sourceBody586_44

def sourceBody586_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody586_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody586_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody586_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 22)

def sourceBody586_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody586_0, 586, 12)) (some 462) ([26, 18, 36, 2]) (some (26, sourceBody586_31, 586, 13))

def sourceBody586_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_50 sourceBody586_3

def sourceBody586_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_51 sourceBody586_0

def sourceBody586_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_49 sourceBody586_52

def sourceBody586_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_48 sourceBody586_53

def sourceBody586_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_47 sourceBody586_54

def sourceBody586_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_46 sourceBody586_55

def sourceBody586_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody586_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody586_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody586_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody586_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody586_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody586_0, 586, 14)) (some 462) ([18, 36, 2, 20]) (some (18, sourceBody586_61, 586, 15))

def sourceBody586_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_62 sourceBody586_3

def sourceBody586_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_63 sourceBody586_0

def sourceBody586_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_60 sourceBody586_64

def sourceBody586_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_59 sourceBody586_65

def sourceBody586_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_58 sourceBody586_66

def sourceBody586_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_57 sourceBody586_67

def sourceBody586_69 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody586_70 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody586_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody586_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 2

def sourceBody586_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_72 sourceBody586_0

def sourceBody586_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_71 sourceBody586_73

def sourceBody586_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_74 sourceBody586_0

def sourceBody586_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_70 sourceBody586_75

def sourceBody586_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_76

def sourceBody586_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_69 sourceBody586_77

def sourceBody586_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_78

def sourceBody586_80 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody586_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody586_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_81 sourceBody586_75

def sourceBody586_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_82

def sourceBody586_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_80 sourceBody586_83

def sourceBody586_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_84

def sourceBody586_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_79 sourceBody586_85

def sourceBody586_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody586_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody586_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_88 sourceBody586_75

def sourceBody586_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_89

def sourceBody586_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_87 sourceBody586_90

def sourceBody586_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_91

def sourceBody586_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_86 sourceBody586_92

def sourceBody586_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody586_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody586_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_95 sourceBody586_0

def sourceBody586_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_94 sourceBody586_96

def sourceBody586_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_93 sourceBody586_97

def sourceBody586_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_68 sourceBody586_98

def sourceBody586_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_99

def sourceBody586_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_100

def sourceBody586_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_56 sourceBody586_101

def sourceBody586_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_102

def sourceBody586_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_103

def sourceBody586_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_45 sourceBody586_104

def sourceBody586_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_29 sourceBody586_105

def sourceBody586_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_106

def sourceBody586_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_107

def sourceBody586_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_108

def sourceBody586_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_109

def sourceBody586_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_9 sourceBody586_110

def sourceBody586_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_111

def sourceBody586_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_112

def sourceBody586_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_113

def sourceBody586_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_114

def sourceBody586_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_115

def sourceBody586_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_116

def sourceBody586_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_117

def sourceBody586_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_118

def sourceBody586_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_5 sourceBody586_119

def sourceBody586_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_120

def sourceBody586_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_121

def sourceBody586_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_122

def sourceBody586_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_123

def sourceBody586_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_124

def sourceBody586_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_125

def sourceBody586_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_126

def sourceBody586_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody586_0 sourceBody586_127

def source586 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (586, 1, sourceBody586_128)
end InitECandidate.Proofs.WordStages
