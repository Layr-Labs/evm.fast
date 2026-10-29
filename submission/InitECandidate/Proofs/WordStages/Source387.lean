import InitECandidate.Proofs.WordStages.Source371
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody387_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody387_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 72#64)

def sourceBody387_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody387_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 2)) (some 68) ([8]) (some (8, sourceBody387_2, 387, 3))

def sourceBody387_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody387_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_3 sourceBody387_4

def sourceBody387_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_5 sourceBody387_0

def sourceBody387_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_1 sourceBody387_6

def sourceBody387_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody387_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody387_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody387_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody387_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_11 sourceBody387_0

def sourceBody387_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_10 sourceBody387_12

def sourceBody387_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_13 sourceBody387_0

def sourceBody387_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_9 sourceBody387_14

def sourceBody387_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_15

def sourceBody387_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_8 sourceBody387_16

def sourceBody387_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_17

def sourceBody387_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_7 sourceBody387_18

def sourceBody387_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_19

def sourceBody387_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_20

def sourceBody387_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody387_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 176#64]))

def sourceBody387_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody387_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody387_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_25 sourceBody387_0

def sourceBody387_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_24 sourceBody387_26

def sourceBody387_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_27 sourceBody387_0

def sourceBody387_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_23 sourceBody387_28

def sourceBody387_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_29

def sourceBody387_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_22 sourceBody387_30

def sourceBody387_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_31

def sourceBody387_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_21 sourceBody387_32

def sourceBody387_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody387_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody387_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 4)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 5))

def sourceBody387_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_36 sourceBody387_4

def sourceBody387_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_37 sourceBody387_0

def sourceBody387_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_35 sourceBody387_38

def sourceBody387_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_34 sourceBody387_39

def sourceBody387_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody387_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_41 sourceBody387_16

def sourceBody387_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_42

def sourceBody387_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 6)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 7))

def sourceBody387_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_44 sourceBody387_4

def sourceBody387_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_45 sourceBody387_0

def sourceBody387_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_35 sourceBody387_46

def sourceBody387_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_34 sourceBody387_47

def sourceBody387_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_43 sourceBody387_48

def sourceBody387_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody387_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_50 sourceBody387_16

def sourceBody387_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_51

def sourceBody387_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_49 sourceBody387_52

def sourceBody387_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 52#64)

def sourceBody387_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 8)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 9))

def sourceBody387_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_55 sourceBody387_4

def sourceBody387_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_56 sourceBody387_0

def sourceBody387_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_35 sourceBody387_57

def sourceBody387_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_54 sourceBody387_58

def sourceBody387_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_53 sourceBody387_59

def sourceBody387_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody387_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_61 sourceBody387_16

def sourceBody387_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_62

def sourceBody387_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_60 sourceBody387_63

def sourceBody387_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody387_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 10)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 11))

def sourceBody387_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_66 sourceBody387_4

def sourceBody387_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_67 sourceBody387_0

def sourceBody387_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_65 sourceBody387_68

def sourceBody387_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_34 sourceBody387_69

def sourceBody387_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_64 sourceBody387_70

def sourceBody387_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody387_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_72 sourceBody387_16

def sourceBody387_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_73

def sourceBody387_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_71 sourceBody387_74

def sourceBody387_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 12)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 13))

def sourceBody387_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_76 sourceBody387_4

def sourceBody387_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_77 sourceBody387_0

def sourceBody387_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_65 sourceBody387_78

def sourceBody387_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_54 sourceBody387_79

def sourceBody387_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_75 sourceBody387_80

def sourceBody387_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody387_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_82 sourceBody387_16

def sourceBody387_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_83

def sourceBody387_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_81 sourceBody387_84

def sourceBody387_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody387_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 14)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 15))

def sourceBody387_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_87 sourceBody387_4

def sourceBody387_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_88 sourceBody387_0

def sourceBody387_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_65 sourceBody387_89

def sourceBody387_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_86 sourceBody387_90

def sourceBody387_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_85 sourceBody387_91

def sourceBody387_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody387_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_93 sourceBody387_16

def sourceBody387_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_94

def sourceBody387_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_92 sourceBody387_95

def sourceBody387_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 16)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 17))

def sourceBody387_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_97 sourceBody387_4

def sourceBody387_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_98 sourceBody387_0

def sourceBody387_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_65 sourceBody387_99

def sourceBody387_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_34 sourceBody387_100

def sourceBody387_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_96 sourceBody387_101

def sourceBody387_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody387_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_103 sourceBody387_16

def sourceBody387_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_104

def sourceBody387_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_102 sourceBody387_105

def sourceBody387_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody387_0, 387, 18)) (some 182) ([8, 2]) (some (8, sourceBody387_2, 387, 19))

def sourceBody387_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_107 sourceBody387_4

def sourceBody387_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_108 sourceBody387_0

def sourceBody387_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_65 sourceBody387_109

def sourceBody387_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_54 sourceBody387_110

def sourceBody387_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_106 sourceBody387_111

def sourceBody387_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 184#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody387_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_113 sourceBody387_16

def sourceBody387_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_114

def sourceBody387_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_112 sourceBody387_115

def sourceBody387_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody387_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody387_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_118 sourceBody387_14

def sourceBody387_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_119

def sourceBody387_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_117 sourceBody387_120

def sourceBody387_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_121

def sourceBody387_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_116 sourceBody387_122

def sourceBody387_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody387_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody387_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_125 sourceBody387_0

def sourceBody387_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_124 sourceBody387_126

def sourceBody387_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_123 sourceBody387_127

def sourceBody387_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_40 sourceBody387_128

def sourceBody387_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_129

def sourceBody387_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_0 sourceBody387_130

def sourceBody387_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody387_33 sourceBody387_131

def source387 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (387, 1, sourceBody387_132)
end InitECandidate.Proofs.WordStages
