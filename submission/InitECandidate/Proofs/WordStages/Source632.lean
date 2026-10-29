import InitECandidate.Proofs.WordStages.Source616
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody632_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 352#64]))

def sourceBody632_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody632_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody632_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody632_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) sourceBody632_2 sourceBody632_3

def sourceBody632_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody632_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_4 sourceBody632_5

def sourceBody632_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody632_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody632_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody632_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody632_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_9 sourceBody632_10

def sourceBody632_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_8 sourceBody632_11

def sourceBody632_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody632_12 sourceBody632_10

def sourceBody632_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_13 sourceBody632_5

def sourceBody632_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_14 sourceBody632_10

def sourceBody632_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_7 sourceBody632_15

def sourceBody632_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_6 sourceBody632_16

def sourceBody632_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_1 sourceBody632_17

def sourceBody632_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_0 sourceBody632_18

def sourceBody632_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody632_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody632_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody632_10, 632, 2)) (some 68) ([8]) (some (8, sourceBody632_21, 632, 3))

def sourceBody632_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_22 sourceBody632_5

def sourceBody632_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_23 sourceBody632_10

def sourceBody632_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_20 sourceBody632_24

def sourceBody632_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 352#64])

def sourceBody632_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody632_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody632_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody632_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_29 sourceBody632_10

def sourceBody632_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_28 sourceBody632_30

def sourceBody632_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_31 sourceBody632_10

def sourceBody632_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_27 sourceBody632_32

def sourceBody632_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_33

def sourceBody632_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_26 sourceBody632_34

def sourceBody632_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_35

def sourceBody632_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_25 sourceBody632_36

def sourceBody632_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_37

def sourceBody632_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_38

def sourceBody632_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_19 sourceBody632_39

def sourceBody632_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody632_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody632_10, 632, 4)) (some 68) ([8]) (some (8, sourceBody632_21, 632, 5))

def sourceBody632_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_42 sourceBody632_5

def sourceBody632_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_43 sourceBody632_10

def sourceBody632_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_41 sourceBody632_44

def sourceBody632_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 360#64])

def sourceBody632_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_46 sourceBody632_34

def sourceBody632_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_47

def sourceBody632_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_45 sourceBody632_48

def sourceBody632_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_49

def sourceBody632_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_50

def sourceBody632_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_40 sourceBody632_51

def sourceBody632_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody632_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody632_10, 632, 6)) (some 68) ([8]) (some (8, sourceBody632_21, 632, 7))

def sourceBody632_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_54 sourceBody632_5

def sourceBody632_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_55 sourceBody632_10

def sourceBody632_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_53 sourceBody632_56

def sourceBody632_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 368#64])

def sourceBody632_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_58 sourceBody632_34

def sourceBody632_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_59

def sourceBody632_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_57 sourceBody632_60

def sourceBody632_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_61

def sourceBody632_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_62

def sourceBody632_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_52 sourceBody632_63

def sourceBody632_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody632_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18364758544493064720#64)

def sourceBody632_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody632_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody632_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_68 sourceBody632_10

def sourceBody632_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_67 sourceBody632_69

def sourceBody632_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_70 sourceBody632_10

def sourceBody632_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_66 sourceBody632_71

def sourceBody632_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_72

def sourceBody632_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_65 sourceBody632_73

def sourceBody632_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_74

def sourceBody632_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_64 sourceBody632_75

def sourceBody632_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody632_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3853709921291437230#64)

def sourceBody632_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_78 sourceBody632_71

def sourceBody632_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_79

def sourceBody632_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_77 sourceBody632_80

def sourceBody632_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_81

def sourceBody632_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_76 sourceBody632_82

def sourceBody632_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody632_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5266788149650328715#64)

def sourceBody632_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_85 sourceBody632_71

def sourceBody632_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_86

def sourceBody632_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_84 sourceBody632_87

def sourceBody632_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_88

def sourceBody632_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_83 sourceBody632_89

def sourceBody632_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody632_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10305543691612001175#64)

def sourceBody632_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_92 sourceBody632_71

def sourceBody632_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_93

def sourceBody632_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_91 sourceBody632_94

def sourceBody632_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_95

def sourceBody632_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_90 sourceBody632_96

def sourceBody632_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody632_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15242093322790139145#64)

def sourceBody632_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_99 sourceBody632_71

def sourceBody632_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_100

def sourceBody632_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_98 sourceBody632_101

def sourceBody632_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_102

def sourceBody632_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_97 sourceBody632_103

def sourceBody632_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody632_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10515720223929181890#64)

def sourceBody632_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_106 sourceBody632_71

def sourceBody632_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_107

def sourceBody632_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_105 sourceBody632_108

def sourceBody632_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_109

def sourceBody632_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_104 sourceBody632_110

def sourceBody632_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody632_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13270197634454188380#64)

def sourceBody632_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_113 sourceBody632_71

def sourceBody632_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_114

def sourceBody632_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_112 sourceBody632_115

def sourceBody632_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_116

def sourceBody632_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_111 sourceBody632_117

def sourceBody632_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody632_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11702690517083809725#64)

def sourceBody632_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_120 sourceBody632_71

def sourceBody632_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_121

def sourceBody632_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_119 sourceBody632_122

def sourceBody632_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_123

def sourceBody632_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_118 sourceBody632_124

def sourceBody632_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody632_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6503616966983130870#64)

def sourceBody632_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_127 sourceBody632_71

def sourceBody632_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_128

def sourceBody632_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_126 sourceBody632_129

def sourceBody632_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_130

def sourceBody632_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_125 sourceBody632_131

def sourceBody632_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 352#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody632_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 991893350865389610#64)

def sourceBody632_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_134 sourceBody632_71

def sourceBody632_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_135

def sourceBody632_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_133 sourceBody632_136

def sourceBody632_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_137

def sourceBody632_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_132 sourceBody632_138

def sourceBody632_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody632_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7640891576956012808#64)

def sourceBody632_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_141 sourceBody632_71

def sourceBody632_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_142

def sourceBody632_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_140 sourceBody632_143

def sourceBody632_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_144

def sourceBody632_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_139 sourceBody632_145

def sourceBody632_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody632_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13503953896175478587#64)

def sourceBody632_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_148 sourceBody632_71

def sourceBody632_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_149

def sourceBody632_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_147 sourceBody632_150

def sourceBody632_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_151

def sourceBody632_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_146 sourceBody632_152

def sourceBody632_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody632_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4354685564936845355#64)

def sourceBody632_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_155 sourceBody632_71

def sourceBody632_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_156

def sourceBody632_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_154 sourceBody632_157

def sourceBody632_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_158

def sourceBody632_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_153 sourceBody632_159

def sourceBody632_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody632_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11912009170470909681#64)

def sourceBody632_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_162 sourceBody632_71

def sourceBody632_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_163

def sourceBody632_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_161 sourceBody632_164

def sourceBody632_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_165

def sourceBody632_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_160 sourceBody632_166

def sourceBody632_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody632_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5840696475078001361#64)

def sourceBody632_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_169 sourceBody632_71

def sourceBody632_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_170

def sourceBody632_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_168 sourceBody632_171

def sourceBody632_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_172

def sourceBody632_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_167 sourceBody632_173

def sourceBody632_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody632_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11170449401992604703#64)

def sourceBody632_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_176 sourceBody632_71

def sourceBody632_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_177

def sourceBody632_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_175 sourceBody632_178

def sourceBody632_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_179

def sourceBody632_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_174 sourceBody632_180

def sourceBody632_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody632_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2270897969802886507#64)

def sourceBody632_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_183 sourceBody632_71

def sourceBody632_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_184

def sourceBody632_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_182 sourceBody632_185

def sourceBody632_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_186

def sourceBody632_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_181 sourceBody632_187

def sourceBody632_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 360#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody632_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6620516959819538809#64)

def sourceBody632_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_190 sourceBody632_71

def sourceBody632_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_191

def sourceBody632_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_189 sourceBody632_192

def sourceBody632_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_10 sourceBody632_193

def sourceBody632_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_188 sourceBody632_194

def sourceBody632_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody632_195 sourceBody632_12

def source632 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (632, 1, sourceBody632_196)
end InitECandidate.Proofs.WordStages
