import InitECandidate.Proofs.WordStages.Source641
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody657_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 376#64]))

def sourceBody657_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody657_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody657_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody657_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) sourceBody657_2 sourceBody657_3

def sourceBody657_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody657_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_4 sourceBody657_5

def sourceBody657_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody657_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody657_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody657_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody657_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_9 sourceBody657_10

def sourceBody657_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_8 sourceBody657_11

def sourceBody657_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody657_12 sourceBody657_10

def sourceBody657_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_13 sourceBody657_5

def sourceBody657_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_14 sourceBody657_10

def sourceBody657_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_7 sourceBody657_15

def sourceBody657_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_6 sourceBody657_16

def sourceBody657_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_1 sourceBody657_17

def sourceBody657_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_0 sourceBody657_18

def sourceBody657_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody657_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody657_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody657_10, 657, 2)) (some 68) ([10]) (some (10, sourceBody657_21, 657, 3))

def sourceBody657_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_22 sourceBody657_5

def sourceBody657_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_23 sourceBody657_10

def sourceBody657_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_20 sourceBody657_24

def sourceBody657_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 376#64])

def sourceBody657_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody657_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody657_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def sourceBody657_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_29 sourceBody657_10

def sourceBody657_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_28 sourceBody657_30

def sourceBody657_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_31 sourceBody657_10

def sourceBody657_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_27 sourceBody657_32

def sourceBody657_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_33

def sourceBody657_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_26 sourceBody657_34

def sourceBody657_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_35

def sourceBody657_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_25 sourceBody657_36

def sourceBody657_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_37

def sourceBody657_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_38

def sourceBody657_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_19 sourceBody657_39

def sourceBody657_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 376#64]))

def sourceBody657_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def sourceBody657_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def sourceBody657_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def sourceBody657_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def sourceBody657_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody657_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 12

def sourceBody657_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_47 sourceBody657_10

def sourceBody657_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_46 sourceBody657_48

def sourceBody657_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody657_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]) 12

def sourceBody657_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_51 sourceBody657_10

def sourceBody657_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_50 sourceBody657_52

def sourceBody657_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody657_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody657_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_55 sourceBody657_10

def sourceBody657_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_54 sourceBody657_56

def sourceBody657_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody657_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody657_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_59 sourceBody657_10

def sourceBody657_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_58 sourceBody657_60

def sourceBody657_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_61 sourceBody657_10

def sourceBody657_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_57 sourceBody657_62

def sourceBody657_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_53 sourceBody657_63

def sourceBody657_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_49 sourceBody657_64

def sourceBody657_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_45 sourceBody657_65

def sourceBody657_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_66

def sourceBody657_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_44 sourceBody657_67

def sourceBody657_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_68

def sourceBody657_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_43 sourceBody657_69

def sourceBody657_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_70

def sourceBody657_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_42 sourceBody657_71

def sourceBody657_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_72

def sourceBody657_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_41 sourceBody657_73

def sourceBody657_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_74

def sourceBody657_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_40 sourceBody657_75

def sourceBody657_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody657_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody657_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody657_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_79 sourceBody657_65

def sourceBody657_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_80

def sourceBody657_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_78 sourceBody657_81

def sourceBody657_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_82

def sourceBody657_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_1 sourceBody657_83

def sourceBody657_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_84

def sourceBody657_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_3 sourceBody657_85

def sourceBody657_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_86

def sourceBody657_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_77 sourceBody657_87

def sourceBody657_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_88

def sourceBody657_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_76 sourceBody657_89

def sourceBody657_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody657_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12653890742059813127#64)

def sourceBody657_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14585784200204367754#64)

def sourceBody657_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1278438861261381767#64)

def sourceBody657_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 212598772761311868#64)

def sourceBody657_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_95 sourceBody657_65

def sourceBody657_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_96

def sourceBody657_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_94 sourceBody657_97

def sourceBody657_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_98

def sourceBody657_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_93 sourceBody657_99

def sourceBody657_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_100

def sourceBody657_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_92 sourceBody657_101

def sourceBody657_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_102

def sourceBody657_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_91 sourceBody657_103

def sourceBody657_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_104

def sourceBody657_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_90 sourceBody657_105

def sourceBody657_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody657_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 11683091849979440498#64)

def sourceBody657_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14992204589386555739#64)

def sourceBody657_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15866167890766973222#64)

def sourceBody657_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1200023580730561873#64)

def sourceBody657_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_111 sourceBody657_65

def sourceBody657_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_112

def sourceBody657_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_110 sourceBody657_113

def sourceBody657_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_114

def sourceBody657_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_109 sourceBody657_115

def sourceBody657_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_116

def sourceBody657_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_108 sourceBody657_117

def sourceBody657_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_118

def sourceBody657_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_107 sourceBody657_119

def sourceBody657_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_120

def sourceBody657_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_106 sourceBody657_121

def sourceBody657_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody657_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13075984984163199792#64)

def sourceBody657_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3782902503040509012#64)

def sourceBody657_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8791150885551868305#64)

def sourceBody657_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1825854335138010348#64)

def sourceBody657_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_127 sourceBody657_65

def sourceBody657_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_128

def sourceBody657_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_126 sourceBody657_129

def sourceBody657_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_130

def sourceBody657_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_125 sourceBody657_131

def sourceBody657_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_132

def sourceBody657_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_124 sourceBody657_133

def sourceBody657_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_134

def sourceBody657_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_123 sourceBody657_135

def sourceBody657_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_136

def sourceBody657_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_122 sourceBody657_137

def sourceBody657_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def sourceBody657_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7963664994991228759#64)

def sourceBody657_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12257807996192067905#64)

def sourceBody657_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13179524609921305146#64)

def sourceBody657_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2767831111890561987#64)

def sourceBody657_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_143 sourceBody657_65

def sourceBody657_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_144

def sourceBody657_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_142 sourceBody657_145

def sourceBody657_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_146

def sourceBody657_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_141 sourceBody657_147

def sourceBody657_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_148

def sourceBody657_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_140 sourceBody657_149

def sourceBody657_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_150

def sourceBody657_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_139 sourceBody657_151

def sourceBody657_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_152

def sourceBody657_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_138 sourceBody657_153

def sourceBody657_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody657_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16482010305593259561#64)

def sourceBody657_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13488546290961988299#64)

def sourceBody657_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3578621962720924518#64)

def sourceBody657_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2681173117283399901#64)

def sourceBody657_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_159 sourceBody657_65

def sourceBody657_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_160

def sourceBody657_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_158 sourceBody657_161

def sourceBody657_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_162

def sourceBody657_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_157 sourceBody657_163

def sourceBody657_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_164

def sourceBody657_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_156 sourceBody657_165

def sourceBody657_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_166

def sourceBody657_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_155 sourceBody657_167

def sourceBody657_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_168

def sourceBody657_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_154 sourceBody657_169

def sourceBody657_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 224#64])

def sourceBody657_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 11661927080404088775#64)

def sourceBody657_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 553939530661941723#64)

def sourceBody657_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7860678177968807019#64)

def sourceBody657_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3208568454732775116#64)

def sourceBody657_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_175 sourceBody657_65

def sourceBody657_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_176

def sourceBody657_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_174 sourceBody657_177

def sourceBody657_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_178

def sourceBody657_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_173 sourceBody657_179

def sourceBody657_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_180

def sourceBody657_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_172 sourceBody657_181

def sourceBody657_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_182

def sourceBody657_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_171 sourceBody657_183

def sourceBody657_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_184

def sourceBody657_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_170 sourceBody657_185

def sourceBody657_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody657_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8314163329781907090#64)

def sourceBody657_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11942187022798819835#64)

def sourceBody657_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11282677263046157209#64)

def sourceBody657_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1576150870752482284#64)

def sourceBody657_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_191 sourceBody657_65

def sourceBody657_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_192

def sourceBody657_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_190 sourceBody657_193

def sourceBody657_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_194

def sourceBody657_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_189 sourceBody657_195

def sourceBody657_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_196

def sourceBody657_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_188 sourceBody657_197

def sourceBody657_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_198

def sourceBody657_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_187 sourceBody657_199

def sourceBody657_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_200

def sourceBody657_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_186 sourceBody657_201

def sourceBody657_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody657_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6763840483288992073#64)

def sourceBody657_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7118829427391486816#64)

def sourceBody657_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4016233444936635065#64)

def sourceBody657_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2630958277570195709#64)

def sourceBody657_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_207 sourceBody657_65

def sourceBody657_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_208

def sourceBody657_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_206 sourceBody657_209

def sourceBody657_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_210

def sourceBody657_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_205 sourceBody657_211

def sourceBody657_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_212

def sourceBody657_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_204 sourceBody657_213

def sourceBody657_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_214

def sourceBody657_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_203 sourceBody657_215

def sourceBody657_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_216

def sourceBody657_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_202 sourceBody657_217

def sourceBody657_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 320#64])

def sourceBody657_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14515217250696892391#64)

def sourceBody657_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16303087968080972555#64)

def sourceBody657_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3656613296917993960#64)

def sourceBody657_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1345095164996126785#64)

def sourceBody657_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_223 sourceBody657_65

def sourceBody657_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_224

def sourceBody657_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_222 sourceBody657_225

def sourceBody657_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_226

def sourceBody657_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_221 sourceBody657_227

def sourceBody657_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_228

def sourceBody657_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_220 sourceBody657_229

def sourceBody657_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_230

def sourceBody657_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_219 sourceBody657_231

def sourceBody657_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_232

def sourceBody657_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_218 sourceBody657_233

def sourceBody657_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 376#64]),
      Flapjack.WordLangExpHOL.const 352#64])

def sourceBody657_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 957117326806663081#64)

def sourceBody657_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 367382125163301975#64)

def sourceBody657_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15253872307375509749#64)

def sourceBody657_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3396254757538665050#64)

def sourceBody657_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_239 sourceBody657_65

def sourceBody657_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_240

def sourceBody657_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_238 sourceBody657_241

def sourceBody657_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_242

def sourceBody657_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_237 sourceBody657_243

def sourceBody657_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_244

def sourceBody657_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_236 sourceBody657_245

def sourceBody657_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_246

def sourceBody657_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_235 sourceBody657_247

def sourceBody657_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_248

def sourceBody657_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_234 sourceBody657_249

def sourceBody657_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 352#64)

def sourceBody657_252 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody657_10, 657, 4)) (some 68) ([10]) (some (10, sourceBody657_21, 657, 5))

def sourceBody657_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_252 sourceBody657_5

def sourceBody657_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_253 sourceBody657_10

def sourceBody657_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_251 sourceBody657_254

def sourceBody657_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 384#64])

def sourceBody657_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_256 sourceBody657_34

def sourceBody657_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_257

def sourceBody657_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_255 sourceBody657_258

def sourceBody657_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_259

def sourceBody657_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_260

def sourceBody657_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_250 sourceBody657_261

def sourceBody657_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 384#64]))

def sourceBody657_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9698021743855595808#64)

def sourceBody657_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody657_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody657_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_266 sourceBody657_10

def sourceBody657_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_265 sourceBody657_267

def sourceBody657_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_268 sourceBody657_10

def sourceBody657_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_264 sourceBody657_269

def sourceBody657_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_270

def sourceBody657_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_263 sourceBody657_271

def sourceBody657_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_272

def sourceBody657_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_262 sourceBody657_273

def sourceBody657_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody657_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4658111487712502692#64)

def sourceBody657_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_276 sourceBody657_269

def sourceBody657_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_277

def sourceBody657_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_275 sourceBody657_278

def sourceBody657_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_279

def sourceBody657_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_274 sourceBody657_280

def sourceBody657_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody657_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9475478476403788475#64)

def sourceBody657_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_283 sourceBody657_269

def sourceBody657_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_284

def sourceBody657_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_282 sourceBody657_285

def sourceBody657_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_286

def sourceBody657_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_281 sourceBody657_287

def sourceBody657_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody657_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3895898136474990872#64)

def sourceBody657_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_290 sourceBody657_269

def sourceBody657_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_291

def sourceBody657_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_289 sourceBody657_292

def sourceBody657_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_293

def sourceBody657_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_288 sourceBody657_294

def sourceBody657_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody657_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13897688294677189338#64)

def sourceBody657_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_297 sourceBody657_269

def sourceBody657_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_298

def sourceBody657_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_296 sourceBody657_299

def sourceBody657_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_300

def sourceBody657_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_295 sourceBody657_301

def sourceBody657_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody657_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13692288569157338976#64)

def sourceBody657_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_304 sourceBody657_269

def sourceBody657_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_305

def sourceBody657_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_303 sourceBody657_306

def sourceBody657_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_307

def sourceBody657_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_302 sourceBody657_308

def sourceBody657_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody657_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15521367811043670911#64)

def sourceBody657_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_311 sourceBody657_269

def sourceBody657_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_312

def sourceBody657_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_310 sourceBody657_313

def sourceBody657_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_314

def sourceBody657_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_309 sourceBody657_315

def sourceBody657_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody657_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13992850401411864641#64)

def sourceBody657_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_318 sourceBody657_269

def sourceBody657_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_319

def sourceBody657_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_317 sourceBody657_320

def sourceBody657_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_321

def sourceBody657_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_316 sourceBody657_322

def sourceBody657_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody657_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6609620042336070051#64)

def sourceBody657_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_325 sourceBody657_269

def sourceBody657_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_326

def sourceBody657_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_324 sourceBody657_327

def sourceBody657_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_328

def sourceBody657_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_323 sourceBody657_329

def sourceBody657_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody657_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9167096575297741460#64)

def sourceBody657_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_332 sourceBody657_269

def sourceBody657_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_333

def sourceBody657_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_331 sourceBody657_334

def sourceBody657_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_335

def sourceBody657_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_330 sourceBody657_336

def sourceBody657_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody657_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3006977925533509404#64)

def sourceBody657_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_339 sourceBody657_269

def sourceBody657_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_340

def sourceBody657_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_338 sourceBody657_341

def sourceBody657_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_342

def sourceBody657_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_337 sourceBody657_343

def sourceBody657_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def sourceBody657_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13799376210358020352#64)

def sourceBody657_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_346 sourceBody657_269

def sourceBody657_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_347

def sourceBody657_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_345 sourceBody657_348

def sourceBody657_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_349

def sourceBody657_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_344 sourceBody657_350

def sourceBody657_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody657_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7213564696215919148#64)

def sourceBody657_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_353 sourceBody657_269

def sourceBody657_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_354

def sourceBody657_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_352 sourceBody657_355

def sourceBody657_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_356

def sourceBody657_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_351 sourceBody657_357

def sourceBody657_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody657_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12108970941387295838#64)

def sourceBody657_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_360 sourceBody657_269

def sourceBody657_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_361

def sourceBody657_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_359 sourceBody657_362

def sourceBody657_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_363

def sourceBody657_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_358 sourceBody657_364

def sourceBody657_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def sourceBody657_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14800348210198864764#64)

def sourceBody657_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_367 sourceBody657_269

def sourceBody657_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_368

def sourceBody657_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_366 sourceBody657_369

def sourceBody657_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_370

def sourceBody657_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_365 sourceBody657_371

def sourceBody657_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody657_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5333217130945090002#64)

def sourceBody657_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_374 sourceBody657_269

def sourceBody657_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_375

def sourceBody657_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_373 sourceBody657_376

def sourceBody657_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_377

def sourceBody657_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_372 sourceBody657_378

def sourceBody657_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody657_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 17191330154042290397#64)

def sourceBody657_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_381 sourceBody657_269

def sourceBody657_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_382

def sourceBody657_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_380 sourceBody657_383

def sourceBody657_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_384

def sourceBody657_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_379 sourceBody657_385

def sourceBody657_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 136#64])

def sourceBody657_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7728981312468502308#64)

def sourceBody657_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_388 sourceBody657_269

def sourceBody657_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_389

def sourceBody657_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_387 sourceBody657_390

def sourceBody657_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_391

def sourceBody657_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_386 sourceBody657_392

def sourceBody657_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody657_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13479501571575199621#64)

def sourceBody657_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_395 sourceBody657_269

def sourceBody657_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_396

def sourceBody657_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_394 sourceBody657_397

def sourceBody657_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_398

def sourceBody657_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_393 sourceBody657_399

def sourceBody657_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody657_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4632319730382815766#64)

def sourceBody657_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_402 sourceBody657_269

def sourceBody657_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_403

def sourceBody657_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_401 sourceBody657_404

def sourceBody657_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_405

def sourceBody657_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_400 sourceBody657_406

def sourceBody657_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def sourceBody657_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6183408236485651195#64)

def sourceBody657_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_409 sourceBody657_269

def sourceBody657_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_410

def sourceBody657_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_408 sourceBody657_411

def sourceBody657_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_412

def sourceBody657_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_407 sourceBody657_413

def sourceBody657_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 168#64])

def sourceBody657_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2344383644319854215#64)

def sourceBody657_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_416 sourceBody657_269

def sourceBody657_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_417

def sourceBody657_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_415 sourceBody657_418

def sourceBody657_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_419

def sourceBody657_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_414 sourceBody657_420

def sourceBody657_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 176#64])

def sourceBody657_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9541507823907846048#64)

def sourceBody657_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_423 sourceBody657_269

def sourceBody657_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_424

def sourceBody657_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_422 sourceBody657_425

def sourceBody657_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_426

def sourceBody657_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_421 sourceBody657_427

def sourceBody657_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody657_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5234407941292577173#64)

def sourceBody657_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_430 sourceBody657_269

def sourceBody657_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_431

def sourceBody657_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_429 sourceBody657_432

def sourceBody657_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_433

def sourceBody657_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_428 sourceBody657_434

def sourceBody657_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody657_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16529975799043132950#64)

def sourceBody657_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_437 sourceBody657_269

def sourceBody657_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_438

def sourceBody657_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_436 sourceBody657_439

def sourceBody657_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_440

def sourceBody657_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_435 sourceBody657_441

def sourceBody657_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 200#64])

def sourceBody657_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12351756573642376427#64)

def sourceBody657_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_444 sourceBody657_269

def sourceBody657_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_445

def sourceBody657_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_443 sourceBody657_446

def sourceBody657_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_447

def sourceBody657_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_442 sourceBody657_448

def sourceBody657_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 208#64])

def sourceBody657_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9426269327694809050#64)

def sourceBody657_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_451 sourceBody657_269

def sourceBody657_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_452

def sourceBody657_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_450 sourceBody657_453

def sourceBody657_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_454

def sourceBody657_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_449 sourceBody657_455

def sourceBody657_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody657_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7379223421642392714#64)

def sourceBody657_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_458 sourceBody657_269

def sourceBody657_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_459

def sourceBody657_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_457 sourceBody657_460

def sourceBody657_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_461

def sourceBody657_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_456 sourceBody657_462

def sourceBody657_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 224#64])

def sourceBody657_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5792417538046516732#64)

def sourceBody657_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_465 sourceBody657_269

def sourceBody657_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_466

def sourceBody657_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_464 sourceBody657_467

def sourceBody657_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_468

def sourceBody657_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_463 sourceBody657_469

def sourceBody657_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 232#64])

def sourceBody657_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9162926010144764881#64)

def sourceBody657_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_472 sourceBody657_269

def sourceBody657_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_473

def sourceBody657_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_471 sourceBody657_474

def sourceBody657_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_475

def sourceBody657_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_470 sourceBody657_476

def sourceBody657_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 240#64])

def sourceBody657_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8644015420738790472#64)

def sourceBody657_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_479 sourceBody657_269

def sourceBody657_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_480

def sourceBody657_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_478 sourceBody657_481

def sourceBody657_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_482

def sourceBody657_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_477 sourceBody657_483

def sourceBody657_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 248#64])

def sourceBody657_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 18370314904686314414#64)

def sourceBody657_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_486 sourceBody657_269

def sourceBody657_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_487

def sourceBody657_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_485 sourceBody657_488

def sourceBody657_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_489

def sourceBody657_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_484 sourceBody657_490

def sourceBody657_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody657_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 17975984934167627464#64)

def sourceBody657_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_493 sourceBody657_269

def sourceBody657_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_494

def sourceBody657_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_492 sourceBody657_495

def sourceBody657_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_496

def sourceBody657_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_491 sourceBody657_497

def sourceBody657_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 264#64])

def sourceBody657_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8719923968173632426#64)

def sourceBody657_501 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_500 sourceBody657_269

def sourceBody657_502 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_501

def sourceBody657_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_499 sourceBody657_502

def sourceBody657_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_503

def sourceBody657_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_498 sourceBody657_504

def sourceBody657_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 272#64])

def sourceBody657_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6379321585415610019#64)

def sourceBody657_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_507 sourceBody657_269

def sourceBody657_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_508

def sourceBody657_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_506 sourceBody657_509

def sourceBody657_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_510

def sourceBody657_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_505 sourceBody657_511

def sourceBody657_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 280#64])

def sourceBody657_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1402842025008175984#64)

def sourceBody657_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_514 sourceBody657_269

def sourceBody657_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_515

def sourceBody657_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_513 sourceBody657_516

def sourceBody657_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_517

def sourceBody657_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_512 sourceBody657_518

def sourceBody657_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody657_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 888598832447275954#64)

def sourceBody657_522 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_521 sourceBody657_269

def sourceBody657_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_522

def sourceBody657_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_520 sourceBody657_523

def sourceBody657_525 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_524

def sourceBody657_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_519 sourceBody657_525

def sourceBody657_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 296#64])

def sourceBody657_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4522688638863333623#64)

def sourceBody657_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_528 sourceBody657_269

def sourceBody657_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_529

def sourceBody657_531 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_527 sourceBody657_530

def sourceBody657_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_531

def sourceBody657_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_526 sourceBody657_532

def sourceBody657_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 304#64])

def sourceBody657_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15776483769708984925#64)

def sourceBody657_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_535 sourceBody657_269

def sourceBody657_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_536

def sourceBody657_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_534 sourceBody657_537

def sourceBody657_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_538

def sourceBody657_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_533 sourceBody657_539

def sourceBody657_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 312#64])

def sourceBody657_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16276864970431725248#64)

def sourceBody657_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_542 sourceBody657_269

def sourceBody657_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_543

def sourceBody657_545 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_541 sourceBody657_544

def sourceBody657_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_545

def sourceBody657_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_540 sourceBody657_546

def sourceBody657_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 320#64])

def sourceBody657_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7646110518075161570#64)

def sourceBody657_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_549 sourceBody657_269

def sourceBody657_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_550

def sourceBody657_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_548 sourceBody657_551

def sourceBody657_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_552

def sourceBody657_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_547 sourceBody657_553

def sourceBody657_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 328#64])

def sourceBody657_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9524343276244152831#64)

def sourceBody657_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_556 sourceBody657_269

def sourceBody657_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_557

def sourceBody657_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_555 sourceBody657_558

def sourceBody657_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_559

def sourceBody657_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_554 sourceBody657_560

def sourceBody657_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 336#64])

def sourceBody657_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2377296829910687932#64)

def sourceBody657_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_563 sourceBody657_269

def sourceBody657_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_564

def sourceBody657_566 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_562 sourceBody657_565

def sourceBody657_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_566

def sourceBody657_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_561 sourceBody657_567

def sourceBody657_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 384#64]),
      Flapjack.WordLangExpHOL.const 344#64])

def sourceBody657_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 203128949104#64)

def sourceBody657_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_570 sourceBody657_269

def sourceBody657_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_571

def sourceBody657_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_569 sourceBody657_572

def sourceBody657_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_10 sourceBody657_573

def sourceBody657_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_568 sourceBody657_574

def sourceBody657_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody657_575 sourceBody657_12

def source657 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (657, 1, sourceBody657_576)
end InitECandidate.Proofs.WordStages
