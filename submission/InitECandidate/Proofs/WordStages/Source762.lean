import InitECandidate.Proofs.WordStages.Source746
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody762_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody762_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody762_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody762_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody762_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 2)) (some 738) ([6, 10]) (some (6, sourceBody762_3, 762, 3))

def sourceBody762_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody762_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_4 sourceBody762_5

def sourceBody762_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_6 sourceBody762_0

def sourceBody762_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_2 sourceBody762_7

def sourceBody762_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_1 sourceBody762_8

def sourceBody762_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_9

def sourceBody762_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_10

def sourceBody762_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody762_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody762_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 4)) (some 738) ([6, 10]) (some (6, sourceBody762_3, 762, 5))

def sourceBody762_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_14 sourceBody762_5

def sourceBody762_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_15 sourceBody762_0

def sourceBody762_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_13 sourceBody762_16

def sourceBody762_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_12 sourceBody762_17

def sourceBody762_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_18

def sourceBody762_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_19

def sourceBody762_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_11 sourceBody762_20

def sourceBody762_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody762_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 960#64])

def sourceBody762_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 6)) (some 739) ([6, 10, 8]) (some (6, sourceBody762_3, 762, 7))

def sourceBody762_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_24 sourceBody762_5

def sourceBody762_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_25 sourceBody762_0

def sourceBody762_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_23 sourceBody762_26

def sourceBody762_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_22 sourceBody762_27

def sourceBody762_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_12 sourceBody762_28

def sourceBody762_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_29

def sourceBody762_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_30

def sourceBody762_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_21 sourceBody762_31

def sourceBody762_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody762_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody762_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 8)) (some 738) ([6, 10]) (some (6, sourceBody762_3, 762, 9))

def sourceBody762_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_35 sourceBody762_5

def sourceBody762_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_36 sourceBody762_0

def sourceBody762_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_34 sourceBody762_37

def sourceBody762_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_33 sourceBody762_38

def sourceBody762_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_39

def sourceBody762_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_40

def sourceBody762_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_32 sourceBody762_41

def sourceBody762_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody762_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1152#64])

def sourceBody762_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 10)) (some 739) ([6, 10, 8]) (some (6, sourceBody762_3, 762, 11))

def sourceBody762_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_45 sourceBody762_5

def sourceBody762_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_46 sourceBody762_0

def sourceBody762_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_44 sourceBody762_47

def sourceBody762_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_43 sourceBody762_48

def sourceBody762_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_33 sourceBody762_49

def sourceBody762_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_50

def sourceBody762_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_51

def sourceBody762_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_42 sourceBody762_52

def sourceBody762_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody762_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody762_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 12)) (some 738) ([6, 10]) (some (6, sourceBody762_3, 762, 13))

def sourceBody762_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_56 sourceBody762_5

def sourceBody762_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_57 sourceBody762_0

def sourceBody762_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_55 sourceBody762_58

def sourceBody762_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_54 sourceBody762_59

def sourceBody762_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_60

def sourceBody762_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_61

def sourceBody762_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_53 sourceBody762_62

def sourceBody762_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody762_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 864#64])

def sourceBody762_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 14)) (some 739) ([6, 10, 8]) (some (6, sourceBody762_3, 762, 15))

def sourceBody762_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_66 sourceBody762_5

def sourceBody762_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_67 sourceBody762_0

def sourceBody762_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_65 sourceBody762_68

def sourceBody762_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_64 sourceBody762_69

def sourceBody762_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_54 sourceBody762_70

def sourceBody762_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_71

def sourceBody762_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_72

def sourceBody762_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_63 sourceBody762_73

def sourceBody762_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody762_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody762_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 16)) (some 738) ([6, 10]) (some (6, sourceBody762_3, 762, 17))

def sourceBody762_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_77 sourceBody762_5

def sourceBody762_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_78 sourceBody762_0

def sourceBody762_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_76 sourceBody762_79

def sourceBody762_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_75 sourceBody762_80

def sourceBody762_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_81

def sourceBody762_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_82

def sourceBody762_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_74 sourceBody762_83

def sourceBody762_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody762_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1056#64])

def sourceBody762_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody762_0, 762, 18)) (some 739) ([6, 10, 8]) (some (6, sourceBody762_3, 762, 19))

def sourceBody762_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_87 sourceBody762_5

def sourceBody762_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_88 sourceBody762_0

def sourceBody762_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_86 sourceBody762_89

def sourceBody762_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_85 sourceBody762_90

def sourceBody762_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_75 sourceBody762_91

def sourceBody762_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_92

def sourceBody762_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_93

def sourceBody762_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_84 sourceBody762_94

def sourceBody762_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody762_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody762_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody762_0, 762, 20)) (some 738) ([6, 10]) (some (6, sourceBody762_3, 762, 21))

def sourceBody762_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_98 sourceBody762_5

def sourceBody762_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_99 sourceBody762_0

def sourceBody762_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_97 sourceBody762_100

def sourceBody762_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_96 sourceBody762_101

def sourceBody762_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_102

def sourceBody762_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_103

def sourceBody762_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_95 sourceBody762_104

def sourceBody762_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody762_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1248#64])

def sourceBody762_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody762_0, 762, 22)) (some 739) ([6, 10, 8]) (some (6, sourceBody762_3, 762, 23))

def sourceBody762_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_108 sourceBody762_5

def sourceBody762_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_109 sourceBody762_0

def sourceBody762_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_107 sourceBody762_110

def sourceBody762_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_106 sourceBody762_111

def sourceBody762_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_96 sourceBody762_112

def sourceBody762_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_113

def sourceBody762_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_0 sourceBody762_114

def sourceBody762_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_105 sourceBody762_115

def sourceBody762_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody762_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody762_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_118 sourceBody762_0

def sourceBody762_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_117 sourceBody762_119

def sourceBody762_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody762_116 sourceBody762_120

def source762 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (762, 3, sourceBody762_121)
end InitECandidate.Proofs.WordStages
