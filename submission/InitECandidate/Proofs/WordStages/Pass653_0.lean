import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source653
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word653_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 376#64]))

def word653_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def word653_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_0 word653_0_1

def word653_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word653_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word653_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_3 word653_0_4

def word653_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word653_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_5 word653_0_6

def word653_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def word653_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_7 word653_0_8

def word653_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def word653_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_9 word653_0_10

def word653_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word653_0_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) word653_0_11 word653_0_12

def word653_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word653_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_14 word653_0_4

def word653_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word653_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_15 word653_0_16

def word653_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_13 word653_0_17

def word653_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_2 word653_0_18

def word653_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_19 word653_0_4

def word653_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 384#64)

def word653_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_20 word653_0_21

def word653_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word653_0_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word653_0_12, 653, 2)) (some 68) ([10]) (some (10, word653_0_23, 653, 3))

def word653_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_21 word653_0_24

def word653_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_22 word653_0_25

def word653_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_26 word653_0_4

def word653_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 376#64])

def word653_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_27 word653_0_28

def word653_0_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def word653_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_29 word653_0_30

def word653_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def word653_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_31 word653_0_32

def word653_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def word653_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_33 word653_0_34

def word653_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 376#64]))

def word653_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_35 word653_0_36

def word653_0_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def word653_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_37 word653_0_38

def word653_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def word653_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_39 word653_0_40

def word653_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def word653_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_41 word653_0_42

def word653_0_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def word653_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_43 word653_0_44

def word653_0_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def word653_0_47 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_45 word653_0_46

def word653_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 12

def word653_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_47 word653_0_48

def word653_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def word653_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_49 word653_0_50

def word653_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]) 12

def word653_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_51 word653_0_52

def word653_0_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def word653_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_53 word653_0_54

def word653_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64])
  12

def word653_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_55 word653_0_56

def word653_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def word653_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_57 word653_0_58

def word653_0_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64])
  12

def word653_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_59 word653_0_60

def word653_0_62 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_61 word653_0_62

def word653_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_63 word653_0_14

def word653_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_64 word653_0_1

def word653_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_65 word653_0_16

def word653_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word653_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_66 word653_0_67

def word653_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word653_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_68 word653_0_69

def word653_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_70 word653_0_48

def word653_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_71 word653_0_69

def word653_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_72 word653_0_52

def word653_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_73 word653_0_69

def word653_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_74 word653_0_56

def word653_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_75 word653_0_69

def word653_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_76 word653_0_60

def word653_0_78 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_77 word653_0_78

def word653_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12653890742059813127#64)

def word653_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_79 word653_0_80

def word653_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14585784200204367754#64)

def word653_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_81 word653_0_82

def word653_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1278438861261381767#64)

def word653_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_83 word653_0_84

def word653_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 212598772761311868#64)

def word653_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_85 word653_0_86

def word653_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 12653890742059813127#64)

def word653_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_87 word653_0_88

def word653_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_89 word653_0_48

def word653_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 14585784200204367754#64)

def word653_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_90 word653_0_91

def word653_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_92 word653_0_52

def word653_0_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1278438861261381767#64)

def word653_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_93 word653_0_94

def word653_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_95 word653_0_56

def word653_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 212598772761311868#64)

def word653_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_96 word653_0_97

def word653_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_98 word653_0_60

def word653_0_100 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_99 word653_0_100

def word653_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 11683091849979440498#64)

def word653_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_101 word653_0_102

def word653_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14992204589386555739#64)

def word653_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_103 word653_0_104

def word653_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15866167890766973222#64)

def word653_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_105 word653_0_106

def word653_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1200023580730561873#64)

def word653_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_107 word653_0_108

def word653_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 11683091849979440498#64)

def word653_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_109 word653_0_110

def word653_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_111 word653_0_48

def word653_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 14992204589386555739#64)

def word653_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_112 word653_0_113

def word653_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_114 word653_0_52

def word653_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 15866167890766973222#64)

def word653_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_115 word653_0_116

def word653_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_117 word653_0_56

def word653_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1200023580730561873#64)

def word653_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_118 word653_0_119

def word653_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_120 word653_0_60

def word653_0_122 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_121 word653_0_122

def word653_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13075984984163199792#64)

def word653_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_123 word653_0_124

def word653_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3782902503040509012#64)

def word653_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_125 word653_0_126

def word653_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8791150885551868305#64)

def word653_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_127 word653_0_128

def word653_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1825854335138010348#64)

def word653_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_129 word653_0_130

def word653_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 13075984984163199792#64)

def word653_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_131 word653_0_132

def word653_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_133 word653_0_48

def word653_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3782902503040509012#64)

def word653_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_134 word653_0_135

def word653_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_136 word653_0_52

def word653_0_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8791150885551868305#64)

def word653_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_137 word653_0_138

def word653_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_139 word653_0_56

def word653_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1825854335138010348#64)

def word653_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_140 word653_0_141

def word653_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_142 word653_0_60

def word653_0_144 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_143 word653_0_144

def word653_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7963664994991228759#64)

def word653_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_145 word653_0_146

def word653_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12257807996192067905#64)

def word653_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_147 word653_0_148

def word653_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13179524609921305146#64)

def word653_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_149 word653_0_150

def word653_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2767831111890561987#64)

def word653_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_151 word653_0_152

def word653_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 7963664994991228759#64)

def word653_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_153 word653_0_154

def word653_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_155 word653_0_48

def word653_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 12257807996192067905#64)

def word653_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_156 word653_0_157

def word653_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_158 word653_0_52

def word653_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 13179524609921305146#64)

def word653_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_159 word653_0_160

def word653_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_161 word653_0_56

def word653_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2767831111890561987#64)

def word653_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_162 word653_0_163

def word653_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_164 word653_0_60

def word653_0_166 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_165 word653_0_166

def word653_0_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16482010305593259561#64)

def word653_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_167 word653_0_168

def word653_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13488546290961988299#64)

def word653_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_169 word653_0_170

def word653_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3578621962720924518#64)

def word653_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_171 word653_0_172

def word653_0_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2681173117283399901#64)

def word653_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_173 word653_0_174

def word653_0_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 16482010305593259561#64)

def word653_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_175 word653_0_176

def word653_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_177 word653_0_48

def word653_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 13488546290961988299#64)

def word653_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_178 word653_0_179

def word653_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_180 word653_0_52

def word653_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3578621962720924518#64)

def word653_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_181 word653_0_182

def word653_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_183 word653_0_56

def word653_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2681173117283399901#64)

def word653_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_184 word653_0_185

def word653_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_186 word653_0_60

def word653_0_188 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_187 word653_0_188

def word653_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 11661927080404088775#64)

def word653_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_189 word653_0_190

def word653_0_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 553939530661941723#64)

def word653_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_191 word653_0_192

def word653_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7860678177968807019#64)

def word653_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_193 word653_0_194

def word653_0_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3208568454732775116#64)

def word653_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_195 word653_0_196

def word653_0_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 11661927080404088775#64)

def word653_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_197 word653_0_198

def word653_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_199 word653_0_48

def word653_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 553939530661941723#64)

def word653_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_200 word653_0_201

def word653_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_202 word653_0_52

def word653_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 7860678177968807019#64)

def word653_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_203 word653_0_204

def word653_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_205 word653_0_56

def word653_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3208568454732775116#64)

def word653_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_206 word653_0_207

def word653_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_208 word653_0_60

def word653_0_210 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_209 word653_0_210

def word653_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8314163329781907090#64)

def word653_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_211 word653_0_212

def word653_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11942187022798819835#64)

def word653_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_213 word653_0_214

def word653_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11282677263046157209#64)

def word653_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_215 word653_0_216

def word653_0_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1576150870752482284#64)

def word653_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_217 word653_0_218

def word653_0_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8314163329781907090#64)

def word653_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_219 word653_0_220

def word653_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_221 word653_0_48

def word653_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 11942187022798819835#64)

def word653_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_222 word653_0_223

def word653_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_224 word653_0_52

def word653_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 11282677263046157209#64)

def word653_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_225 word653_0_226

def word653_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_227 word653_0_56

def word653_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1576150870752482284#64)

def word653_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_228 word653_0_229

def word653_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_230 word653_0_60

def word653_0_232 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_231 word653_0_232

def word653_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6763840483288992073#64)

def word653_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_233 word653_0_234

def word653_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7118829427391486816#64)

def word653_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_235 word653_0_236

def word653_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4016233444936635065#64)

def word653_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_237 word653_0_238

def word653_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2630958277570195709#64)

def word653_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_239 word653_0_240

def word653_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 6763840483288992073#64)

def word653_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_241 word653_0_242

def word653_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_243 word653_0_48

def word653_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 7118829427391486816#64)

def word653_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_244 word653_0_245

def word653_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_246 word653_0_52

def word653_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4016233444936635065#64)

def word653_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_247 word653_0_248

def word653_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_249 word653_0_56

def word653_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2630958277570195709#64)

def word653_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_250 word653_0_251

def word653_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_252 word653_0_60

def word653_0_254 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_253 word653_0_254

def word653_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14515217250696892391#64)

def word653_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_255 word653_0_256

def word653_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16303087968080972555#64)

def word653_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_257 word653_0_258

def word653_0_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3656613296917993960#64)

def word653_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_259 word653_0_260

def word653_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1345095164996126785#64)

def word653_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_261 word653_0_262

def word653_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 14515217250696892391#64)

def word653_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_263 word653_0_264

def word653_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_265 word653_0_48

def word653_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 16303087968080972555#64)

def word653_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_266 word653_0_267

def word653_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_268 word653_0_52

def word653_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3656613296917993960#64)

def word653_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_269 word653_0_270

def word653_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_271 word653_0_56

def word653_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1345095164996126785#64)

def word653_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_272 word653_0_273

def word653_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_274 word653_0_60

def word653_0_276 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_275 word653_0_276

def word653_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 957117326806663081#64)

def word653_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_277 word653_0_278

def word653_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 367382125163301975#64)

def word653_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_279 word653_0_280

def word653_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15253872307375509749#64)

def word653_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_281 word653_0_282

def word653_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3396254757538665050#64)

def word653_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_283 word653_0_284

def word653_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 957117326806663081#64)

def word653_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_285 word653_0_286

def word653_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_287 word653_0_48

def word653_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 367382125163301975#64)

def word653_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_288 word653_0_289

def word653_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_290 word653_0_52

def word653_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 15253872307375509749#64)

def word653_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_291 word653_0_292

def word653_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_293 word653_0_56

def word653_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3396254757538665050#64)

def word653_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_294 word653_0_295

def word653_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_296 word653_0_60

def word653_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 352#64)

def word653_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_297 word653_0_298

def word653_0_300 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word653_0_12, 653, 4)) (some 68) ([10]) (some (10, word653_0_23, 653, 5))

def word653_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_298 word653_0_300

def word653_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_299 word653_0_301

def word653_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_302 word653_0_4

def word653_0_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 384#64])

def word653_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_303 word653_0_304

def word653_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_305 word653_0_30

def word653_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_306 word653_0_32

def word653_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_307 word653_0_34

def word653_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 384#64]))

def word653_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_308 word653_0_309

def word653_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9698021743855595808#64)

def word653_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_310 word653_0_311

def word653_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9698021743855595808#64)

def word653_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_312 word653_0_313

def word653_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def word653_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_314 word653_0_315

def word653_0_317 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_316 word653_0_317

def word653_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4658111487712502692#64)

def word653_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_318 word653_0_319

def word653_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4658111487712502692#64)

def word653_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_320 word653_0_321

def word653_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_322 word653_0_315

def word653_0_324 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_323 word653_0_324

def word653_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9475478476403788475#64)

def word653_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_325 word653_0_326

def word653_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9475478476403788475#64)

def word653_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_327 word653_0_328

def word653_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_329 word653_0_315

def word653_0_331 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_330 word653_0_331

def word653_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3895898136474990872#64)

def word653_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_332 word653_0_333

def word653_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3895898136474990872#64)

def word653_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_334 word653_0_335

def word653_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_336 word653_0_315

def word653_0_338 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_337 word653_0_338

def word653_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13897688294677189338#64)

def word653_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_339 word653_0_340

def word653_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13897688294677189338#64)

def word653_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_341 word653_0_342

def word653_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_343 word653_0_315

def word653_0_345 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_344 word653_0_345

def word653_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13692288569157338976#64)

def word653_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_346 word653_0_347

def word653_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13692288569157338976#64)

def word653_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_348 word653_0_349

def word653_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_350 word653_0_315

def word653_0_352 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_351 word653_0_352

def word653_0_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15521367811043670911#64)

def word653_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_353 word653_0_354

def word653_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15521367811043670911#64)

def word653_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_355 word653_0_356

def word653_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_357 word653_0_315

def word653_0_359 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_358 word653_0_359

def word653_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13992850401411864641#64)

def word653_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_360 word653_0_361

def word653_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13992850401411864641#64)

def word653_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_362 word653_0_363

def word653_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_364 word653_0_315

def word653_0_366 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_365 word653_0_366

def word653_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6609620042336070051#64)

def word653_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_367 word653_0_368

def word653_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6609620042336070051#64)

def word653_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_369 word653_0_370

def word653_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_371 word653_0_315

def word653_0_373 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_372 word653_0_373

def word653_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9167096575297741460#64)

def word653_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_374 word653_0_375

def word653_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9167096575297741460#64)

def word653_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_376 word653_0_377

def word653_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_378 word653_0_315

def word653_0_380 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_379 word653_0_380

def word653_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3006977925533509404#64)

def word653_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_381 word653_0_382

def word653_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3006977925533509404#64)

def word653_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_383 word653_0_384

def word653_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_385 word653_0_315

def word653_0_387 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_386 word653_0_387

def word653_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13799376210358020352#64)

def word653_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_388 word653_0_389

def word653_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13799376210358020352#64)

def word653_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_390 word653_0_391

def word653_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_392 word653_0_315

def word653_0_394 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_393 word653_0_394

def word653_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7213564696215919148#64)

def word653_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_395 word653_0_396

def word653_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7213564696215919148#64)

def word653_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_397 word653_0_398

def word653_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_399 word653_0_315

def word653_0_401 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_400 word653_0_401

def word653_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12108970941387295838#64)

def word653_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_402 word653_0_403

def word653_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12108970941387295838#64)

def word653_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_404 word653_0_405

def word653_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_406 word653_0_315

def word653_0_408 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_407 word653_0_408

def word653_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 14800348210198864764#64)

def word653_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_409 word653_0_410

def word653_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14800348210198864764#64)

def word653_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_411 word653_0_412

def word653_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_413 word653_0_315

def word653_0_415 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_414 word653_0_415

def word653_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5333217130945090002#64)

def word653_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_416 word653_0_417

def word653_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5333217130945090002#64)

def word653_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_418 word653_0_419

def word653_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_420 word653_0_315

def word653_0_422 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_421 word653_0_422

def word653_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 17191330154042290397#64)

def word653_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_423 word653_0_424

def word653_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17191330154042290397#64)

def word653_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_425 word653_0_426

def word653_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_427 word653_0_315

def word653_0_429 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_428 word653_0_429

def word653_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7728981312468502308#64)

def word653_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_430 word653_0_431

def word653_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7728981312468502308#64)

def word653_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_432 word653_0_433

def word653_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_434 word653_0_315

def word653_0_436 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_435 word653_0_436

def word653_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13479501571575199621#64)

def word653_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_437 word653_0_438

def word653_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13479501571575199621#64)

def word653_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_439 word653_0_440

def word653_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_441 word653_0_315

def word653_0_443 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_442 word653_0_443

def word653_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4632319730382815766#64)

def word653_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_444 word653_0_445

def word653_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4632319730382815766#64)

def word653_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_446 word653_0_447

def word653_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_448 word653_0_315

def word653_0_450 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_449 word653_0_450

def word653_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6183408236485651195#64)

def word653_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_451 word653_0_452

def word653_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6183408236485651195#64)

def word653_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_453 word653_0_454

def word653_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_455 word653_0_315

def word653_0_457 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_456 word653_0_457

def word653_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2344383644319854215#64)

def word653_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_458 word653_0_459

def word653_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2344383644319854215#64)

def word653_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_460 word653_0_461

def word653_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_462 word653_0_315

def word653_0_464 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_463 word653_0_464

def word653_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9541507823907846048#64)

def word653_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_465 word653_0_466

def word653_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9541507823907846048#64)

def word653_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_467 word653_0_468

def word653_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_469 word653_0_315

def word653_0_471 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_470 word653_0_471

def word653_0_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5234407941292577173#64)

def word653_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_472 word653_0_473

def word653_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5234407941292577173#64)

def word653_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_474 word653_0_475

def word653_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_476 word653_0_315

def word653_0_478 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_477 word653_0_478

def word653_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16529975799043132950#64)

def word653_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_479 word653_0_480

def word653_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16529975799043132950#64)

def word653_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_481 word653_0_482

def word653_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_483 word653_0_315

def word653_0_485 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_484 word653_0_485

def word653_0_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12351756573642376427#64)

def word653_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_486 word653_0_487

def word653_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12351756573642376427#64)

def word653_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_488 word653_0_489

def word653_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_490 word653_0_315

def word653_0_492 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_491 word653_0_492

def word653_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9426269327694809050#64)

def word653_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_493 word653_0_494

def word653_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9426269327694809050#64)

def word653_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_495 word653_0_496

def word653_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_497 word653_0_315

def word653_0_499 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_498 word653_0_499

def word653_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7379223421642392714#64)

def word653_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_500 word653_0_501

def word653_0_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7379223421642392714#64)

def word653_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_502 word653_0_503

def word653_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_504 word653_0_315

def word653_0_506 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_505 word653_0_506

def word653_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5792417538046516732#64)

def word653_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_507 word653_0_508

def word653_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5792417538046516732#64)

def word653_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_509 word653_0_510

def word653_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_511 word653_0_315

def word653_0_513 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_512 word653_0_513

def word653_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9162926010144764881#64)

def word653_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_514 word653_0_515

def word653_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9162926010144764881#64)

def word653_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_516 word653_0_517

def word653_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_518 word653_0_315

def word653_0_520 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_519 word653_0_520

def word653_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8644015420738790472#64)

def word653_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_521 word653_0_522

def word653_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8644015420738790472#64)

def word653_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_523 word653_0_524

def word653_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_525 word653_0_315

def word653_0_527 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_526 word653_0_527

def word653_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 18370314904686314414#64)

def word653_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_528 word653_0_529

def word653_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18370314904686314414#64)

def word653_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_530 word653_0_531

def word653_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_532 word653_0_315

def word653_0_534 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_533 word653_0_534

def word653_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 17975984934167627464#64)

def word653_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_535 word653_0_536

def word653_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17975984934167627464#64)

def word653_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_537 word653_0_538

def word653_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_539 word653_0_315

def word653_0_541 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_540 word653_0_541

def word653_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8719923968173632426#64)

def word653_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_542 word653_0_543

def word653_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8719923968173632426#64)

def word653_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_544 word653_0_545

def word653_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_546 word653_0_315

def word653_0_548 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_547 word653_0_548

def word653_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6379321585415610019#64)

def word653_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_549 word653_0_550

def word653_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6379321585415610019#64)

def word653_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_551 word653_0_552

def word653_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_553 word653_0_315

def word653_0_555 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_554 word653_0_555

def word653_0_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1402842025008175984#64)

def word653_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_556 word653_0_557

def word653_0_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1402842025008175984#64)

def word653_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_558 word653_0_559

def word653_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_560 word653_0_315

def word653_0_562 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_561 word653_0_562

def word653_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 888598832447275954#64)

def word653_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_563 word653_0_564

def word653_0_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 888598832447275954#64)

def word653_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_565 word653_0_566

def word653_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_567 word653_0_315

def word653_0_569 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_568 word653_0_569

def word653_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4522688638863333623#64)

def word653_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_570 word653_0_571

def word653_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4522688638863333623#64)

def word653_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_572 word653_0_573

def word653_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_574 word653_0_315

def word653_0_576 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_575 word653_0_576

def word653_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 15776483769708984925#64)

def word653_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_577 word653_0_578

def word653_0_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15776483769708984925#64)

def word653_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_579 word653_0_580

def word653_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_581 word653_0_315

def word653_0_583 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_582 word653_0_583

def word653_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 16276864970431725248#64)

def word653_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_584 word653_0_585

def word653_0_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16276864970431725248#64)

def word653_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_586 word653_0_587

def word653_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_588 word653_0_315

def word653_0_590 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_589 word653_0_590

def word653_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7646110518075161570#64)

def word653_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_591 word653_0_592

def word653_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7646110518075161570#64)

def word653_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_593 word653_0_594

def word653_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_595 word653_0_315

def word653_0_597 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_596 word653_0_597

def word653_0_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 9524343276244152831#64)

def word653_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_598 word653_0_599

def word653_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9524343276244152831#64)

def word653_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_600 word653_0_601

def word653_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_602 word653_0_315

def word653_0_604 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_603 word653_0_604

def word653_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2377296829910687932#64)

def word653_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_605 word653_0_606

def word653_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2377296829910687932#64)

def word653_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_607 word653_0_608

def word653_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_609 word653_0_315

def word653_0_611 : WordLangProgHOL (BitVec 64) :=
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

def word653_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_610 word653_0_611

def word653_0_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 203128949104#64)

def word653_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_612 word653_0_613

def word653_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 203128949104#64)

def word653_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_614 word653_0_615

def word653_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_616 word653_0_315

def word653_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_617 word653_0_8

def word653_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word653_0_618 word653_0_10

def pass653_0 : WordLangProgHOL (BitVec 64) :=
word653_0_619
theorem pass653_0_eq : WordSimp.compileExp (source653.2.2) = pass653_0 := by
  kernel_rfl
#print axioms pass653_0_eq
end InitECandidate.Proofs.WordStages
