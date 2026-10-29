import InitECandidate.Proofs.WordStages.Source664
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel664
def word664_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 392#64]))

def word664_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_0 word664_0_1

def word664_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def word664_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word664_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_3 word664_0_4

def word664_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word664_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_5 word664_0_6

def word664_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_7 word664_0_8

def word664_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def word664_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_9 word664_0_10

def word664_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word664_0_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 6) word664_0_11 word664_0_12

def word664_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_14 word664_0_4

def word664_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_15 word664_0_16

def word664_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_13 word664_0_17

def word664_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_2 word664_0_18

def word664_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_19 word664_0_4

def word664_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word664_0_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_0_12, 664, 2)) (some 658) ([]) (some (34, word664_0_21, 664, 3))

def word664_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_20 word664_0_22

def word664_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_23 word664_0_4

def word664_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 384#64)

def word664_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_24 word664_0_25

def word664_0_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_0_12, 664, 4)) (some 68) ([34]) (some (34, word664_0_21, 664, 5))

def word664_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_25 word664_0_27

def word664_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_26 word664_0_28

def word664_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_29 word664_0_4

def word664_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 392#64])

def word664_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_30 word664_0_31

def word664_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def word664_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_32 word664_0_33

def word664_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def word664_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_34 word664_0_35

def word664_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 28

def word664_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_36 word664_0_37

def word664_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 392#64]))

def word664_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_38 word664_0_39

def word664_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_40 word664_0_3

def word664_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_41 word664_0_1

def word664_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_42 word664_0_16

def word664_0_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_43 word664_0_44

def word664_0_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word664_0_47 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_45 word664_0_46

def word664_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 40

def word664_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_47 word664_0_48

def word664_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_49 word664_0_50

def word664_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])
  40

def word664_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_51 word664_0_52

def word664_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_53 word664_0_50

def word664_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64])
  40

def word664_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_54 word664_0_55

def word664_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_56 word664_0_50

def word664_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 24#64])
  40

def word664_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_57 word664_0_58

def word664_0_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def word664_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_59 word664_0_60

def word664_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_61 word664_0_14

def word664_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_62 word664_0_1

def word664_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_63 word664_0_16

def word664_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_64 word664_0_44

def word664_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_65 word664_0_50

def word664_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_66 word664_0_48

def word664_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_67 word664_0_50

def word664_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_68 word664_0_52

def word664_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_69 word664_0_50

def word664_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_70 word664_0_55

def word664_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_71 word664_0_50

def word664_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_72 word664_0_58

def word664_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def word664_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_73 word664_0_74

def word664_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 15423480562983756912#64)

def word664_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_75 word664_0_76

def word664_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 6652412619979170166#64)

def word664_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_77 word664_0_78

def word664_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 16769610461022161760#64)

def word664_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_79 word664_0_80

def word664_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1334392721173227487#64)

def word664_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_81 word664_0_82

def word664_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 15423480562983756912#64)

def word664_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_83 word664_0_84

def word664_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_85 word664_0_48

def word664_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 6652412619979170166#64)

def word664_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_86 word664_0_87

def word664_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_88 word664_0_52

def word664_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 16769610461022161760#64)

def word664_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_89 word664_0_90

def word664_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_91 word664_0_55

def word664_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1334392721173227487#64)

def word664_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_92 word664_0_93

def word664_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_94 word664_0_58

def word664_0_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def word664_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_95 word664_0_96

def word664_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 14581793986494816940#64)

def word664_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_97 word664_0_98

def word664_0_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8392900422778406885#64)

def word664_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_99 word664_0_100

def word664_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 11975771789798476686#64)

def word664_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_101 word664_0_102

def word664_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2623794231377586150#64)

def word664_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_103 word664_0_104

def word664_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 14581793986494816940#64)

def word664_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_105 word664_0_106

def word664_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_107 word664_0_48

def word664_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 8392900422778406885#64)

def word664_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_108 word664_0_109

def word664_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_110 word664_0_52

def word664_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 11975771789798476686#64)

def word664_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_111 word664_0_112

def word664_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_113 word664_0_55

def word664_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 2623794231377586150#64)

def word664_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_114 word664_0_115

def word664_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_116 word664_0_58

def word664_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def word664_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_117 word664_0_118

def word664_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 11088870908804158781#64)

def word664_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_119 word664_0_120

def word664_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 13226160682434769676#64)

def word664_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_121 word664_0_122

def word664_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 5479733118184829251#64)

def word664_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_123 word664_0_124

def word664_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3437169660107756023#64)

def word664_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_125 word664_0_126

def word664_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 11088870908804158781#64)

def word664_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_127 word664_0_128

def word664_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_129 word664_0_48

def word664_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 13226160682434769676#64)

def word664_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_130 word664_0_131

def word664_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_132 word664_0_52

def word664_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 5479733118184829251#64)

def word664_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_133 word664_0_134

def word664_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_135 word664_0_55

def word664_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3437169660107756023#64)

def word664_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_136 word664_0_137

def word664_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_138 word664_0_58

def word664_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def word664_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_139 word664_0_140

def word664_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1613930359396748194#64)

def word664_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_141 word664_0_142

def word664_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3651902652079185358#64)

def word664_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_143 word664_0_144

def word664_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 5450706350010664852#64)

def word664_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_145 word664_0_146

def word664_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1642095672556236320#64)

def word664_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_147 word664_0_148

def word664_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1613930359396748194#64)

def word664_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_149 word664_0_150

def word664_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_151 word664_0_48

def word664_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3651902652079185358#64)

def word664_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_152 word664_0_153

def word664_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_154 word664_0_52

def word664_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 5450706350010664852#64)

def word664_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_155 word664_0_156

def word664_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_157 word664_0_55

def word664_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1642095672556236320#64)

def word664_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_158 word664_0_159

def word664_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_160 word664_0_58

def word664_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def word664_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_161 word664_0_162

def word664_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 15876315988453495642#64)

def word664_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_163 word664_0_164

def word664_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 15828711151707445656#64)

def word664_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_165 word664_0_166

def word664_0_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 15879347695360604601#64)

def word664_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_167 word664_0_168

def word664_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 449501266848708060#64)

def word664_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_169 word664_0_170

def word664_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 15876315988453495642#64)

def word664_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_171 word664_0_172

def word664_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_173 word664_0_48

def word664_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 15828711151707445656#64)

def word664_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_174 word664_0_175

def word664_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_176 word664_0_52

def word664_0_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 15879347695360604601#64)

def word664_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_177 word664_0_178

def word664_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_179 word664_0_55

def word664_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 449501266848708060#64)

def word664_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_180 word664_0_181

def word664_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_182 word664_0_58

def word664_0_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 224#64])

def word664_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_183 word664_0_184

def word664_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 9427018508834943203#64)

def word664_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_185 word664_0_186

def word664_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2414067704922266578#64)

def word664_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_187 word664_0_188

def word664_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 505728791003885355#64)

def word664_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_189 word664_0_190

def word664_0_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 558513134835401882#64)

def word664_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_191 word664_0_192

def word664_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 9427018508834943203#64)

def word664_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_193 word664_0_194

def word664_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_195 word664_0_48

def word664_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 2414067704922266578#64)

def word664_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_196 word664_0_197

def word664_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_198 word664_0_52

def word664_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 505728791003885355#64)

def word664_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_199 word664_0_200

def word664_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_201 word664_0_55

def word664_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 558513134835401882#64)

def word664_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_202 word664_0_203

def word664_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_204 word664_0_58

def word664_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 256#64])

def word664_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_205 word664_0_206

def word664_0_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 9550480412176721762#64)

def word664_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_207 word664_0_208

def word664_0_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 15218619680543796338#64)

def word664_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_209 word664_0_210

def word664_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 9291982349918543492#64)

def word664_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_211 word664_0_212

def word664_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 411322207813150721#64)

def word664_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_213 word664_0_214

def word664_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 9550480412176721762#64)

def word664_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_215 word664_0_216

def word664_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_217 word664_0_48

def word664_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 15218619680543796338#64)

def word664_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_218 word664_0_219

def word664_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_220 word664_0_52

def word664_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 9291982349918543492#64)

def word664_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_221 word664_0_222

def word664_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_223 word664_0_55

def word664_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 411322207813150721#64)

def word664_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_224 word664_0_225

def word664_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_226 word664_0_58

def word664_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 288#64])

def word664_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_227 word664_0_228

def word664_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 13923800814728216870#64)

def word664_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_229 word664_0_230

def word664_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3928778152882390883#64)

def word664_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_231 word664_0_232

def word664_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 11473624495072943250#64)

def word664_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_233 word664_0_234

def word664_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3176267935786044142#64)

def word664_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_235 word664_0_236

def word664_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 13923800814728216870#64)

def word664_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_237 word664_0_238

def word664_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_239 word664_0_48

def word664_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3928778152882390883#64)

def word664_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_240 word664_0_241

def word664_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_242 word664_0_52

def word664_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 11473624495072943250#64)

def word664_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_243 word664_0_244

def word664_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_245 word664_0_55

def word664_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3176267935786044142#64)

def word664_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_246 word664_0_247

def word664_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_248 word664_0_58

def word664_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 320#64])

def word664_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_249 word664_0_250

def word664_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 3360468246954731823#64)

def word664_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_251 word664_0_252

def word664_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4781773437820083155#64)

def word664_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_253 word664_0_254

def word664_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 16805804752481107956#64)

def word664_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_255 word664_0_256

def word664_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 109144015201994313#64)

def word664_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_257 word664_0_258

def word664_0_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3360468246954731823#64)

def word664_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_259 word664_0_260

def word664_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_261 word664_0_48

def word664_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 4781773437820083155#64)

def word664_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_262 word664_0_263

def word664_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_264 word664_0_52

def word664_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 16805804752481107956#64)

def word664_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_265 word664_0_266

def word664_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_267 word664_0_55

def word664_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 109144015201994313#64)

def word664_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_268 word664_0_269

def word664_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_270 word664_0_58

def word664_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 352#64])

def word664_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_271 word664_0_272

def word664_0_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 2650008764942134347#64)

def word664_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_273 word664_0_274

def word664_0_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 12718389207422085824#64)

def word664_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_275 word664_0_276

def word664_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 11709273573250211709#64)

def word664_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_277 word664_0_278

def word664_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1345717340070545013#64)

def word664_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_279 word664_0_280

def word664_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 2650008764942134347#64)

def word664_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_281 word664_0_282

def word664_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_283 word664_0_48

def word664_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 12718389207422085824#64)

def word664_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_284 word664_0_285

def word664_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_286 word664_0_52

def word664_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 11709273573250211709#64)

def word664_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_287 word664_0_288

def word664_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_289 word664_0_55

def word664_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1345717340070545013#64)

def word664_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_290 word664_0_291

def word664_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_292 word664_0_58

def word664_0_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 64#64)

def word664_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_293 word664_0_294

def word664_0_296 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_0_12, 664, 6)) (some 68) ([34]) (some (34, word664_0_21, 664, 7))

def word664_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_294 word664_0_296

def word664_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_295 word664_0_297

def word664_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_298 word664_0_4

def word664_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 504#64])

def word664_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_299 word664_0_300

def word664_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_301 word664_0_33

def word664_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_302 word664_0_35

def word664_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_303 word664_0_37

def word664_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2101474240800967975#64)

def word664_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_304 word664_0_305

def word664_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 11918193690587271358#64)

def word664_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_306 word664_0_307

def word664_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 11796765086790633677#64)

def word664_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_308 word664_0_309

def word664_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1148157965898539121#64)

def word664_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_310 word664_0_311

def word664_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 27#64)

def word664_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_312 word664_0_313

def word664_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_314 word664_0_315

def word664_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_316 word664_0_317

def word664_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_318 word664_0_319

def word664_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 2101474240800967975#64)

def word664_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_320 word664_0_321

def word664_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 11918193690587271358#64)

def word664_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_322 word664_0_323

def word664_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11796765086790633677#64)

def word664_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_324 word664_0_325

def word664_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1148157965898539121#64)

def word664_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_326 word664_0_327

def word664_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_327 word664_0_325

def word664_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_329 word664_0_323

def word664_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_330 word664_0_321

def word664_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_331 word664_0_319

def word664_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_332 word664_0_317

def word664_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_333 word664_0_315

def word664_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_334 word664_0_313

def word664_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word664_0_337 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 40, 4, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word664_0_12, 664, 8)) (some 668) ([16, 38, 10, 32, 22, 44, 2, 24]) (some (16, word664_0_336, 664, 9))

def word664_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_335 word664_0_337

def word664_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_328 word664_0_338

def word664_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_339 word664_0_4

def word664_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 3#64)

def word664_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_340 word664_0_341

def word664_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_342 word664_0_343

def word664_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_344 word664_0_345

def word664_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_346 word664_0_347

def word664_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def word664_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_348 word664_0_349

def word664_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def word664_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_350 word664_0_351

def word664_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def word664_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_352 word664_0_353

def word664_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def word664_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_354 word664_0_355

def word664_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_347 word664_0_345

def word664_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_357 word664_0_343

def word664_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_358 word664_0_341

def word664_0_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word664_0_361 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 38, 10, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word664_0_12, 664, 10)) (some 668) ([22, 44, 2, 24, 14, 36, 8, 30]) (some (22, word664_0_360, 664, 11))

def word664_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_359 word664_0_361

def word664_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_356 word664_0_362

def word664_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_363 word664_0_4

def word664_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def word664_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_364 word664_0_365

def word664_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 38)

def word664_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_366 word664_0_367

def word664_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def word664_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_368 word664_0_369

def word664_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def word664_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_370 word664_0_371

def word664_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word664_0_374 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 44, 2, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word664_0_12, 664, 12)) (some 667) ([14, 36, 8, 30]) (some (14, word664_0_373, 664, 13))

def word664_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_372 word664_0_374

def word664_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_375 word664_0_4

def word664_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 504#64]))

def word664_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_376 word664_0_377

def word664_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 18)

def word664_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_378 word664_0_379

def word664_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 40)

def word664_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_380 word664_0_381

def word664_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def word664_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_382 word664_0_383

def word664_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def word664_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_384 word664_0_385

def word664_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def word664_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_386 word664_0_387

def word664_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 42

def word664_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_388 word664_0_389

def word664_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 8)

def word664_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_390 word664_0_391

def word664_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])
  42

def word664_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_392 word664_0_393

def word664_0_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 30)

def word664_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_394 word664_0_395

def word664_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])
  42

def word664_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_396 word664_0_397

def word664_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 20)

def word664_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_398 word664_0_399

def word664_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])
  42

def word664_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_400 word664_0_401

def word664_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 504#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def word664_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_402 word664_0_403

def word664_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def word664_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_404 word664_0_405

def word664_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 44)

def word664_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_406 word664_0_407

def word664_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def word664_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_408 word664_0_409

def word664_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def word664_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_410 word664_0_411

def word664_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_412 word664_0_387

def word664_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_413 word664_0_389

def word664_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_414 word664_0_391

def word664_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_415 word664_0_393

def word664_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_416 word664_0_395

def word664_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_417 word664_0_397

def word664_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_418 word664_0_399

def word664_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_419 word664_0_401

def word664_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 352#64)

def word664_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_420 word664_0_421

def word664_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word664_0_424 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word664_0_12, 664, 14)) (some 68) ([36]) (some (36, word664_0_423, 664, 15))

def word664_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_421 word664_0_424

def word664_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_422 word664_0_425

def word664_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_426 word664_0_4

def word664_0_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 400#64])

def word664_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_427 word664_0_428

def word664_0_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def word664_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_429 word664_0_430

def word664_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def word664_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_431 word664_0_432

def word664_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 36) 30

def word664_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_433 word664_0_434

def word664_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 400#64]))

def word664_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_435 word664_0_436

def word664_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9698021743855595808#64)

def word664_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_437 word664_0_438

def word664_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9698021743855595808#64)

def word664_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_439 word664_0_440

def word664_0_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 8

def word664_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_441 word664_0_442

def word664_0_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def word664_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_443 word664_0_444

def word664_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4658111487712502692#64)

def word664_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_445 word664_0_446

def word664_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4658111487712502692#64)

def word664_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_447 word664_0_448

def word664_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_449 word664_0_442

def word664_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def word664_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_450 word664_0_451

def word664_0_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9475478476403788475#64)

def word664_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_452 word664_0_453

def word664_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9475478476403788475#64)

def word664_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_454 word664_0_455

def word664_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_456 word664_0_442

def word664_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def word664_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_457 word664_0_458

def word664_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3895898136474990872#64)

def word664_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_459 word664_0_460

def word664_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3895898136474990872#64)

def word664_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_461 word664_0_462

def word664_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_463 word664_0_442

def word664_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def word664_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_464 word664_0_465

def word664_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 13897688294677189338#64)

def word664_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_466 word664_0_467

def word664_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13897688294677189338#64)

def word664_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_468 word664_0_469

def word664_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_470 word664_0_442

def word664_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def word664_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_471 word664_0_472

def word664_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 13692288569157338976#64)

def word664_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_473 word664_0_474

def word664_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13692288569157338976#64)

def word664_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_475 word664_0_476

def word664_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_477 word664_0_442

def word664_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def word664_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_478 word664_0_479

def word664_0_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 15521367811043670911#64)

def word664_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_480 word664_0_481

def word664_0_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15521367811043670911#64)

def word664_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_482 word664_0_483

def word664_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_484 word664_0_442

def word664_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def word664_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_485 word664_0_486

def word664_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 13992850401411864641#64)

def word664_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_487 word664_0_488

def word664_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13992850401411864641#64)

def word664_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_489 word664_0_490

def word664_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_491 word664_0_442

def word664_0_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def word664_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_492 word664_0_493

def word664_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 6609620042336070051#64)

def word664_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_494 word664_0_495

def word664_0_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6609620042336070051#64)

def word664_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_496 word664_0_497

def word664_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_498 word664_0_442

def word664_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def word664_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_499 word664_0_500

def word664_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9167096575297741460#64)

def word664_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_501 word664_0_502

def word664_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9167096575297741460#64)

def word664_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_503 word664_0_504

def word664_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_505 word664_0_442

def word664_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def word664_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_506 word664_0_507

def word664_0_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 3006977925533509404#64)

def word664_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_508 word664_0_509

def word664_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3006977925533509404#64)

def word664_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_510 word664_0_511

def word664_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_512 word664_0_442

def word664_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def word664_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_513 word664_0_514

def word664_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 13799376210358020352#64)

def word664_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_515 word664_0_516

def word664_0_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13799376210358020352#64)

def word664_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_517 word664_0_518

def word664_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_519 word664_0_442

def word664_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def word664_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_520 word664_0_521

def word664_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 7213564696215919148#64)

def word664_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_522 word664_0_523

def word664_0_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7213564696215919148#64)

def word664_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_524 word664_0_525

def word664_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_526 word664_0_442

def word664_0_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def word664_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_527 word664_0_528

def word664_0_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 12108970941387295838#64)

def word664_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_529 word664_0_530

def word664_0_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12108970941387295838#64)

def word664_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_531 word664_0_532

def word664_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_533 word664_0_442

def word664_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def word664_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_534 word664_0_535

def word664_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 14800348210198864764#64)

def word664_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_536 word664_0_537

def word664_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14800348210198864764#64)

def word664_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_538 word664_0_539

def word664_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_540 word664_0_442

def word664_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def word664_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_541 word664_0_542

def word664_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 5333217130945090002#64)

def word664_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_543 word664_0_544

def word664_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5333217130945090002#64)

def word664_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_545 word664_0_546

def word664_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_547 word664_0_442

def word664_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def word664_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_548 word664_0_549

def word664_0_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 17191330154042290397#64)

def word664_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_550 word664_0_551

def word664_0_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17191330154042290397#64)

def word664_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_552 word664_0_553

def word664_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_554 word664_0_442

def word664_0_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 136#64])

def word664_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_555 word664_0_556

def word664_0_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 7728981312468502308#64)

def word664_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_557 word664_0_558

def word664_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7728981312468502308#64)

def word664_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_559 word664_0_560

def word664_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_561 word664_0_442

def word664_0_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def word664_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_562 word664_0_563

def word664_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 13479501571575199621#64)

def word664_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_564 word664_0_565

def word664_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13479501571575199621#64)

def word664_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_566 word664_0_567

def word664_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_568 word664_0_442

def word664_0_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def word664_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_569 word664_0_570

def word664_0_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4632319730382815766#64)

def word664_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_571 word664_0_572

def word664_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4632319730382815766#64)

def word664_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_573 word664_0_574

def word664_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_575 word664_0_442

def word664_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def word664_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_576 word664_0_577

def word664_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 6183408236485651195#64)

def word664_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_578 word664_0_579

def word664_0_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6183408236485651195#64)

def word664_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_580 word664_0_581

def word664_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_582 word664_0_442

def word664_0_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 168#64])

def word664_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_583 word664_0_584

def word664_0_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2344383644319854215#64)

def word664_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_585 word664_0_586

def word664_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2344383644319854215#64)

def word664_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_587 word664_0_588

def word664_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_589 word664_0_442

def word664_0_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 176#64])

def word664_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_590 word664_0_591

def word664_0_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9541507823907846048#64)

def word664_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_592 word664_0_593

def word664_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9541507823907846048#64)

def word664_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_594 word664_0_595

def word664_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_596 word664_0_442

def word664_0_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def word664_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_597 word664_0_598

def word664_0_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 5234407941292577173#64)

def word664_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_599 word664_0_600

def word664_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5234407941292577173#64)

def word664_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_601 word664_0_602

def word664_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_603 word664_0_442

def word664_0_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def word664_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_604 word664_0_605

def word664_0_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 16529975799043132950#64)

def word664_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_606 word664_0_607

def word664_0_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16529975799043132950#64)

def word664_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_608 word664_0_609

def word664_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_610 word664_0_442

def word664_0_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 200#64])

def word664_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_611 word664_0_612

def word664_0_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 12351756573642376427#64)

def word664_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_613 word664_0_614

def word664_0_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12351756573642376427#64)

def word664_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_615 word664_0_616

def word664_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_617 word664_0_442

def word664_0_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 208#64])

def word664_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_618 word664_0_619

def word664_0_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9426269327694809050#64)

def word664_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_620 word664_0_621

def word664_0_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9426269327694809050#64)

def word664_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_622 word664_0_623

def word664_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_624 word664_0_442

def word664_0_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def word664_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_625 word664_0_626

def word664_0_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 7379223421642392714#64)

def word664_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_627 word664_0_628

def word664_0_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7379223421642392714#64)

def word664_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_629 word664_0_630

def word664_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_631 word664_0_442

def word664_0_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 224#64])

def word664_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_632 word664_0_633

def word664_0_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 5792417538046516732#64)

def word664_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_634 word664_0_635

def word664_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5792417538046516732#64)

def word664_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_636 word664_0_637

def word664_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_638 word664_0_442

def word664_0_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 232#64])

def word664_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_639 word664_0_640

def word664_0_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9162926010144764881#64)

def word664_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_641 word664_0_642

def word664_0_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9162926010144764881#64)

def word664_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_643 word664_0_644

def word664_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_645 word664_0_442

def word664_0_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 240#64])

def word664_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_646 word664_0_647

def word664_0_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 8644015420738790472#64)

def word664_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_648 word664_0_649

def word664_0_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8644015420738790472#64)

def word664_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_650 word664_0_651

def word664_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_652 word664_0_442

def word664_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 248#64])

def word664_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_653 word664_0_654

def word664_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 18370314904686314414#64)

def word664_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_655 word664_0_656

def word664_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18370314904686314414#64)

def word664_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_657 word664_0_658

def word664_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_659 word664_0_442

def word664_0_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 256#64])

def word664_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_660 word664_0_661

def word664_0_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 17975984934167627464#64)

def word664_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_662 word664_0_663

def word664_0_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17975984934167627464#64)

def word664_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_664 word664_0_665

def word664_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_666 word664_0_442

def word664_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 264#64])

def word664_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_667 word664_0_668

def word664_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 8719923968173632426#64)

def word664_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_669 word664_0_670

def word664_0_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8719923968173632426#64)

def word664_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_671 word664_0_672

def word664_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_673 word664_0_442

def word664_0_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 272#64])

def word664_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_674 word664_0_675

def word664_0_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 6379321585415610019#64)

def word664_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_676 word664_0_677

def word664_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6379321585415610019#64)

def word664_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_678 word664_0_679

def word664_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_680 word664_0_442

def word664_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 280#64])

def word664_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_681 word664_0_682

def word664_0_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1402842025008175984#64)

def word664_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_683 word664_0_684

def word664_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1402842025008175984#64)

def word664_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_685 word664_0_686

def word664_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_687 word664_0_442

def word664_0_689 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 288#64])

def word664_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_688 word664_0_689

def word664_0_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 888598832447275954#64)

def word664_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_690 word664_0_691

def word664_0_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 888598832447275954#64)

def word664_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_692 word664_0_693

def word664_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_694 word664_0_442

def word664_0_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 296#64])

def word664_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_695 word664_0_696

def word664_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4522688638863333623#64)

def word664_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_697 word664_0_698

def word664_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4522688638863333623#64)

def word664_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_699 word664_0_700

def word664_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_701 word664_0_442

def word664_0_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 304#64])

def word664_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_702 word664_0_703

def word664_0_705 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 15776483769708984925#64)

def word664_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_704 word664_0_705

def word664_0_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15776483769708984925#64)

def word664_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_706 word664_0_707

def word664_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_708 word664_0_442

def word664_0_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 312#64])

def word664_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_709 word664_0_710

def word664_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 16276864970431725248#64)

def word664_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_711 word664_0_712

def word664_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16276864970431725248#64)

def word664_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_713 word664_0_714

def word664_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_715 word664_0_442

def word664_0_717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 320#64])

def word664_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_716 word664_0_717

def word664_0_719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 7646110518075161570#64)

def word664_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_718 word664_0_719

def word664_0_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7646110518075161570#64)

def word664_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_720 word664_0_721

def word664_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_722 word664_0_442

def word664_0_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 328#64])

def word664_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_723 word664_0_724

def word664_0_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9524343276244152831#64)

def word664_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_725 word664_0_726

def word664_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9524343276244152831#64)

def word664_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_727 word664_0_728

def word664_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_729 word664_0_442

def word664_0_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 336#64])

def word664_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_730 word664_0_731

def word664_0_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 2377296829910687932#64)

def word664_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_732 word664_0_733

def word664_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2377296829910687932#64)

def word664_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_734 word664_0_735

def word664_0_737 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_736 word664_0_442

def word664_0_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 400#64]),
      Flapjack.WordLangExpHOL.const 344#64])

def word664_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_737 word664_0_738

def word664_0_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 203128949104#64)

def word664_0_741 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_739 word664_0_740

def word664_0_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 203128949104#64)

def word664_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_741 word664_0_742

def word664_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_743 word664_0_442

def word664_0_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word664_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_744 word664_0_745

def word664_0_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def word664_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word664_0_746 word664_0_747

def pass664_0 : WordLangProgHOL (BitVec 64) :=
word664_0_748
end InitECandidate.Proofs.WordStages.Parallel664
