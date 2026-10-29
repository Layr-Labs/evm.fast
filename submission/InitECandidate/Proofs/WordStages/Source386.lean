import InitECandidate.Proofs.WordStages.Source370
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody386_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody386_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody386_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody386_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody386_0, 386, 2)) (some 68) ([16]) (some (16, sourceBody386_2, 386, 3))

def sourceBody386_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody386_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_3 sourceBody386_4

def sourceBody386_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_5 sourceBody386_0

def sourceBody386_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_1 sourceBody386_6

def sourceBody386_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 168#64])

def sourceBody386_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody386_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody386_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 18

def sourceBody386_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_11 sourceBody386_0

def sourceBody386_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_10 sourceBody386_12

def sourceBody386_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_13 sourceBody386_0

def sourceBody386_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_9 sourceBody386_14

def sourceBody386_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_15

def sourceBody386_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_8 sourceBody386_16

def sourceBody386_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_17

def sourceBody386_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_7 sourceBody386_18

def sourceBody386_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_19

def sourceBody386_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_20

def sourceBody386_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 168#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody386_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody386_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody386_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 12

def sourceBody386_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_25 sourceBody386_0

def sourceBody386_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_24 sourceBody386_26

def sourceBody386_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_27 sourceBody386_0

def sourceBody386_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_23 sourceBody386_28

def sourceBody386_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_29

def sourceBody386_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_22 sourceBody386_30

def sourceBody386_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_31

def sourceBody386_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_21 sourceBody386_32

def sourceBody386_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 168#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody386_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody386_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_35 sourceBody386_28

def sourceBody386_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_36

def sourceBody386_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_34 sourceBody386_37

def sourceBody386_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_38

def sourceBody386_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_33 sourceBody386_39

def sourceBody386_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 168#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody386_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody386_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_42 sourceBody386_28

def sourceBody386_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_43

def sourceBody386_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_41 sourceBody386_44

def sourceBody386_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_45

def sourceBody386_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_40 sourceBody386_46

def sourceBody386_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody386_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 4)) (some 305) ([16, 12]) (some (16, sourceBody386_2, 386, 5))

def sourceBody386_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_49 sourceBody386_4

def sourceBody386_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_50 sourceBody386_0

def sourceBody386_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_48 sourceBody386_51

def sourceBody386_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_23 sourceBody386_52

def sourceBody386_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 168#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody386_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_54 sourceBody386_16

def sourceBody386_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_55

def sourceBody386_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody386_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody386_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody386_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 6)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 7))

def sourceBody386_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_60 sourceBody386_4

def sourceBody386_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_61 sourceBody386_0

def sourceBody386_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_58 sourceBody386_62

def sourceBody386_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_57 sourceBody386_63

def sourceBody386_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 168#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody386_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody386_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody386_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 8

def sourceBody386_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_68 sourceBody386_0

def sourceBody386_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_67 sourceBody386_69

def sourceBody386_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_70 sourceBody386_0

def sourceBody386_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_66 sourceBody386_71

def sourceBody386_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_72

def sourceBody386_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_65 sourceBody386_73

def sourceBody386_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_74

def sourceBody386_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody386_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody386_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 8)) (some 68) ([18]) (some (18, sourceBody386_77, 386, 9))

def sourceBody386_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_78 sourceBody386_4

def sourceBody386_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_79 sourceBody386_0

def sourceBody386_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_76 sourceBody386_80

def sourceBody386_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 176#64])

def sourceBody386_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody386_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody386_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 14

def sourceBody386_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_85 sourceBody386_0

def sourceBody386_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_84 sourceBody386_86

def sourceBody386_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_87 sourceBody386_0

def sourceBody386_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_83 sourceBody386_88

def sourceBody386_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_89

def sourceBody386_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_82 sourceBody386_90

def sourceBody386_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_91

def sourceBody386_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_81 sourceBody386_92

def sourceBody386_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_93

def sourceBody386_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_94

def sourceBody386_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_75 sourceBody386_95

def sourceBody386_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody386_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody386_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_98 sourceBody386_71

def sourceBody386_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_99

def sourceBody386_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_97 sourceBody386_100

def sourceBody386_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_101

def sourceBody386_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_96 sourceBody386_102

def sourceBody386_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody386_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody386_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 10)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 11))

def sourceBody386_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_106 sourceBody386_4

def sourceBody386_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_107 sourceBody386_0

def sourceBody386_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_105 sourceBody386_108

def sourceBody386_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_104 sourceBody386_109

def sourceBody386_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_103 sourceBody386_110

def sourceBody386_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody386_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_112 sourceBody386_73

def sourceBody386_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_113

def sourceBody386_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_111 sourceBody386_114

def sourceBody386_116 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 12)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 13))

def sourceBody386_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_116 sourceBody386_4

def sourceBody386_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_117 sourceBody386_0

def sourceBody386_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_105 sourceBody386_118

def sourceBody386_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_104 sourceBody386_119

def sourceBody386_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_115 sourceBody386_120

def sourceBody386_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody386_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_122 sourceBody386_73

def sourceBody386_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_123

def sourceBody386_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_121 sourceBody386_124

def sourceBody386_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 52#64)

def sourceBody386_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 14)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 15))

def sourceBody386_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_127 sourceBody386_4

def sourceBody386_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_128 sourceBody386_0

def sourceBody386_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_105 sourceBody386_129

def sourceBody386_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_126 sourceBody386_130

def sourceBody386_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_125 sourceBody386_131

def sourceBody386_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody386_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_133 sourceBody386_73

def sourceBody386_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_134

def sourceBody386_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_132 sourceBody386_135

def sourceBody386_137 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 16)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 17))

def sourceBody386_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_137 sourceBody386_4

def sourceBody386_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_138 sourceBody386_0

def sourceBody386_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_58 sourceBody386_139

def sourceBody386_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_104 sourceBody386_140

def sourceBody386_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_136 sourceBody386_141

def sourceBody386_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody386_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_143 sourceBody386_73

def sourceBody386_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_144

def sourceBody386_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_142 sourceBody386_145

def sourceBody386_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 18)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 19))

def sourceBody386_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_147 sourceBody386_4

def sourceBody386_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_148 sourceBody386_0

def sourceBody386_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_58 sourceBody386_149

def sourceBody386_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_126 sourceBody386_150

def sourceBody386_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_146 sourceBody386_151

def sourceBody386_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody386_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_153 sourceBody386_73

def sourceBody386_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_154

def sourceBody386_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_152 sourceBody386_155

def sourceBody386_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 20)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 21))

def sourceBody386_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_157 sourceBody386_4

def sourceBody386_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_158 sourceBody386_0

def sourceBody386_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_58 sourceBody386_159

def sourceBody386_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_57 sourceBody386_160

def sourceBody386_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_156 sourceBody386_161

def sourceBody386_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody386_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_163 sourceBody386_73

def sourceBody386_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_164

def sourceBody386_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_162 sourceBody386_165

def sourceBody386_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody386_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody386_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_168 sourceBody386_71

def sourceBody386_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_169

def sourceBody386_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_167 sourceBody386_170

def sourceBody386_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_171

def sourceBody386_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_166 sourceBody386_172

def sourceBody386_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody386_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_174 sourceBody386_170

def sourceBody386_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_175

def sourceBody386_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_173 sourceBody386_176

def sourceBody386_178 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 22)) (some 182) ([12, 18]) (some (12, sourceBody386_59, 386, 23))

def sourceBody386_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_178 sourceBody386_4

def sourceBody386_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_179 sourceBody386_0

def sourceBody386_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_105 sourceBody386_180

def sourceBody386_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_104 sourceBody386_181

def sourceBody386_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_177 sourceBody386_182

def sourceBody386_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 176#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody386_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_184 sourceBody386_73

def sourceBody386_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_185

def sourceBody386_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_183 sourceBody386_186

def sourceBody386_188 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 24)) (some 68) ([18]) (some (18, sourceBody386_77, 386, 25))

def sourceBody386_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_188 sourceBody386_4

def sourceBody386_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_189 sourceBody386_0

def sourceBody386_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_58 sourceBody386_190

def sourceBody386_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody386_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_192 sourceBody386_90

def sourceBody386_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_193

def sourceBody386_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_191 sourceBody386_194

def sourceBody386_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_195

def sourceBody386_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_196

def sourceBody386_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_187 sourceBody386_197

def sourceBody386_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 208#64])

def sourceBody386_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 524288#64)

def sourceBody386_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_200 sourceBody386_71

def sourceBody386_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_201

def sourceBody386_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_199 sourceBody386_202

def sourceBody386_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_203

def sourceBody386_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_198 sourceBody386_204

def sourceBody386_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
          Flapjack.WordLangExpHOL.const 208#64]))
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody386_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody386_0, 386, 26)) (some 68) ([18]) (some (18, sourceBody386_77, 386, 27))

def sourceBody386_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_207 sourceBody386_4

def sourceBody386_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_208 sourceBody386_0

def sourceBody386_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_206 sourceBody386_209

def sourceBody386_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 200#64])

def sourceBody386_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_211 sourceBody386_90

def sourceBody386_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_212

def sourceBody386_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_210 sourceBody386_213

def sourceBody386_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_214

def sourceBody386_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_215

def sourceBody386_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_205 sourceBody386_216

def sourceBody386_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody386_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_218 sourceBody386_170

def sourceBody386_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_219

def sourceBody386_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_217 sourceBody386_220

def sourceBody386_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody386_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_222 sourceBody386_170

def sourceBody386_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_223

def sourceBody386_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_221 sourceBody386_224

def sourceBody386_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody386_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody386_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_227 sourceBody386_0

def sourceBody386_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_226 sourceBody386_228

def sourceBody386_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_225 sourceBody386_229

def sourceBody386_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_64 sourceBody386_230

def sourceBody386_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_231

def sourceBody386_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_232

def sourceBody386_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_56 sourceBody386_233

def sourceBody386_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_53 sourceBody386_234

def sourceBody386_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_235

def sourceBody386_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_0 sourceBody386_236

def sourceBody386_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody386_47 sourceBody386_237

def source386 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (386, 4, sourceBody386_238)
end InitECandidate.Proofs.WordStages
