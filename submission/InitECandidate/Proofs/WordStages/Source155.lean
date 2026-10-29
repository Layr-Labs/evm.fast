import InitECandidate.Proofs.WordStages.Source139
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody155_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody155_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody155_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody155_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody155_0, 155, 2)) (some 68) ([8]) (some (8, sourceBody155_2, 155, 3))

def sourceBody155_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody155_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_3 sourceBody155_4

def sourceBody155_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_5 sourceBody155_0

def sourceBody155_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_1 sourceBody155_6

def sourceBody155_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody155_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody155_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody155_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody155_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_11 sourceBody155_0

def sourceBody155_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_10 sourceBody155_12

def sourceBody155_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_13 sourceBody155_0

def sourceBody155_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_9 sourceBody155_14

def sourceBody155_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_15

def sourceBody155_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_8 sourceBody155_16

def sourceBody155_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_17

def sourceBody155_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_7 sourceBody155_18

def sourceBody155_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_19

def sourceBody155_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_20

def sourceBody155_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 200#64)

def sourceBody155_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody155_0, 155, 4)) (some 68) ([8]) (some (8, sourceBody155_2, 155, 5))

def sourceBody155_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_23 sourceBody155_4

def sourceBody155_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_24 sourceBody155_0

def sourceBody155_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_22 sourceBody155_25

def sourceBody155_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody155_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_27 sourceBody155_16

def sourceBody155_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_28

def sourceBody155_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_26 sourceBody155_29

def sourceBody155_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_30

def sourceBody155_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_31

def sourceBody155_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_21 sourceBody155_32

def sourceBody155_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 136#64)

def sourceBody155_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody155_0, 155, 6)) (some 68) ([8]) (some (8, sourceBody155_2, 155, 7))

def sourceBody155_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_35 sourceBody155_4

def sourceBody155_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_36 sourceBody155_0

def sourceBody155_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_34 sourceBody155_37

def sourceBody155_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody155_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_39 sourceBody155_16

def sourceBody155_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_40

def sourceBody155_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_38 sourceBody155_41

def sourceBody155_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_42

def sourceBody155_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_43

def sourceBody155_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_33 sourceBody155_44

def sourceBody155_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody155_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody155_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody155_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody155_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_49 sourceBody155_0

def sourceBody155_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_48 sourceBody155_50

def sourceBody155_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_51 sourceBody155_0

def sourceBody155_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_47 sourceBody155_52

def sourceBody155_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_53

def sourceBody155_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_46 sourceBody155_54

def sourceBody155_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_55

def sourceBody155_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_45 sourceBody155_56

def sourceBody155_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody155_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32898#64)

def sourceBody155_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_59 sourceBody155_52

def sourceBody155_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_60

def sourceBody155_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_58 sourceBody155_61

def sourceBody155_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_62

def sourceBody155_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_57 sourceBody155_63

def sourceBody155_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody155_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854808714#64)

def sourceBody155_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_66 sourceBody155_52

def sourceBody155_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_67

def sourceBody155_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_65 sourceBody155_68

def sourceBody155_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_69

def sourceBody155_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_64 sourceBody155_70

def sourceBody155_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody155_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372039002292224#64)

def sourceBody155_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_73 sourceBody155_52

def sourceBody155_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_74

def sourceBody155_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_72 sourceBody155_75

def sourceBody155_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_76

def sourceBody155_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_71 sourceBody155_77

def sourceBody155_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody155_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32907#64)

def sourceBody155_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_80 sourceBody155_52

def sourceBody155_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_81

def sourceBody155_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_79 sourceBody155_82

def sourceBody155_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_83

def sourceBody155_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_78 sourceBody155_84

def sourceBody155_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody155_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2147483649#64)

def sourceBody155_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_87 sourceBody155_52

def sourceBody155_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_88

def sourceBody155_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_86 sourceBody155_89

def sourceBody155_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_90

def sourceBody155_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_85 sourceBody155_91

def sourceBody155_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody155_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372039002292353#64)

def sourceBody155_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_94 sourceBody155_52

def sourceBody155_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_95

def sourceBody155_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_93 sourceBody155_96

def sourceBody155_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_97

def sourceBody155_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_92 sourceBody155_98

def sourceBody155_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody155_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854808585#64)

def sourceBody155_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_101 sourceBody155_52

def sourceBody155_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_102

def sourceBody155_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_100 sourceBody155_103

def sourceBody155_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_104

def sourceBody155_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_99 sourceBody155_105

def sourceBody155_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody155_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 138#64)

def sourceBody155_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_108 sourceBody155_52

def sourceBody155_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_109

def sourceBody155_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_107 sourceBody155_110

def sourceBody155_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_111

def sourceBody155_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_106 sourceBody155_112

def sourceBody155_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody155_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_34 sourceBody155_52

def sourceBody155_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_115

def sourceBody155_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_114 sourceBody155_116

def sourceBody155_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_117

def sourceBody155_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_113 sourceBody155_118

def sourceBody155_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody155_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2147516425#64)

def sourceBody155_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_121 sourceBody155_52

def sourceBody155_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_122

def sourceBody155_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_120 sourceBody155_123

def sourceBody155_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_124

def sourceBody155_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_119 sourceBody155_125

def sourceBody155_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def sourceBody155_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2147483658#64)

def sourceBody155_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_128 sourceBody155_52

def sourceBody155_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_129

def sourceBody155_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_127 sourceBody155_130

def sourceBody155_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_131

def sourceBody155_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_126 sourceBody155_132

def sourceBody155_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody155_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2147516555#64)

def sourceBody155_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_135 sourceBody155_52

def sourceBody155_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_136

def sourceBody155_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_134 sourceBody155_137

def sourceBody155_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_138

def sourceBody155_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_133 sourceBody155_139

def sourceBody155_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody155_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854775947#64)

def sourceBody155_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_142 sourceBody155_52

def sourceBody155_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_143

def sourceBody155_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_141 sourceBody155_144

def sourceBody155_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_145

def sourceBody155_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_140 sourceBody155_146

def sourceBody155_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def sourceBody155_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854808713#64)

def sourceBody155_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_149 sourceBody155_52

def sourceBody155_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_150

def sourceBody155_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_148 sourceBody155_151

def sourceBody155_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_152

def sourceBody155_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_147 sourceBody155_153

def sourceBody155_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody155_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854808579#64)

def sourceBody155_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_156 sourceBody155_52

def sourceBody155_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_157

def sourceBody155_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_155 sourceBody155_158

def sourceBody155_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_159

def sourceBody155_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_154 sourceBody155_160

def sourceBody155_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody155_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854808578#64)

def sourceBody155_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_163 sourceBody155_52

def sourceBody155_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_164

def sourceBody155_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_162 sourceBody155_165

def sourceBody155_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_166

def sourceBody155_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_161 sourceBody155_167

def sourceBody155_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 136#64])

def sourceBody155_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854775936#64)

def sourceBody155_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_170 sourceBody155_52

def sourceBody155_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_171

def sourceBody155_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_169 sourceBody155_172

def sourceBody155_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_173

def sourceBody155_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_168 sourceBody155_174

def sourceBody155_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody155_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32778#64)

def sourceBody155_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_177 sourceBody155_52

def sourceBody155_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_178

def sourceBody155_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_176 sourceBody155_179

def sourceBody155_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_180

def sourceBody155_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_175 sourceBody155_181

def sourceBody155_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody155_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372039002259466#64)

def sourceBody155_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_184 sourceBody155_52

def sourceBody155_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_185

def sourceBody155_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_183 sourceBody155_186

def sourceBody155_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_187

def sourceBody155_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_182 sourceBody155_188

def sourceBody155_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def sourceBody155_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_190 sourceBody155_96

def sourceBody155_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_191

def sourceBody155_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_189 sourceBody155_192

def sourceBody155_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 168#64])

def sourceBody155_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372036854808704#64)

def sourceBody155_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_195 sourceBody155_52

def sourceBody155_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_196

def sourceBody155_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_194 sourceBody155_197

def sourceBody155_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_198

def sourceBody155_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_193 sourceBody155_199

def sourceBody155_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 176#64])

def sourceBody155_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_201 sourceBody155_89

def sourceBody155_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_202

def sourceBody155_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_200 sourceBody155_203

def sourceBody155_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody155_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9223372039002292232#64)

def sourceBody155_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_206 sourceBody155_52

def sourceBody155_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_207

def sourceBody155_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_205 sourceBody155_208

def sourceBody155_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_0 sourceBody155_209

def sourceBody155_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_204 sourceBody155_210

def sourceBody155_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody155_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody155_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_213 sourceBody155_0

def sourceBody155_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_212 sourceBody155_214

def sourceBody155_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody155_211 sourceBody155_215

def source155 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (155, 1, sourceBody155_216)
end InitECandidate.Proofs.WordStages
