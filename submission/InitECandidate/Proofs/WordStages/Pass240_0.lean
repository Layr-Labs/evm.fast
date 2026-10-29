import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source240
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word240_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 96#64]))

def word240_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def word240_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_0 word240_0_1

def word240_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word240_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word240_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_3 word240_0_4

def word240_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word240_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_5 word240_0_6

def word240_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def word240_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_7 word240_0_8

def word240_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def word240_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_9 word240_0_10

def word240_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word240_0_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) word240_0_11 word240_0_12

def word240_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word240_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_14 word240_0_4

def word240_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word240_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_15 word240_0_16

def word240_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_13 word240_0_17

def word240_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_2 word240_0_18

def word240_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_19 word240_0_4

def word240_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def word240_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_20 word240_0_21

def word240_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word240_0_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word240_0_12, 240, 2)) (some 68) ([8]) (some (8, word240_0_23, 240, 3))

def word240_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_21 word240_0_24

def word240_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_22 word240_0_25

def word240_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_26 word240_0_4

def word240_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 104#64])

def word240_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_27 word240_0_28

def word240_0_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def word240_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_29 word240_0_30

def word240_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def word240_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_31 word240_0_32

def word240_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def word240_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_33 word240_0_34

def word240_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def word240_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_35 word240_0_36

def word240_0_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word240_0_12, 240, 4)) (some 68) ([8]) (some (8, word240_0_23, 240, 5))

def word240_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_36 word240_0_38

def word240_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_37 word240_0_39

def word240_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_40 word240_0_4

def word240_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 112#64])

def word240_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_41 word240_0_42

def word240_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_43 word240_0_30

def word240_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_44 word240_0_32

def word240_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_45 word240_0_34

def word240_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2048#64)

def word240_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_46 word240_0_47

def word240_0_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word240_0_12, 240, 6)) (some 68) ([8]) (some (8, word240_0_23, 240, 7))

def word240_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_47 word240_0_49

def word240_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_48 word240_0_50

def word240_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_51 word240_0_4

def word240_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 96#64])

def word240_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_52 word240_0_53

def word240_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_54 word240_0_30

def word240_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_55 word240_0_32

def word240_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_56 word240_0_34

def word240_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def word240_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_57 word240_0_58

def word240_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_59 word240_0_14

def word240_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_60 word240_0_1

def word240_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def word240_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_61 word240_0_62

def word240_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def word240_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_63 word240_0_64

def word240_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_65 word240_0_14

def word240_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_66 word240_0_1

def word240_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_67 word240_0_62

def word240_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def word240_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_68 word240_0_69

def word240_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_70 word240_0_14

def word240_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_71 word240_0_1

def word240_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_72 word240_0_62

def word240_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def word240_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_73 word240_0_74

def word240_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_75 word240_0_14

def word240_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_76 word240_0_1

def word240_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_77 word240_0_62

def word240_0_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def word240_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_78 word240_0_79

def word240_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3467889160079910389#64)

def word240_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_80 word240_0_81

def word240_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3467889160079910389#64)

def word240_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_82 word240_0_83

def word240_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_84 word240_0_62

def word240_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def word240_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_85 word240_0_86

def word240_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11211440601066084391#64)

def word240_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_87 word240_0_88

def word240_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11211440601066084391#64)

def word240_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_89 word240_0_90

def word240_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_91 word240_0_62

def word240_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def word240_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_92 word240_0_93

def word240_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16785154543263219779#64)

def word240_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_94 word240_0_95

def word240_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16785154543263219779#64)

def word240_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_96 word240_0_97

def word240_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_98 word240_0_62

def word240_0_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def word240_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_99 word240_0_100

def word240_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5475067798876166378#64)

def word240_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_101 word240_0_102

def word240_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5475067798876166378#64)

def word240_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_103 word240_0_104

def word240_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_105 word240_0_62

def word240_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def word240_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_106 word240_0_107

def word240_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13967066522134337243#64)

def word240_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_108 word240_0_109

def word240_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13967066522134337243#64)

def word240_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_110 word240_0_111

def word240_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_112 word240_0_62

def word240_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def word240_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_113 word240_0_114

def word240_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12162352269144710392#64)

def word240_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_115 word240_0_116

def word240_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12162352269144710392#64)

def word240_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_117 word240_0_118

def word240_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_119 word240_0_62

def word240_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def word240_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_120 word240_0_121

def word240_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12236539336977975698#64)

def word240_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_122 word240_0_123

def word240_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12236539336977975698#64)

def word240_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_124 word240_0_125

def word240_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_126 word240_0_62

def word240_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 88#64])

def word240_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_127 word240_0_128

def word240_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8168838631237148268#64)

def word240_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_129 word240_0_130

def word240_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8168838631237148268#64)

def word240_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_131 word240_0_132

def word240_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_133 word240_0_62

def word240_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def word240_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_134 word240_0_135

def word240_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7693696211446497479#64)

def word240_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_136 word240_0_137

def word240_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7693696211446497479#64)

def word240_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_138 word240_0_139

def word240_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_140 word240_0_62

def word240_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def word240_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_141 word240_0_142

def word240_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6026757510069940497#64)

def word240_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_143 word240_0_144

def word240_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6026757510069940497#64)

def word240_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_145 word240_0_146

def word240_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_147 word240_0_62

def word240_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def word240_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_148 word240_0_149

def word240_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5425962768908068266#64)

def word240_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_150 word240_0_151

def word240_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5425962768908068266#64)

def word240_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_152 word240_0_153

def word240_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_154 word240_0_62

def word240_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def word240_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_155 word240_0_156

def word240_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4373938691328204737#64)

def word240_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_157 word240_0_158

def word240_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4373938691328204737#64)

def word240_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_159 word240_0_160

def word240_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_161 word240_0_62

def word240_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def word240_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_162 word240_0_163

def word240_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7336695293655149907#64)

def word240_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_164 word240_0_165

def word240_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7336695293655149907#64)

def word240_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_166 word240_0_167

def word240_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_168 word240_0_62

def word240_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 136#64])

def word240_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_169 word240_0_170

def word240_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10774040678445768101#64)

def word240_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_171 word240_0_172

def word240_0_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10774040678445768101#64)

def word240_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_173 word240_0_174

def word240_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_175 word240_0_62

def word240_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 144#64])

def word240_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_176 word240_0_177

def word240_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6265190034888290884#64)

def word240_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_178 word240_0_179

def word240_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6265190034888290884#64)

def word240_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_180 word240_0_181

def word240_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_182 word240_0_62

def word240_0_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 152#64])

def word240_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_183 word240_0_184

def word240_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4328568599408950463#64)

def word240_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_185 word240_0_186

def word240_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4328568599408950463#64)

def word240_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_187 word240_0_188

def word240_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_189 word240_0_62

def word240_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 160#64])

def word240_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_190 word240_0_191

def word240_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11475758621772545438#64)

def word240_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_192 word240_0_193

def word240_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11475758621772545438#64)

def word240_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_194 word240_0_195

def word240_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_196 word240_0_62

def word240_0_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 168#64])

def word240_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_197 word240_0_198

def word240_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14328116249982797230#64)

def word240_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_199 word240_0_200

def word240_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14328116249982797230#64)

def word240_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_201 word240_0_202

def word240_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_203 word240_0_62

def word240_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 176#64])

def word240_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_204 word240_0_205

def word240_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5369876075554645581#64)

def word240_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_206 word240_0_207

def word240_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5369876075554645581#64)

def word240_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_208 word240_0_209

def word240_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_210 word240_0_62

def word240_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 184#64])

def word240_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_211 word240_0_212

def word240_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3462437173510048856#64)

def word240_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_213 word240_0_214

def word240_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3462437173510048856#64)

def word240_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_215 word240_0_216

def word240_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_217 word240_0_62

def word240_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def word240_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_218 word240_0_219

def word240_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8478027213065653720#64)

def word240_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_220 word240_0_221

def word240_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8478027213065653720#64)

def word240_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_222 word240_0_223

def word240_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_224 word240_0_62

def word240_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 200#64])

def word240_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_225 word240_0_226

def word240_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9100017011721934421#64)

def word240_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_227 word240_0_228

def word240_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9100017011721934421#64)

def word240_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_229 word240_0_230

def word240_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_231 word240_0_62

def word240_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 208#64])

def word240_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_232 word240_0_233

def word240_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1092431190279867409#64)

def word240_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_234 word240_0_235

def word240_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1092431190279867409#64)

def word240_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_236 word240_0_237

def word240_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_238 word240_0_62

def word240_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def word240_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_239 word240_0_240

def word240_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11610003269932803729#64)

def word240_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_241 word240_0_242

def word240_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11610003269932803729#64)

def word240_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_243 word240_0_244

def word240_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_245 word240_0_62

def word240_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 224#64])

def word240_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_246 word240_0_247

def word240_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17741225557905763207#64)

def word240_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_248 word240_0_249

def word240_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17741225557905763207#64)

def word240_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_250 word240_0_251

def word240_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_252 word240_0_62

def word240_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 232#64])

def word240_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_253 word240_0_254

def word240_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6462564319743149778#64)

def word240_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_255 word240_0_256

def word240_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6462564319743149778#64)

def word240_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_257 word240_0_258

def word240_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_259 word240_0_62

def word240_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 240#64])

def word240_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_260 word240_0_261

def word240_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7227379955731391093#64)

def word240_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_262 word240_0_263

def word240_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7227379955731391093#64)

def word240_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_264 word240_0_265

def word240_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_266 word240_0_62

def word240_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 248#64])

def word240_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_267 word240_0_268

def word240_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3206371696687016891#64)

def word240_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_269 word240_0_270

def word240_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3206371696687016891#64)

def word240_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_271 word240_0_272

def word240_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_273 word240_0_62

def word240_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 256#64])

def word240_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_274 word240_0_275

def word240_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5387818071436330022#64)

def word240_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_276 word240_0_277

def word240_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5387818071436330022#64)

def word240_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_278 word240_0_279

def word240_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_280 word240_0_62

def word240_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 264#64])

def word240_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_281 word240_0_282

def word240_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4922937313274119005#64)

def word240_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_283 word240_0_284

def word240_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4922937313274119005#64)

def word240_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_285 word240_0_286

def word240_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_287 word240_0_62

def word240_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 272#64])

def word240_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_288 word240_0_289

def word240_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13356489281317594354#64)

def word240_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_290 word240_0_291

def word240_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13356489281317594354#64)

def word240_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_292 word240_0_293

def word240_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_294 word240_0_62

def word240_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 280#64])

def word240_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_295 word240_0_296

def word240_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10642425439793474513#64)

def word240_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_297 word240_0_298

def word240_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10642425439793474513#64)

def word240_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_299 word240_0_300

def word240_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_301 word240_0_62

def word240_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 288#64])

def word240_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_302 word240_0_303

def word240_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 370461946040184144#64)

def word240_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_304 word240_0_305

def word240_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 370461946040184144#64)

def word240_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_306 word240_0_307

def word240_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_308 word240_0_62

def word240_0_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 296#64])

def word240_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_309 word240_0_310

def word240_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13822332937032515768#64)

def word240_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_311 word240_0_312

def word240_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13822332937032515768#64)

def word240_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_313 word240_0_314

def word240_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_315 word240_0_62

def word240_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 304#64])

def word240_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_316 word240_0_317

def word240_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9797762799335725330#64)

def word240_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_318 word240_0_319

def word240_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9797762799335725330#64)

def word240_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_320 word240_0_321

def word240_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_322 word240_0_62

def word240_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 312#64])

def word240_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_323 word240_0_324

def word240_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16235845035758861537#64)

def word240_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_325 word240_0_326

def word240_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16235845035758861537#64)

def word240_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_327 word240_0_328

def word240_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_329 word240_0_62

def word240_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 320#64])

def word240_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_330 word240_0_331

def word240_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3420301289996353535#64)

def word240_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_332 word240_0_333

def word240_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3420301289996353535#64)

def word240_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_334 word240_0_335

def word240_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_336 word240_0_62

def word240_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 328#64])

def word240_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_337 word240_0_338

def word240_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14190584902117831829#64)

def word240_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_339 word240_0_340

def word240_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14190584902117831829#64)

def word240_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_341 word240_0_342

def word240_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_343 word240_0_62

def word240_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 336#64])

def word240_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_344 word240_0_345

def word240_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 307632198917377537#64)

def word240_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_346 word240_0_347

def word240_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 307632198917377537#64)

def word240_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_348 word240_0_349

def word240_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_350 word240_0_62

def word240_0_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 344#64])

def word240_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_351 word240_0_352

def word240_0_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3164220818431763392#64)

def word240_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_353 word240_0_354

def word240_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3164220818431763392#64)

def word240_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_355 word240_0_356

def word240_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_357 word240_0_62

def word240_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 352#64])

def word240_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_358 word240_0_359

def word240_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2036759370292916332#64)

def word240_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_360 word240_0_361

def word240_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2036759370292916332#64)

def word240_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_362 word240_0_363

def word240_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_364 word240_0_62

def word240_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 360#64])

def word240_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_365 word240_0_366

def word240_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2919949194864112600#64)

def word240_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_367 word240_0_368

def word240_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2919949194864112600#64)

def word240_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_369 word240_0_370

def word240_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_371 word240_0_62

def word240_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 368#64])

def word240_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_372 word240_0_373

def word240_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3071707933450340712#64)

def word240_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_374 word240_0_375

def word240_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3071707933450340712#64)

def word240_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_376 word240_0_377

def word240_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_378 word240_0_62

def word240_0_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 376#64])

def word240_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_379 word240_0_380

def word240_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2324585789792679604#64)

def word240_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_381 word240_0_382

def word240_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2324585789792679604#64)

def word240_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_383 word240_0_384

def word240_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_385 word240_0_62

def word240_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 384#64])

def word240_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_386 word240_0_387

def word240_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2810268568004841655#64)

def word240_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_388 word240_0_389

def word240_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2810268568004841655#64)

def word240_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_390 word240_0_391

def word240_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_392 word240_0_62

def word240_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 392#64])

def word240_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_393 word240_0_394

def word240_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9564373630919922159#64)

def word240_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_395 word240_0_396

def word240_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9564373630919922159#64)

def word240_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_397 word240_0_398

def word240_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_399 word240_0_62

def word240_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 400#64])

def word240_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_400 word240_0_401

def word240_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3486387617714376654#64)

def word240_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_402 word240_0_403

def word240_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3486387617714376654#64)

def word240_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_404 word240_0_405

def word240_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_406 word240_0_62

def word240_0_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 408#64])

def word240_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_407 word240_0_408

def word240_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6890280984553970309#64)

def word240_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_409 word240_0_410

def word240_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6890280984553970309#64)

def word240_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_411 word240_0_412

def word240_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_413 word240_0_62

def word240_0_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 416#64])

def word240_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_414 word240_0_415

def word240_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16819778833677118175#64)

def word240_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_416 word240_0_417

def word240_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16819778833677118175#64)

def word240_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_418 word240_0_419

def word240_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_420 word240_0_62

def word240_0_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 424#64])

def word240_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_421 word240_0_422

def word240_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8322863097767693039#64)

def word240_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_423 word240_0_424

def word240_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8322863097767693039#64)

def word240_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_425 word240_0_426

def word240_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_427 word240_0_62

def word240_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 432#64])

def word240_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_428 word240_0_429

def word240_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8027430070029584534#64)

def word240_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_430 word240_0_431

def word240_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8027430070029584534#64)

def word240_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_432 word240_0_433

def word240_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_434 word240_0_62

def word240_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 440#64])

def word240_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_435 word240_0_436

def word240_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6820710890943096971#64)

def word240_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_437 word240_0_438

def word240_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6820710890943096971#64)

def word240_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_439 word240_0_440

def word240_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_441 word240_0_62

def word240_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 448#64])

def word240_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_442 word240_0_443

def word240_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4336430283471490485#64)

def word240_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_444 word240_0_445

def word240_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4336430283471490485#64)

def word240_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_446 word240_0_447

def word240_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_448 word240_0_62

def word240_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 456#64])

def word240_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_449 word240_0_450

def word240_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8605430690499325776#64)

def word240_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_451 word240_0_452

def word240_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8605430690499325776#64)

def word240_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_453 word240_0_454

def word240_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_455 word240_0_62

def word240_0_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 464#64])

def word240_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_456 word240_0_457

def word240_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2537147804892644646#64)

def word240_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_458 word240_0_459

def word240_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2537147804892644646#64)

def word240_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_460 word240_0_461

def word240_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_462 word240_0_62

def word240_0_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 472#64])

def word240_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_463 word240_0_464

def word240_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9527129336064797123#64)

def word240_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_465 word240_0_466

def word240_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9527129336064797123#64)

def word240_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_467 word240_0_468

def word240_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_469 word240_0_62

def word240_0_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 480#64])

def word240_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_470 word240_0_471

def word240_0_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3796763180038200020#64)

def word240_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_472 word240_0_473

def word240_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3796763180038200020#64)

def word240_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_474 word240_0_475

def word240_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_476 word240_0_62

def word240_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 488#64])

def word240_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_477 word240_0_478

def word240_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14555780679623777547#64)

def word240_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_479 word240_0_480

def word240_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14555780679623777547#64)

def word240_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_481 word240_0_482

def word240_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_483 word240_0_62

def word240_0_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 496#64])

def word240_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_484 word240_0_485

def word240_0_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16096546738174787888#64)

def word240_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_486 word240_0_487

def word240_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16096546738174787888#64)

def word240_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_488 word240_0_489

def word240_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_490 word240_0_62

def word240_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 504#64])

def word240_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_491 word240_0_492

def word240_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13543108016013510813#64)

def word240_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_493 word240_0_494

def word240_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13543108016013510813#64)

def word240_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_495 word240_0_496

def word240_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_497 word240_0_62

def word240_0_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 512#64])

def word240_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_498 word240_0_499

def word240_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15258290724352943759#64)

def word240_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_500 word240_0_501

def word240_0_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15258290724352943759#64)

def word240_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_502 word240_0_503

def word240_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_504 word240_0_62

def word240_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 520#64])

def word240_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_505 word240_0_506

def word240_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11684343760181785733#64)

def word240_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_507 word240_0_508

def word240_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11684343760181785733#64)

def word240_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_509 word240_0_510

def word240_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_511 word240_0_62

def word240_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 528#64])

def word240_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_512 word240_0_513

def word240_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13949822952470354220#64)

def word240_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_514 word240_0_515

def word240_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13949822952470354220#64)

def word240_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_516 word240_0_517

def word240_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_518 word240_0_62

def word240_0_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 536#64])

def word240_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_519 word240_0_520

def word240_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16945894817209373553#64)

def word240_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_521 word240_0_522

def word240_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16945894817209373553#64)

def word240_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_523 word240_0_524

def word240_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_525 word240_0_62

def word240_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 544#64])

def word240_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_526 word240_0_527

def word240_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9646352642919828877#64)

def word240_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_528 word240_0_529

def word240_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9646352642919828877#64)

def word240_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_530 word240_0_531

def word240_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_532 word240_0_62

def word240_0_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 552#64])

def word240_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_533 word240_0_534

def word240_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18119732394455916553#64)

def word240_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_535 word240_0_536

def word240_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18119732394455916553#64)

def word240_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_537 word240_0_538

def word240_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_539 word240_0_62

def word240_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 560#64])

def word240_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_540 word240_0_541

def word240_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17007273452497969503#64)

def word240_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_542 word240_0_543

def word240_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17007273452497969503#64)

def word240_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_544 word240_0_545

def word240_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_546 word240_0_62

def word240_0_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 568#64])

def word240_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_547 word240_0_548

def word240_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12322822771725565612#64)

def word240_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_549 word240_0_550

def word240_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12322822771725565612#64)

def word240_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_551 word240_0_552

def word240_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_553 word240_0_62

def word240_0_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 576#64])

def word240_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_554 word240_0_555

def word240_0_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15333140336139103893#64)

def word240_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_556 word240_0_557

def word240_0_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15333140336139103893#64)

def word240_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_558 word240_0_559

def word240_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_560 word240_0_62

def word240_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 584#64])

def word240_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_561 word240_0_562

def word240_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5107348632695414249#64)

def word240_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_563 word240_0_564

def word240_0_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5107348632695414249#64)

def word240_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_565 word240_0_566

def word240_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_567 word240_0_62

def word240_0_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 592#64])

def word240_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_568 word240_0_569

def word240_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14664322284665479009#64)

def word240_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_570 word240_0_571

def word240_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14664322284665479009#64)

def word240_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_572 word240_0_573

def word240_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_574 word240_0_62

def word240_0_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 600#64])

def word240_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_575 word240_0_576

def word240_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11886449177369357420#64)

def word240_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_577 word240_0_578

def word240_0_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11886449177369357420#64)

def word240_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_579 word240_0_580

def word240_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_581 word240_0_62

def word240_0_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 608#64])

def word240_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_582 word240_0_583

def word240_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13147546151981519864#64)

def word240_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_584 word240_0_585

def word240_0_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13147546151981519864#64)

def word240_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_586 word240_0_587

def word240_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_588 word240_0_62

def word240_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 616#64])

def word240_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_589 word240_0_590

def word240_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11665373399896817451#64)

def word240_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_591 word240_0_592

def word240_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11665373399896817451#64)

def word240_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_593 word240_0_594

def word240_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_595 word240_0_62

def word240_0_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 624#64])

def word240_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_596 word240_0_597

def word240_0_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 92424688682962637#64)

def word240_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_598 word240_0_599

def word240_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 92424688682962637#64)

def word240_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_600 word240_0_601

def word240_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_602 word240_0_62

def word240_0_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 632#64])

def word240_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_603 word240_0_604

def word240_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9219292227730439048#64)

def word240_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_605 word240_0_606

def word240_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9219292227730439048#64)

def word240_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_607 word240_0_608

def word240_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_609 word240_0_62

def word240_0_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 640#64])

def word240_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_610 word240_0_611

def word240_0_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3680535539744234445#64)

def word240_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_612 word240_0_613

def word240_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3680535539744234445#64)

def word240_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_614 word240_0_615

def word240_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_616 word240_0_62

def word240_0_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 648#64])

def word240_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_617 word240_0_618

def word240_0_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1892576147470926227#64)

def word240_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_619 word240_0_620

def word240_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1892576147470926227#64)

def word240_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_621 word240_0_622

def word240_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_623 word240_0_62

def word240_0_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 656#64])

def word240_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_624 word240_0_625

def word240_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12834539778033856447#64)

def word240_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_626 word240_0_627

def word240_0_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12834539778033856447#64)

def word240_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_628 word240_0_629

def word240_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_630 word240_0_62

def word240_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 664#64])

def word240_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_631 word240_0_632

def word240_0_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12315947082840807554#64)

def word240_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_633 word240_0_634

def word240_0_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12315947082840807554#64)

def word240_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_635 word240_0_636

def word240_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_637 word240_0_62

def word240_0_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 672#64])

def word240_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_638 word240_0_639

def word240_0_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 624466185408187786#64)

def word240_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_640 word240_0_641

def word240_0_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 624466185408187786#64)

def word240_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_642 word240_0_643

def word240_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_644 word240_0_62

def word240_0_646 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 680#64])

def word240_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_645 word240_0_646

def word240_0_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6274640398404646490#64)

def word240_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_647 word240_0_648

def word240_0_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6274640398404646490#64)

def word240_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_649 word240_0_650

def word240_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_651 word240_0_62

def word240_0_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 688#64])

def word240_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_652 word240_0_653

def word240_0_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3032155653827377631#64)

def word240_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_654 word240_0_655

def word240_0_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3032155653827377631#64)

def word240_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_656 word240_0_657

def word240_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_658 word240_0_62

def word240_0_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 696#64])

def word240_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_659 word240_0_660

def word240_0_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11312800367795123152#64)

def word240_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_661 word240_0_662

def word240_0_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11312800367795123152#64)

def word240_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_663 word240_0_664

def word240_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_665 word240_0_62

def word240_0_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 704#64])

def word240_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_666 word240_0_667

def word240_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8005893631376602110#64)

def word240_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_668 word240_0_669

def word240_0_671 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8005893631376602110#64)

def word240_0_672 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_670 word240_0_671

def word240_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_672 word240_0_62

def word240_0_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 712#64])

def word240_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_673 word240_0_674

def word240_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14546998761574957247#64)

def word240_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_675 word240_0_676

def word240_0_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14546998761574957247#64)

def word240_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_677 word240_0_678

def word240_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_679 word240_0_62

def word240_0_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 720#64])

def word240_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_680 word240_0_681

def word240_0_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13808291357847346201#64)

def word240_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_682 word240_0_683

def word240_0_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13808291357847346201#64)

def word240_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_684 word240_0_685

def word240_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_686 word240_0_62

def word240_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 728#64])

def word240_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_687 word240_0_688

def word240_0_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7426889803764604373#64)

def word240_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_689 word240_0_690

def word240_0_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7426889803764604373#64)

def word240_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_691 word240_0_692

def word240_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_693 word240_0_62

def word240_0_695 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 736#64])

def word240_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_694 word240_0_695

def word240_0_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16082005984671309799#64)

def word240_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_696 word240_0_697

def word240_0_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16082005984671309799#64)

def word240_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_698 word240_0_699

def word240_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_700 word240_0_62

def word240_0_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 744#64])

def word240_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_701 word240_0_702

def word240_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14588286460061809342#64)

def word240_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_703 word240_0_704

def word240_0_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14588286460061809342#64)

def word240_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_705 word240_0_706

def word240_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_707 word240_0_62

def word240_0_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 752#64])

def word240_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_708 word240_0_709

def word240_0_711 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17728765866657323141#64)

def word240_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_710 word240_0_711

def word240_0_713 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17728765866657323141#64)

def word240_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_712 word240_0_713

def word240_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_714 word240_0_62

def word240_0_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 760#64])

def word240_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_715 word240_0_716

def word240_0_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15497068249977176230#64)

def word240_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_717 word240_0_718

def word240_0_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15497068249977176230#64)

def word240_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_719 word240_0_720

def word240_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_721 word240_0_62

def word240_0_723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 768#64])

def word240_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_722 word240_0_723

def word240_0_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7690828795371003953#64)

def word240_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_724 word240_0_725

def word240_0_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7690828795371003953#64)

def word240_0_728 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_726 word240_0_727

def word240_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_728 word240_0_62

def word240_0_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 776#64])

def word240_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_729 word240_0_730

def word240_0_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1324886602002475454#64)

def word240_0_733 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_731 word240_0_732

def word240_0_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1324886602002475454#64)

def word240_0_735 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_733 word240_0_734

def word240_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_735 word240_0_62

def word240_0_737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 784#64])

def word240_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_736 word240_0_737

def word240_0_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18323441304716978721#64)

def word240_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_738 word240_0_739

def word240_0_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18323441304716978721#64)

def word240_0_742 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_740 word240_0_741

def word240_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_742 word240_0_62

def word240_0_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 792#64])

def word240_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_743 word240_0_744

def word240_0_746 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13856354361931240139#64)

def word240_0_747 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_745 word240_0_746

def word240_0_748 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13856354361931240139#64)

def word240_0_749 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_747 word240_0_748

def word240_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_749 word240_0_62

def word240_0_751 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 800#64])

def word240_0_752 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_750 word240_0_751

def word240_0_753 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16851886841088652577#64)

def word240_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_752 word240_0_753

def word240_0_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16851886841088652577#64)

def word240_0_756 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_754 word240_0_755

def word240_0_757 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_756 word240_0_62

def word240_0_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 808#64])

def word240_0_759 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_757 word240_0_758

def word240_0_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 769057034638164883#64)

def word240_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_759 word240_0_760

def word240_0_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 769057034638164883#64)

def word240_0_763 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_761 word240_0_762

def word240_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_763 word240_0_62

def word240_0_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 816#64])

def word240_0_766 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_764 word240_0_765

def word240_0_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12759459676965692222#64)

def word240_0_768 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_766 word240_0_767

def word240_0_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12759459676965692222#64)

def word240_0_770 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_768 word240_0_769

def word240_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_770 word240_0_62

def word240_0_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 824#64])

def word240_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_771 word240_0_772

def word240_0_774 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4950902458522835297#64)

def word240_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_773 word240_0_774

def word240_0_776 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4950902458522835297#64)

def word240_0_777 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_775 word240_0_776

def word240_0_778 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_777 word240_0_62

def word240_0_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 832#64])

def word240_0_780 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_778 word240_0_779

def word240_0_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8966028197115305569#64)

def word240_0_782 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_780 word240_0_781

def word240_0_783 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8966028197115305569#64)

def word240_0_784 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_782 word240_0_783

def word240_0_785 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_784 word240_0_62

def word240_0_786 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 840#64])

def word240_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_785 word240_0_786

def word240_0_788 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7266436947758633777#64)

def word240_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_787 word240_0_788

def word240_0_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7266436947758633777#64)

def word240_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_789 word240_0_790

def word240_0_792 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_791 word240_0_62

def word240_0_793 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 848#64])

def word240_0_794 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_792 word240_0_793

def word240_0_795 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10071477786334422691#64)

def word240_0_796 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_794 word240_0_795

def word240_0_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10071477786334422691#64)

def word240_0_798 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_796 word240_0_797

def word240_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_798 word240_0_62

def word240_0_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 856#64])

def word240_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_799 word240_0_800

def word240_0_802 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7306989794471028984#64)

def word240_0_803 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_801 word240_0_802

def word240_0_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7306989794471028984#64)

def word240_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_803 word240_0_804

def word240_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_805 word240_0_62

def word240_0_807 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 864#64])

def word240_0_808 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_806 word240_0_807

def word240_0_809 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7084305315825048956#64)

def word240_0_810 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_808 word240_0_809

def word240_0_811 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7084305315825048956#64)

def word240_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_810 word240_0_811

def word240_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_812 word240_0_62

def word240_0_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 872#64])

def word240_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_813 word240_0_814

def word240_0_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7029210297249303693#64)

def word240_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_815 word240_0_816

def word240_0_818 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7029210297249303693#64)

def word240_0_819 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_817 word240_0_818

def word240_0_820 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_819 word240_0_62

def word240_0_821 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 880#64])

def word240_0_822 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_820 word240_0_821

def word240_0_823 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13888135131756750481#64)

def word240_0_824 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_822 word240_0_823

def word240_0_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13888135131756750481#64)

def word240_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_824 word240_0_825

def word240_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_826 word240_0_62

def word240_0_828 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 888#64])

def word240_0_829 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_827 word240_0_828

def word240_0_830 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14177739452029277007#64)

def word240_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_829 word240_0_830

def word240_0_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14177739452029277007#64)

def word240_0_833 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_831 word240_0_832

def word240_0_834 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_833 word240_0_62

def word240_0_835 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 896#64])

def word240_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_834 word240_0_835

def word240_0_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14252389220175874436#64)

def word240_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_836 word240_0_837

def word240_0_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14252389220175874436#64)

def word240_0_840 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_838 word240_0_839

def word240_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_840 word240_0_62

def word240_0_842 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 904#64])

def word240_0_843 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_841 word240_0_842

def word240_0_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9811086372826997062#64)

def word240_0_845 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_843 word240_0_844

def word240_0_846 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9811086372826997062#64)

def word240_0_847 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_845 word240_0_846

def word240_0_848 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_847 word240_0_62

def word240_0_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 912#64])

def word240_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_848 word240_0_849

def word240_0_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4148236750813913193#64)

def word240_0_852 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_850 word240_0_851

def word240_0_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4148236750813913193#64)

def word240_0_854 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_852 word240_0_853

def word240_0_855 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_854 word240_0_62

def word240_0_856 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 920#64])

def word240_0_857 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_855 word240_0_856

def word240_0_858 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16270233324326695721#64)

def word240_0_859 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_857 word240_0_858

def word240_0_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16270233324326695721#64)

def word240_0_861 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_859 word240_0_860

def word240_0_862 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_861 word240_0_62

def word240_0_863 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 928#64])

def word240_0_864 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_862 word240_0_863

def word240_0_865 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13946718005913151880#64)

def word240_0_866 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_864 word240_0_865

def word240_0_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13946718005913151880#64)

def word240_0_868 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_866 word240_0_867

def word240_0_869 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_868 word240_0_62

def word240_0_870 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 936#64])

def word240_0_871 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_869 word240_0_870

def word240_0_872 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3711126838644903941#64)

def word240_0_873 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_871 word240_0_872

def word240_0_874 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3711126838644903941#64)

def word240_0_875 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_873 word240_0_874

def word240_0_876 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_875 word240_0_62

def word240_0_877 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 944#64])

def word240_0_878 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_876 word240_0_877

def word240_0_879 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16759306985766108712#64)

def word240_0_880 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_878 word240_0_879

def word240_0_881 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16759306985766108712#64)

def word240_0_882 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_880 word240_0_881

def word240_0_883 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_882 word240_0_62

def word240_0_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 952#64])

def word240_0_885 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_883 word240_0_884

def word240_0_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3933481249500794299#64)

def word240_0_887 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_885 word240_0_886

def word240_0_888 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3933481249500794299#64)

def word240_0_889 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_887 word240_0_888

def word240_0_890 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_889 word240_0_62

def word240_0_891 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 960#64])

def word240_0_892 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_890 word240_0_891

def word240_0_893 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1118330456063409845#64)

def word240_0_894 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_892 word240_0_893

def word240_0_895 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1118330456063409845#64)

def word240_0_896 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_894 word240_0_895

def word240_0_897 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_896 word240_0_62

def word240_0_898 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 968#64])

def word240_0_899 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_897 word240_0_898

def word240_0_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16690822807669725318#64)

def word240_0_901 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_899 word240_0_900

def word240_0_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16690822807669725318#64)

def word240_0_903 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_901 word240_0_902

def word240_0_904 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_903 word240_0_62

def word240_0_905 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 976#64])

def word240_0_906 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_904 word240_0_905

def word240_0_907 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10321710174032666548#64)

def word240_0_908 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_906 word240_0_907

def word240_0_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10321710174032666548#64)

def word240_0_910 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_908 word240_0_909

def word240_0_911 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_910 word240_0_62

def word240_0_912 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 984#64])

def word240_0_913 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_911 word240_0_912

def word240_0_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6645715209169319136#64)

def word240_0_915 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_913 word240_0_914

def word240_0_916 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6645715209169319136#64)

def word240_0_917 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_915 word240_0_916

def word240_0_918 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_917 word240_0_62

def word240_0_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 992#64])

def word240_0_920 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_918 word240_0_919

def word240_0_921 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14999431457205804696#64)

def word240_0_922 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_920 word240_0_921

def word240_0_923 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14999431457205804696#64)

def word240_0_924 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_922 word240_0_923

def word240_0_925 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_924 word240_0_62

def word240_0_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1000#64])

def word240_0_927 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_925 word240_0_926

def word240_0_928 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9193974944397644221#64)

def word240_0_929 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_927 word240_0_928

def word240_0_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9193974944397644221#64)

def word240_0_931 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_929 word240_0_930

def word240_0_932 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_931 word240_0_62

def word240_0_933 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1008#64])

def word240_0_934 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_932 word240_0_933

def word240_0_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10997307108222598233#64)

def word240_0_936 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_934 word240_0_935

def word240_0_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10997307108222598233#64)

def word240_0_938 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_936 word240_0_937

def word240_0_939 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_938 word240_0_62

def word240_0_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1016#64])

def word240_0_941 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_939 word240_0_940

def word240_0_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17852298416714530259#64)

def word240_0_943 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_941 word240_0_942

def word240_0_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17852298416714530259#64)

def word240_0_945 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_943 word240_0_944

def word240_0_946 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_945 word240_0_62

def word240_0_947 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1024#64])

def word240_0_948 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_946 word240_0_947

def word240_0_949 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13682468819463763654#64)

def word240_0_950 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_948 word240_0_949

def word240_0_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13682468819463763654#64)

def word240_0_952 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_950 word240_0_951

def word240_0_953 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_952 word240_0_62

def word240_0_954 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1032#64])

def word240_0_955 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_953 word240_0_954

def word240_0_956 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17533508449362819567#64)

def word240_0_957 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_955 word240_0_956

def word240_0_958 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17533508449362819567#64)

def word240_0_959 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_957 word240_0_958

def word240_0_960 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_959 word240_0_62

def word240_0_961 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1040#64])

def word240_0_962 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_960 word240_0_961

def word240_0_963 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5119082511933781574#64)

def word240_0_964 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_962 word240_0_963

def word240_0_965 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5119082511933781574#64)

def word240_0_966 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_964 word240_0_965

def word240_0_967 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_966 word240_0_62

def word240_0_968 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1048#64])

def word240_0_969 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_967 word240_0_968

def word240_0_970 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18384370464483103265#64)

def word240_0_971 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_969 word240_0_970

def word240_0_972 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18384370464483103265#64)

def word240_0_973 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_971 word240_0_972

def word240_0_974 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_973 word240_0_62

def word240_0_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1056#64])

def word240_0_976 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_974 word240_0_975

def word240_0_977 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12990861760746396188#64)

def word240_0_978 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_976 word240_0_977

def word240_0_979 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12990861760746396188#64)

def word240_0_980 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_978 word240_0_979

def word240_0_981 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_980 word240_0_62

def word240_0_982 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1064#64])

def word240_0_983 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_981 word240_0_982

def word240_0_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 45569211422086573#64)

def word240_0_985 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_983 word240_0_984

def word240_0_986 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 45569211422086573#64)

def word240_0_987 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_985 word240_0_986

def word240_0_988 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_987 word240_0_62

def word240_0_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1072#64])

def word240_0_990 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_988 word240_0_989

def word240_0_991 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1420783178076928847#64)

def word240_0_992 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_990 word240_0_991

def word240_0_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1420783178076928847#64)

def word240_0_994 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_992 word240_0_993

def word240_0_995 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_994 word240_0_62

def word240_0_996 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1080#64])

def word240_0_997 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_995 word240_0_996

def word240_0_998 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14261549653343708295#64)

def word240_0_999 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_997 word240_0_998

def word240_0_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14261549653343708295#64)

def word240_0_1001 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_999 word240_0_1000

def word240_0_1002 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1001 word240_0_62

def word240_0_1003 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1088#64])

def word240_0_1004 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1002 word240_0_1003

def word240_0_1005 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8028620891772028719#64)

def word240_0_1006 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1004 word240_0_1005

def word240_0_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8028620891772028719#64)

def word240_0_1008 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1006 word240_0_1007

def word240_0_1009 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1008 word240_0_62

def word240_0_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1096#64])

def word240_0_1011 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1009 word240_0_1010

def word240_0_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3012752997787233642#64)

def word240_0_1013 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1011 word240_0_1012

def word240_0_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3012752997787233642#64)

def word240_0_1015 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1013 word240_0_1014

def word240_0_1016 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1015 word240_0_62

def word240_0_1017 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1104#64])

def word240_0_1018 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1016 word240_0_1017

def word240_0_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6485064407427613008#64)

def word240_0_1020 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1018 word240_0_1019

def word240_0_1021 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6485064407427613008#64)

def word240_0_1022 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1020 word240_0_1021

def word240_0_1023 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1022 word240_0_62

def word240_0_1024 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1112#64])

def word240_0_1025 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1023 word240_0_1024

def word240_0_1026 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9024665051920482203#64)

def word240_0_1027 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1025 word240_0_1026

def word240_0_1028 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9024665051920482203#64)

def word240_0_1029 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1027 word240_0_1028

def word240_0_1030 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1029 word240_0_62

def word240_0_1031 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1120#64])

def word240_0_1032 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1030 word240_0_1031

def word240_0_1033 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 509635415706274098#64)

def word240_0_1034 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1032 word240_0_1033

def word240_0_1035 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 509635415706274098#64)

def word240_0_1036 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1034 word240_0_1035

def word240_0_1037 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1036 word240_0_62

def word240_0_1038 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1128#64])

def word240_0_1039 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1037 word240_0_1038

def word240_0_1040 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 513790109098180968#64)

def word240_0_1041 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1039 word240_0_1040

def word240_0_1042 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 513790109098180968#64)

def word240_0_1043 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1041 word240_0_1042

def word240_0_1044 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1043 word240_0_62

def word240_0_1045 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1136#64])

def word240_0_1046 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1044 word240_0_1045

def word240_0_1047 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6654427682542765749#64)

def word240_0_1048 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1046 word240_0_1047

def word240_0_1049 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6654427682542765749#64)

def word240_0_1050 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1048 word240_0_1049

def word240_0_1051 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1050 word240_0_62

def word240_0_1052 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1144#64])

def word240_0_1053 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1051 word240_0_1052

def word240_0_1054 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3185811144024273606#64)

def word240_0_1055 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1053 word240_0_1054

def word240_0_1056 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3185811144024273606#64)

def word240_0_1057 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1055 word240_0_1056

def word240_0_1058 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1057 word240_0_62

def word240_0_1059 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1152#64])

def word240_0_1060 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1058 word240_0_1059

def word240_0_1061 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2642828698713700799#64)

def word240_0_1062 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1060 word240_0_1061

def word240_0_1063 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2642828698713700799#64)

def word240_0_1064 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1062 word240_0_1063

def word240_0_1065 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1064 word240_0_62

def word240_0_1066 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1160#64])

def word240_0_1067 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1065 word240_0_1066

def word240_0_1068 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8403734739674248209#64)

def word240_0_1069 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1067 word240_0_1068

def word240_0_1070 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8403734739674248209#64)

def word240_0_1071 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1069 word240_0_1070

def word240_0_1072 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1071 word240_0_62

def word240_0_1073 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1168#64])

def word240_0_1074 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1072 word240_0_1073

def word240_0_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4570195437231161528#64)

def word240_0_1076 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1074 word240_0_1075

def word240_0_1077 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4570195437231161528#64)

def word240_0_1078 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1076 word240_0_1077

def word240_0_1079 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1078 word240_0_62

def word240_0_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1176#64])

def word240_0_1081 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1079 word240_0_1080

def word240_0_1082 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2865159620061659274#64)

def word240_0_1083 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1081 word240_0_1082

def word240_0_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2865159620061659274#64)

def word240_0_1085 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1083 word240_0_1084

def word240_0_1086 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1085 word240_0_62

def word240_0_1087 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1184#64])

def word240_0_1088 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1086 word240_0_1087

def word240_0_1089 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11834257535751936085#64)

def word240_0_1090 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1088 word240_0_1089

def word240_0_1091 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11834257535751936085#64)

def word240_0_1092 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1090 word240_0_1091

def word240_0_1093 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1092 word240_0_62

def word240_0_1094 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1192#64])

def word240_0_1095 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1093 word240_0_1094

def word240_0_1096 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11238910945741517983#64)

def word240_0_1097 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1095 word240_0_1096

def word240_0_1098 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11238910945741517983#64)

def word240_0_1099 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1097 word240_0_1098

def word240_0_1100 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1099 word240_0_62

def word240_0_1101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1200#64])

def word240_0_1102 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1100 word240_0_1101

def word240_0_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5051471170685666284#64)

def word240_0_1104 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1102 word240_0_1103

def word240_0_1105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5051471170685666284#64)

def word240_0_1106 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1104 word240_0_1105

def word240_0_1107 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1106 word240_0_62

def word240_0_1108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1208#64])

def word240_0_1109 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1107 word240_0_1108

def word240_0_1110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8388529781081192817#64)

def word240_0_1111 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1109 word240_0_1110

def word240_0_1112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8388529781081192817#64)

def word240_0_1113 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1111 word240_0_1112

def word240_0_1114 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1113 word240_0_62

def word240_0_1115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1216#64])

def word240_0_1116 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1114 word240_0_1115

def word240_0_1117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4111925609465979383#64)

def word240_0_1118 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1116 word240_0_1117

def word240_0_1119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4111925609465979383#64)

def word240_0_1120 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1118 word240_0_1119

def word240_0_1121 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1120 word240_0_62

def word240_0_1122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1224#64])

def word240_0_1123 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1121 word240_0_1122

def word240_0_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6127044969543437945#64)

def word240_0_1125 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1123 word240_0_1124

def word240_0_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6127044969543437945#64)

def word240_0_1127 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1125 word240_0_1126

def word240_0_1128 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1127 word240_0_62

def word240_0_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1232#64])

def word240_0_1130 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1128 word240_0_1129

def word240_0_1131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6753662340923002970#64)

def word240_0_1132 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1130 word240_0_1131

def word240_0_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6753662340923002970#64)

def word240_0_1134 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1132 word240_0_1133

def word240_0_1135 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1134 word240_0_62

def word240_0_1136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1240#64])

def word240_0_1137 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1135 word240_0_1136

def word240_0_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8574440873971553187#64)

def word240_0_1139 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1137 word240_0_1138

def word240_0_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8574440873971553187#64)

def word240_0_1141 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1139 word240_0_1140

def word240_0_1142 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1141 word240_0_62

def word240_0_1143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1248#64])

def word240_0_1144 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1142 word240_0_1143

def word240_0_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18394326828626289069#64)

def word240_0_1146 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1144 word240_0_1145

def word240_0_1147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18394326828626289069#64)

def word240_0_1148 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1146 word240_0_1147

def word240_0_1149 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1148 word240_0_62

def word240_0_1150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1256#64])

def word240_0_1151 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1149 word240_0_1150

def word240_0_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10155487541343898339#64)

def word240_0_1153 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1151 word240_0_1152

def word240_0_1154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10155487541343898339#64)

def word240_0_1155 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1153 word240_0_1154

def word240_0_1156 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1155 word240_0_62

def word240_0_1157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1264#64])

def word240_0_1158 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1156 word240_0_1157

def word240_0_1159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1481155093728913364#64)

def word240_0_1160 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1158 word240_0_1159

def word240_0_1161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1481155093728913364#64)

def word240_0_1162 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1160 word240_0_1161

def word240_0_1163 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1162 word240_0_62

def word240_0_1164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1272#64])

def word240_0_1165 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1163 word240_0_1164

def word240_0_1166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8007640090153561430#64)

def word240_0_1167 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1165 word240_0_1166

def word240_0_1168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8007640090153561430#64)

def word240_0_1169 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1167 word240_0_1168

def word240_0_1170 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1169 word240_0_62

def word240_0_1171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1280#64])

def word240_0_1172 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1170 word240_0_1171

def word240_0_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13202094277331385963#64)

def word240_0_1174 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1172 word240_0_1173

def word240_0_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13202094277331385963#64)

def word240_0_1176 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1174 word240_0_1175

def word240_0_1177 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1176 word240_0_62

def word240_0_1178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1288#64])

def word240_0_1179 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1177 word240_0_1178

def word240_0_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3699131559765823562#64)

def word240_0_1181 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1179 word240_0_1180

def word240_0_1182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3699131559765823562#64)

def word240_0_1183 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1181 word240_0_1182

def word240_0_1184 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1183 word240_0_62

def word240_0_1185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1296#64])

def word240_0_1186 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1184 word240_0_1185

def word240_0_1187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13528641530791972254#64)

def word240_0_1188 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1186 word240_0_1187

def word240_0_1189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13528641530791972254#64)

def word240_0_1190 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1188 word240_0_1189

def word240_0_1191 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1190 word240_0_62

def word240_0_1192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1304#64])

def word240_0_1193 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1191 word240_0_1192

def word240_0_1194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 340637930261636494#64)

def word240_0_1195 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1193 word240_0_1194

def word240_0_1196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 340637930261636494#64)

def word240_0_1197 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1195 word240_0_1196

def word240_0_1198 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1197 word240_0_62

def word240_0_1199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1312#64])

def word240_0_1200 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1198 word240_0_1199

def word240_0_1201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15870710482613367463#64)

def word240_0_1202 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1200 word240_0_1201

def word240_0_1203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15870710482613367463#64)

def word240_0_1204 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1202 word240_0_1203

def word240_0_1205 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1204 word240_0_62

def word240_0_1206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1320#64])

def word240_0_1207 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1205 word240_0_1206

def word240_0_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17172055514406784034#64)

def word240_0_1209 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1207 word240_0_1208

def word240_0_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17172055514406784034#64)

def word240_0_1211 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1209 word240_0_1210

def word240_0_1212 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1211 word240_0_62

def word240_0_1213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1328#64])

def word240_0_1214 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1212 word240_0_1213

def word240_0_1215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14133020127007460970#64)

def word240_0_1216 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1214 word240_0_1215

def word240_0_1217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14133020127007460970#64)

def word240_0_1218 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1216 word240_0_1217

def word240_0_1219 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1218 word240_0_62

def word240_0_1220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1336#64])

def word240_0_1221 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1219 word240_0_1220

def word240_0_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3965534581494204130#64)

def word240_0_1223 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1221 word240_0_1222

def word240_0_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3965534581494204130#64)

def word240_0_1225 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1223 word240_0_1224

def word240_0_1226 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1225 word240_0_62

def word240_0_1227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1344#64])

def word240_0_1228 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1226 word240_0_1227

def word240_0_1229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3173447334197983662#64)

def word240_0_1230 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1228 word240_0_1229

def word240_0_1231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3173447334197983662#64)

def word240_0_1232 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1230 word240_0_1231

def word240_0_1233 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1232 word240_0_62

def word240_0_1234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1352#64])

def word240_0_1235 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1233 word240_0_1234

def word240_0_1236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14368533742882113932#64)

def word240_0_1237 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1235 word240_0_1236

def word240_0_1238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14368533742882113932#64)

def word240_0_1239 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1237 word240_0_1238

def word240_0_1240 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1239 word240_0_62

def word240_0_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1360#64])

def word240_0_1242 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1240 word240_0_1241

def word240_0_1243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12415197558330999895#64)

def word240_0_1244 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1242 word240_0_1243

def word240_0_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12415197558330999895#64)

def word240_0_1246 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1244 word240_0_1245

def word240_0_1247 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1246 word240_0_62

def word240_0_1248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1368#64])

def word240_0_1249 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1247 word240_0_1248

def word240_0_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11736201854900641778#64)

def word240_0_1251 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1249 word240_0_1250

def word240_0_1252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11736201854900641778#64)

def word240_0_1253 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1251 word240_0_1252

def word240_0_1254 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1253 word240_0_62

def word240_0_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1376#64])

def word240_0_1256 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1254 word240_0_1255

def word240_0_1257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16476971752832647834#64)

def word240_0_1258 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1256 word240_0_1257

def word240_0_1259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16476971752832647834#64)

def word240_0_1260 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1258 word240_0_1259

def word240_0_1261 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1260 word240_0_62

def word240_0_1262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1384#64])

def word240_0_1263 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1261 word240_0_1262

def word240_0_1264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17445207633720542226#64)

def word240_0_1265 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1263 word240_0_1264

def word240_0_1266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17445207633720542226#64)

def word240_0_1267 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1265 word240_0_1266

def word240_0_1268 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1267 word240_0_62

def word240_0_1269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1392#64])

def word240_0_1270 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1268 word240_0_1269

def word240_0_1271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1013143465238215583#64)

def word240_0_1272 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1270 word240_0_1271

def word240_0_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1013143465238215583#64)

def word240_0_1274 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1272 word240_0_1273

def word240_0_1275 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1274 word240_0_62

def word240_0_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1400#64])

def word240_0_1277 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1275 word240_0_1276

def word240_0_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 424026453363255084#64)

def word240_0_1279 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1277 word240_0_1278

def word240_0_1280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 424026453363255084#64)

def word240_0_1281 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1279 word240_0_1280

def word240_0_1282 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1281 word240_0_62

def word240_0_1283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1408#64])

def word240_0_1284 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1282 word240_0_1283

def word240_0_1285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14968108404964173521#64)

def word240_0_1286 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1284 word240_0_1285

def word240_0_1287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14968108404964173521#64)

def word240_0_1288 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1286 word240_0_1287

def word240_0_1289 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1288 word240_0_62

def word240_0_1290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1416#64])

def word240_0_1291 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1289 word240_0_1290

def word240_0_1292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10554179017340196119#64)

def word240_0_1293 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1291 word240_0_1292

def word240_0_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10554179017340196119#64)

def word240_0_1295 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1293 word240_0_1294

def word240_0_1296 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1295 word240_0_62

def word240_0_1297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1424#64])

def word240_0_1298 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1296 word240_0_1297

def word240_0_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7501102438331281009#64)

def word240_0_1300 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1298 word240_0_1299

def word240_0_1301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7501102438331281009#64)

def word240_0_1302 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1300 word240_0_1301

def word240_0_1303 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1302 word240_0_62

def word240_0_1304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1432#64])

def word240_0_1305 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1303 word240_0_1304

def word240_0_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12433118847022113593#64)

def word240_0_1307 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1305 word240_0_1306

def word240_0_1308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12433118847022113593#64)

def word240_0_1309 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1307 word240_0_1308

def word240_0_1310 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1309 word240_0_62

def word240_0_1311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1440#64])

def word240_0_1312 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1310 word240_0_1311

def word240_0_1313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 690731836760980218#64)

def word240_0_1314 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1312 word240_0_1313

def word240_0_1315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 690731836760980218#64)

def word240_0_1316 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1314 word240_0_1315

def word240_0_1317 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1316 word240_0_62

def word240_0_1318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1448#64])

def word240_0_1319 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1317 word240_0_1318

def word240_0_1320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10578288101608441794#64)

def word240_0_1321 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1319 word240_0_1320

def word240_0_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10578288101608441794#64)

def word240_0_1323 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1321 word240_0_1322

def word240_0_1324 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1323 word240_0_62

def word240_0_1325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1456#64])

def word240_0_1326 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1324 word240_0_1325

def word240_0_1327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6123628888509943429#64)

def word240_0_1328 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1326 word240_0_1327

def word240_0_1329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6123628888509943429#64)

def word240_0_1330 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1328 word240_0_1329

def word240_0_1331 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1330 word240_0_62

def word240_0_1332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1464#64])

def word240_0_1333 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1331 word240_0_1332

def word240_0_1334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5094693348458656889#64)

def word240_0_1335 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1333 word240_0_1334

def word240_0_1336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5094693348458656889#64)

def word240_0_1337 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1335 word240_0_1336

def word240_0_1338 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1337 word240_0_62

def word240_0_1339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1472#64])

def word240_0_1340 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1338 word240_0_1339

def word240_0_1341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6516980136051946547#64)

def word240_0_1342 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1340 word240_0_1341

def word240_0_1343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6516980136051946547#64)

def word240_0_1344 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1342 word240_0_1343

def word240_0_1345 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1344 word240_0_62

def word240_0_1346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1480#64])

def word240_0_1347 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1345 word240_0_1346

def word240_0_1348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 91644931610378662#64)

def word240_0_1349 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1347 word240_0_1348

def word240_0_1350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 91644931610378662#64)

def word240_0_1351 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1349 word240_0_1350

def word240_0_1352 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1351 word240_0_62

def word240_0_1353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1488#64])

def word240_0_1354 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1352 word240_0_1353

def word240_0_1355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15468643217874662509#64)

def word240_0_1356 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1354 word240_0_1355

def word240_0_1357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15468643217874662509#64)

def word240_0_1358 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1356 word240_0_1357

def word240_0_1359 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1358 word240_0_62

def word240_0_1360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1496#64])

def word240_0_1361 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1359 word240_0_1360

def word240_0_1362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6210536894189389677#64)

def word240_0_1363 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1361 word240_0_1362

def word240_0_1364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6210536894189389677#64)

def word240_0_1365 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1363 word240_0_1364

def word240_0_1366 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1365 word240_0_62

def word240_0_1367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1504#64])

def word240_0_1368 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1366 word240_0_1367

def word240_0_1369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17847289674800666119#64)

def word240_0_1370 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1368 word240_0_1369

def word240_0_1371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17847289674800666119#64)

def word240_0_1372 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1370 word240_0_1371

def word240_0_1373 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1372 word240_0_62

def word240_0_1374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1512#64])

def word240_0_1375 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1373 word240_0_1374

def word240_0_1376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3106964598684577348#64)

def word240_0_1377 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1375 word240_0_1376

def word240_0_1378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3106964598684577348#64)

def word240_0_1379 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1377 word240_0_1378

def word240_0_1380 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1379 word240_0_62

def word240_0_1381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1520#64])

def word240_0_1382 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1380 word240_0_1381

def word240_0_1383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8402432595930871483#64)

def word240_0_1384 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1382 word240_0_1383

def word240_0_1385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8402432595930871483#64)

def word240_0_1386 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1384 word240_0_1385

def word240_0_1387 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1386 word240_0_62

def word240_0_1388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1528#64])

def word240_0_1389 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1387 word240_0_1388

def word240_0_1390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3207977348847941336#64)

def word240_0_1391 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1389 word240_0_1390

def word240_0_1392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3207977348847941336#64)

def word240_0_1393 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1391 word240_0_1392

def word240_0_1394 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1393 word240_0_62

def word240_0_1395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1536#64])

def word240_0_1396 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1394 word240_0_1395

def word240_0_1397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6118280012185379707#64)

def word240_0_1398 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1396 word240_0_1397

def word240_0_1399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6118280012185379707#64)

def word240_0_1400 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1398 word240_0_1399

def word240_0_1401 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1400 word240_0_62

def word240_0_1402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1544#64])

def word240_0_1403 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1401 word240_0_1402

def word240_0_1404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15554389263149372507#64)

def word240_0_1405 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1403 word240_0_1404

def word240_0_1406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15554389263149372507#64)

def word240_0_1407 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1405 word240_0_1406

def word240_0_1408 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1407 word240_0_62

def word240_0_1409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1552#64])

def word240_0_1410 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1408 word240_0_1409

def word240_0_1411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 825768116663620526#64)

def word240_0_1412 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1410 word240_0_1411

def word240_0_1413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 825768116663620526#64)

def word240_0_1414 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1412 word240_0_1413

def word240_0_1415 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1414 word240_0_62

def word240_0_1416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1560#64])

def word240_0_1417 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1415 word240_0_1416

def word240_0_1418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7259264309575870851#64)

def word240_0_1419 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1417 word240_0_1418

def word240_0_1420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7259264309575870851#64)

def word240_0_1421 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1419 word240_0_1420

def word240_0_1422 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1421 word240_0_62

def word240_0_1423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1568#64])

def word240_0_1424 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1422 word240_0_1423

def word240_0_1425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4116471800096853880#64)

def word240_0_1426 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1424 word240_0_1425

def word240_0_1427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4116471800096853880#64)

def word240_0_1428 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1426 word240_0_1427

def word240_0_1429 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1428 word240_0_62

def word240_0_1430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1576#64])

def word240_0_1431 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1429 word240_0_1430

def word240_0_1432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3220628530898328474#64)

def word240_0_1433 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1431 word240_0_1432

def word240_0_1434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3220628530898328474#64)

def word240_0_1435 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1433 word240_0_1434

def word240_0_1436 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1435 word240_0_62

def word240_0_1437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1584#64])

def word240_0_1438 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1436 word240_0_1437

def word240_0_1439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 785148066790290254#64)

def word240_0_1440 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1438 word240_0_1439

def word240_0_1441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 785148066790290254#64)

def word240_0_1442 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1440 word240_0_1441

def word240_0_1443 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1442 word240_0_62

def word240_0_1444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1592#64])

def word240_0_1445 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1443 word240_0_1444

def word240_0_1446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15859045307365574315#64)

def word240_0_1447 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1445 word240_0_1446

def word240_0_1448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15859045307365574315#64)

def word240_0_1449 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1447 word240_0_1448

def word240_0_1450 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1449 word240_0_62

def word240_0_1451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1600#64])

def word240_0_1452 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1450 word240_0_1451

def word240_0_1453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10080850857162126312#64)

def word240_0_1454 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1452 word240_0_1453

def word240_0_1455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10080850857162126312#64)

def word240_0_1456 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1454 word240_0_1455

def word240_0_1457 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1456 word240_0_62

def word240_0_1458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1608#64])

def word240_0_1459 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1457 word240_0_1458

def word240_0_1460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17473130183572900340#64)

def word240_0_1461 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1459 word240_0_1460

def word240_0_1462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17473130183572900340#64)

def word240_0_1463 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1461 word240_0_1462

def word240_0_1464 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1463 word240_0_62

def word240_0_1465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1616#64])

def word240_0_1466 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1464 word240_0_1465

def word240_0_1467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5280875127751342706#64)

def word240_0_1468 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1466 word240_0_1467

def word240_0_1469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5280875127751342706#64)

def word240_0_1470 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1468 word240_0_1469

def word240_0_1471 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1470 word240_0_62

def word240_0_1472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1624#64])

def word240_0_1473 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1471 word240_0_1472

def word240_0_1474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13478169855198869191#64)

def word240_0_1475 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1473 word240_0_1474

def word240_0_1476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13478169855198869191#64)

def word240_0_1477 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1475 word240_0_1476

def word240_0_1478 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1477 word240_0_62

def word240_0_1479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1632#64])

def word240_0_1480 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1478 word240_0_1479

def word240_0_1481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1470386339905773104#64)

def word240_0_1482 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1480 word240_0_1481

def word240_0_1483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1470386339905773104#64)

def word240_0_1484 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1482 word240_0_1483

def word240_0_1485 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1484 word240_0_62

def word240_0_1486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1640#64])

def word240_0_1487 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1485 word240_0_1486

def word240_0_1488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18063838854675756281#64)

def word240_0_1489 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1487 word240_0_1488

def word240_0_1490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18063838854675756281#64)

def word240_0_1491 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1489 word240_0_1490

def word240_0_1492 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1491 word240_0_62

def word240_0_1493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1648#64])

def word240_0_1494 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1492 word240_0_1493

def word240_0_1495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6581698550652646368#64)

def word240_0_1496 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1494 word240_0_1495

def word240_0_1497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6581698550652646368#64)

def word240_0_1498 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1496 word240_0_1497

def word240_0_1499 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1498 word240_0_62

def word240_0_1500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1656#64])

def word240_0_1501 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1499 word240_0_1500

def word240_0_1502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 105682938938997452#64)

def word240_0_1503 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1501 word240_0_1502

def word240_0_1504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 105682938938997452#64)

def word240_0_1505 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1503 word240_0_1504

def word240_0_1506 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1505 word240_0_62

def word240_0_1507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1664#64])

def word240_0_1508 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1506 word240_0_1507

def word240_0_1509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7315579702113888802#64)

def word240_0_1510 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1508 word240_0_1509

def word240_0_1511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7315579702113888802#64)

def word240_0_1512 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1510 word240_0_1511

def word240_0_1513 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1512 word240_0_62

def word240_0_1514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1672#64])

def word240_0_1515 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1513 word240_0_1514

def word240_0_1516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18112971320389354662#64)

def word240_0_1517 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1515 word240_0_1516

def word240_0_1518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18112971320389354662#64)

def word240_0_1519 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1517 word240_0_1518

def word240_0_1520 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1519 word240_0_62

def word240_0_1521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1680#64])

def word240_0_1522 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1520 word240_0_1521

def word240_0_1523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8240209784894197942#64)

def word240_0_1524 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1522 word240_0_1523

def word240_0_1525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8240209784894197942#64)

def word240_0_1526 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1524 word240_0_1525

def word240_0_1527 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1526 word240_0_62

def word240_0_1528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1688#64])

def word240_0_1529 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1527 word240_0_1528

def word240_0_1530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6744886295492200972#64)

def word240_0_1531 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1529 word240_0_1530

def word240_0_1532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6744886295492200972#64)

def word240_0_1533 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1531 word240_0_1532

def word240_0_1534 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1533 word240_0_62

def word240_0_1535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1696#64])

def word240_0_1536 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1534 word240_0_1535

def word240_0_1537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8539428888738900801#64)

def word240_0_1538 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1536 word240_0_1537

def word240_0_1539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8539428888738900801#64)

def word240_0_1540 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1538 word240_0_1539

def word240_0_1541 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1540 word240_0_62

def word240_0_1542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1704#64])

def word240_0_1543 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1541 word240_0_1542

def word240_0_1544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3697187765683852069#64)

def word240_0_1545 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1543 word240_0_1544

def word240_0_1546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3697187765683852069#64)

def word240_0_1547 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1545 word240_0_1546

def word240_0_1548 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1547 word240_0_62

def word240_0_1549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1712#64])

def word240_0_1550 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1548 word240_0_1549

def word240_0_1551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2390323488676383742#64)

def word240_0_1552 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1550 word240_0_1551

def word240_0_1553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2390323488676383742#64)

def word240_0_1554 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1552 word240_0_1553

def word240_0_1555 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1554 word240_0_62

def word240_0_1556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1720#64])

def word240_0_1557 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1555 word240_0_1556

def word240_0_1558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17871315337231244794#64)

def word240_0_1559 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1557 word240_0_1558

def word240_0_1560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17871315337231244794#64)

def word240_0_1561 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1559 word240_0_1560

def word240_0_1562 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1561 word240_0_62

def word240_0_1563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1728#64])

def word240_0_1564 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1562 word240_0_1563

def word240_0_1565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12006895627266174020#64)

def word240_0_1566 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1564 word240_0_1565

def word240_0_1567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12006895627266174020#64)

def word240_0_1568 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1566 word240_0_1567

def word240_0_1569 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1568 word240_0_62

def word240_0_1570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1736#64])

def word240_0_1571 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1569 word240_0_1570

def word240_0_1572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6664420376411809383#64)

def word240_0_1573 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1571 word240_0_1572

def word240_0_1574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6664420376411809383#64)

def word240_0_1575 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1573 word240_0_1574

def word240_0_1576 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1575 word240_0_62

def word240_0_1577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1744#64])

def word240_0_1578 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1576 word240_0_1577

def word240_0_1579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14947488578937618115#64)

def word240_0_1580 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1578 word240_0_1579

def word240_0_1581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14947488578937618115#64)

def word240_0_1582 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1580 word240_0_1581

def word240_0_1583 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1582 word240_0_62

def word240_0_1584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1752#64])

def word240_0_1585 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1583 word240_0_1584

def word240_0_1586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7602290591698202650#64)

def word240_0_1587 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1585 word240_0_1586

def word240_0_1588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7602290591698202650#64)

def word240_0_1589 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1587 word240_0_1588

def word240_0_1590 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1589 word240_0_62

def word240_0_1591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1760#64])

def word240_0_1592 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1590 word240_0_1591

def word240_0_1593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7843373463766933664#64)

def word240_0_1594 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1592 word240_0_1593

def word240_0_1595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7843373463766933664#64)

def word240_0_1596 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1594 word240_0_1595

def word240_0_1597 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1596 word240_0_62

def word240_0_1598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1768#64])

def word240_0_1599 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1597 word240_0_1598

def word240_0_1600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16251937524398416173#64)

def word240_0_1601 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1599 word240_0_1600

def word240_0_1602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16251937524398416173#64)

def word240_0_1603 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1601 word240_0_1602

def word240_0_1604 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1603 word240_0_62

def word240_0_1605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1776#64])

def word240_0_1606 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1604 word240_0_1605

def word240_0_1607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16491285021543357750#64)

def word240_0_1608 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1606 word240_0_1607

def word240_0_1609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16491285021543357750#64)

def word240_0_1610 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1608 word240_0_1609

def word240_0_1611 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1610 word240_0_62

def word240_0_1612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1784#64])

def word240_0_1613 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1611 word240_0_1612

def word240_0_1614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8388552398802175010#64)

def word240_0_1615 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1613 word240_0_1614

def word240_0_1616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8388552398802175010#64)

def word240_0_1617 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1615 word240_0_1616

def word240_0_1618 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1617 word240_0_62

def word240_0_1619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1792#64])

def word240_0_1620 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1618 word240_0_1619

def word240_0_1621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13721634289081332861#64)

def word240_0_1622 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1620 word240_0_1621

def word240_0_1623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13721634289081332861#64)

def word240_0_1624 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1622 word240_0_1623

def word240_0_1625 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1624 word240_0_62

def word240_0_1626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1800#64])

def word240_0_1627 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1625 word240_0_1626

def word240_0_1628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11723496258667999243#64)

def word240_0_1629 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1627 word240_0_1628

def word240_0_1630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11723496258667999243#64)

def word240_0_1631 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1629 word240_0_1630

def word240_0_1632 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1631 word240_0_62

def word240_0_1633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1808#64])

def word240_0_1634 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1632 word240_0_1633

def word240_0_1635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8290189175361551552#64)

def word240_0_1636 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1634 word240_0_1635

def word240_0_1637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8290189175361551552#64)

def word240_0_1638 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1636 word240_0_1637

def word240_0_1639 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1638 word240_0_62

def word240_0_1640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1816#64])

def word240_0_1641 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1639 word240_0_1640

def word240_0_1642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4618397651472586894#64)

def word240_0_1643 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1641 word240_0_1642

def word240_0_1644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4618397651472586894#64)

def word240_0_1645 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1643 word240_0_1644

def word240_0_1646 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1645 word240_0_62

def word240_0_1647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1824#64])

def word240_0_1648 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1646 word240_0_1647

def word240_0_1649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7571141537874358586#64)

def word240_0_1650 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1648 word240_0_1649

def word240_0_1651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7571141537874358586#64)

def word240_0_1652 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1650 word240_0_1651

def word240_0_1653 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1652 word240_0_62

def word240_0_1654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1832#64])

def word240_0_1655 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1653 word240_0_1654

def word240_0_1656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4867171076863847426#64)

def word240_0_1657 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1655 word240_0_1656

def word240_0_1658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4867171076863847426#64)

def word240_0_1659 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1657 word240_0_1658

def word240_0_1660 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1659 word240_0_62

def word240_0_1661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1840#64])

def word240_0_1662 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1660 word240_0_1661

def word240_0_1663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8351873792473709480#64)

def word240_0_1664 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1662 word240_0_1663

def word240_0_1665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8351873792473709480#64)

def word240_0_1666 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1664 word240_0_1665

def word240_0_1667 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1666 word240_0_62

def word240_0_1668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1848#64])

def word240_0_1669 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1667 word240_0_1668

def word240_0_1670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17782739426466776193#64)

def word240_0_1671 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1669 word240_0_1670

def word240_0_1672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17782739426466776193#64)

def word240_0_1673 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1671 word240_0_1672

def word240_0_1674 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1673 word240_0_62

def word240_0_1675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1856#64])

def word240_0_1676 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1674 word240_0_1675

def word240_0_1677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4526876414717359258#64)

def word240_0_1678 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1676 word240_0_1677

def word240_0_1679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4526876414717359258#64)

def word240_0_1680 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1678 word240_0_1679

def word240_0_1681 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1680 word240_0_62

def word240_0_1682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1864#64])

def word240_0_1683 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1681 word240_0_1682

def word240_0_1684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10274268464843138734#64)

def word240_0_1685 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1683 word240_0_1684

def word240_0_1686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10274268464843138734#64)

def word240_0_1687 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1685 word240_0_1686

def word240_0_1688 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1687 word240_0_62

def word240_0_1689 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1872#64])

def word240_0_1690 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1688 word240_0_1689

def word240_0_1691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16824209053157969140#64)

def word240_0_1692 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1690 word240_0_1691

def word240_0_1693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16824209053157969140#64)

def word240_0_1694 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1692 word240_0_1693

def word240_0_1695 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1694 word240_0_62

def word240_0_1696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1880#64])

def word240_0_1697 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1695 word240_0_1696

def word240_0_1698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7786711905802725111#64)

def word240_0_1699 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1697 word240_0_1698

def word240_0_1700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7786711905802725111#64)

def word240_0_1701 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1699 word240_0_1700

def word240_0_1702 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1701 word240_0_62

def word240_0_1703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1888#64])

def word240_0_1704 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1702 word240_0_1703

def word240_0_1705 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16482954048828300402#64)

def word240_0_1706 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1704 word240_0_1705

def word240_0_1707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16482954048828300402#64)

def word240_0_1708 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1706 word240_0_1707

def word240_0_1709 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1708 word240_0_62

def word240_0_1710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1896#64])

def word240_0_1711 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1709 word240_0_1710

def word240_0_1712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9134525602405993810#64)

def word240_0_1713 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1711 word240_0_1712

def word240_0_1714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9134525602405993810#64)

def word240_0_1715 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1713 word240_0_1714

def word240_0_1716 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1715 word240_0_62

def word240_0_1717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1904#64])

def word240_0_1718 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1716 word240_0_1717

def word240_0_1719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14604653709840004316#64)

def word240_0_1720 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1718 word240_0_1719

def word240_0_1721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14604653709840004316#64)

def word240_0_1722 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1720 word240_0_1721

def word240_0_1723 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1722 word240_0_62

def word240_0_1724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1912#64])

def word240_0_1725 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1723 word240_0_1724

def word240_0_1726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2300633297700838512#64)

def word240_0_1727 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1725 word240_0_1726

def word240_0_1728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2300633297700838512#64)

def word240_0_1729 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1727 word240_0_1728

def word240_0_1730 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1729 word240_0_62

def word240_0_1731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1920#64])

def word240_0_1732 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1730 word240_0_1731

def word240_0_1733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7100965087805631020#64)

def word240_0_1734 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1732 word240_0_1733

def word240_0_1735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7100965087805631020#64)

def word240_0_1736 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1734 word240_0_1735

def word240_0_1737 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1736 word240_0_62

def word240_0_1738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1928#64])

def word240_0_1739 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1737 word240_0_1738

def word240_0_1740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17653769186452274312#64)

def word240_0_1741 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1739 word240_0_1740

def word240_0_1742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17653769186452274312#64)

def word240_0_1743 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1741 word240_0_1742

def word240_0_1744 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1743 word240_0_62

def word240_0_1745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1936#64])

def word240_0_1746 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1744 word240_0_1745

def word240_0_1747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13434765484626730719#64)

def word240_0_1748 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1746 word240_0_1747

def word240_0_1749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13434765484626730719#64)

def word240_0_1750 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1748 word240_0_1749

def word240_0_1751 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1750 word240_0_62

def word240_0_1752 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1944#64])

def word240_0_1753 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1751 word240_0_1752

def word240_0_1754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14108377942339324501#64)

def word240_0_1755 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1753 word240_0_1754

def word240_0_1756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14108377942339324501#64)

def word240_0_1757 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1755 word240_0_1756

def word240_0_1758 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1757 word240_0_62

def word240_0_1759 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1952#64])

def word240_0_1760 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1758 word240_0_1759

def word240_0_1761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2113714948559937023#64)

def word240_0_1762 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1760 word240_0_1761

def word240_0_1763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2113714948559937023#64)

def word240_0_1764 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1762 word240_0_1763

def word240_0_1765 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1764 word240_0_62

def word240_0_1766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1960#64])

def word240_0_1767 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1765 word240_0_1766

def word240_0_1768 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10042038731026925717#64)

def word240_0_1769 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1767 word240_0_1768

def word240_0_1770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10042038731026925717#64)

def word240_0_1771 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1769 word240_0_1770

def word240_0_1772 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1771 word240_0_62

def word240_0_1773 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1968#64])

def word240_0_1774 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1772 word240_0_1773

def word240_0_1775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12821921441708664034#64)

def word240_0_1776 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1774 word240_0_1775

def word240_0_1777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12821921441708664034#64)

def word240_0_1778 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1776 word240_0_1777

def word240_0_1779 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1778 word240_0_62

def word240_0_1780 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1976#64])

def word240_0_1781 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1779 word240_0_1780

def word240_0_1782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9192677158497032927#64)

def word240_0_1783 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1781 word240_0_1782

def word240_0_1784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9192677158497032927#64)

def word240_0_1785 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1783 word240_0_1784

def word240_0_1786 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1785 word240_0_62

def word240_0_1787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1984#64])

def word240_0_1788 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1786 word240_0_1787

def word240_0_1789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2440275331481373231#64)

def word240_0_1790 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1788 word240_0_1789

def word240_0_1791 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2440275331481373231#64)

def word240_0_1792 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1790 word240_0_1791

def word240_0_1793 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1792 word240_0_62

def word240_0_1794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1992#64])

def word240_0_1795 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1793 word240_0_1794

def word240_0_1796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6965264199319123290#64)

def word240_0_1797 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1795 word240_0_1796

def word240_0_1798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6965264199319123290#64)

def word240_0_1799 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1797 word240_0_1798

def word240_0_1800 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1799 word240_0_62

def word240_0_1801 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 2000#64])

def word240_0_1802 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1800 word240_0_1801

def word240_0_1803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1932755011918763066#64)

def word240_0_1804 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1802 word240_0_1803

def word240_0_1805 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1932755011918763066#64)

def word240_0_1806 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1804 word240_0_1805

def word240_0_1807 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1806 word240_0_62

def word240_0_1808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 2008#64])

def word240_0_1809 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1807 word240_0_1808

def word240_0_1810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2449361547660069867#64)

def word240_0_1811 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1809 word240_0_1810

def word240_0_1812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2449361547660069867#64)

def word240_0_1813 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1811 word240_0_1812

def word240_0_1814 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1813 word240_0_62

def word240_0_1815 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 2016#64])

def word240_0_1816 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1814 word240_0_1815

def word240_0_1817 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4134045736763573740#64)

def word240_0_1818 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1816 word240_0_1817

def word240_0_1819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4134045736763573740#64)

def word240_0_1820 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1818 word240_0_1819

def word240_0_1821 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1820 word240_0_62

def word240_0_1822 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 2024#64])

def word240_0_1823 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1821 word240_0_1822

def word240_0_1824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8017606045960358736#64)

def word240_0_1825 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1823 word240_0_1824

def word240_0_1826 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8017606045960358736#64)

def word240_0_1827 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1825 word240_0_1826

def word240_0_1828 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1827 word240_0_62

def word240_0_1829 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 2032#64])

def word240_0_1830 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1828 word240_0_1829

def word240_0_1831 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14859615004192187521#64)

def word240_0_1832 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1830 word240_0_1831

def word240_0_1833 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14859615004192187521#64)

def word240_0_1834 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1832 word240_0_1833

def word240_0_1835 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1834 word240_0_62

def word240_0_1836 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 2040#64])

def word240_0_1837 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1835 word240_0_1836

def word240_0_1838 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15657776661966830049#64)

def word240_0_1839 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1837 word240_0_1838

def word240_0_1840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15657776661966830049#64)

def word240_0_1841 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1839 word240_0_1840

def word240_0_1842 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1841 word240_0_62

def word240_0_1843 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1842 word240_0_8

def word240_0_1844 : WordLangProgHOL (BitVec 64) :=
.seq word240_0_1843 word240_0_10

def pass240_0 : WordLangProgHOL (BitVec 64) :=
word240_0_1844
theorem pass240_0_eq : WordSimp.compileExp (source240.2.2) = pass240_0 := by
  kernel_rfl
#print axioms pass240_0_eq
end InitECandidate.Proofs.WordStages
