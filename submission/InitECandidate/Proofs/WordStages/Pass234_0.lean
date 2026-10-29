import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source234
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word234_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 96#64]))

def word234_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def word234_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_0 word234_0_1

def word234_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def word234_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word234_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_3 word234_0_4

def word234_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word234_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_5 word234_0_6

def word234_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def word234_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_7 word234_0_8

def word234_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def word234_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_9 word234_0_10

def word234_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word234_0_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) word234_0_11 word234_0_12

def word234_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word234_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_14 word234_0_4

def word234_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word234_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_15 word234_0_16

def word234_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_13 word234_0_17

def word234_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_2 word234_0_18

def word234_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_19 word234_0_4

def word234_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def word234_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_20 word234_0_21

def word234_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word234_0_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word234_0_12, 234, 2)) (some 68) ([8]) (some (8, word234_0_23, 234, 3))

def word234_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_21 word234_0_24

def word234_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_22 word234_0_25

def word234_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_26 word234_0_4

def word234_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 104#64])

def word234_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_27 word234_0_28

def word234_0_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def word234_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_29 word234_0_30

def word234_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def word234_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_31 word234_0_32

def word234_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def word234_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_33 word234_0_34

def word234_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def word234_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_35 word234_0_36

def word234_0_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word234_0_12, 234, 4)) (some 68) ([8]) (some (8, word234_0_23, 234, 5))

def word234_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_36 word234_0_38

def word234_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_37 word234_0_39

def word234_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_40 word234_0_4

def word234_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 112#64])

def word234_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_41 word234_0_42

def word234_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_43 word234_0_30

def word234_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_44 word234_0_32

def word234_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_45 word234_0_34

def word234_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2048#64)

def word234_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_46 word234_0_47

def word234_0_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word234_0_12, 234, 6)) (some 68) ([8]) (some (8, word234_0_23, 234, 7))

def word234_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_47 word234_0_49

def word234_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_48 word234_0_50

def word234_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_51 word234_0_4

def word234_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 96#64])

def word234_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_52 word234_0_53

def word234_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_54 word234_0_30

def word234_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_55 word234_0_32

def word234_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_56 word234_0_34

def word234_0_58 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_57 word234_0_58

def word234_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_59 word234_0_14

def word234_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_60 word234_0_1

def word234_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def word234_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_61 word234_0_62

def word234_0_64 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_63 word234_0_64

def word234_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_65 word234_0_14

def word234_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_66 word234_0_1

def word234_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_67 word234_0_62

def word234_0_69 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_68 word234_0_69

def word234_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_70 word234_0_14

def word234_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_71 word234_0_1

def word234_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_72 word234_0_62

def word234_0_74 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_73 word234_0_74

def word234_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_75 word234_0_14

def word234_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_76 word234_0_1

def word234_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_77 word234_0_62

def word234_0_79 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_78 word234_0_79

def word234_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3467889160079910389#64)

def word234_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_80 word234_0_81

def word234_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3467889160079910389#64)

def word234_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_82 word234_0_83

def word234_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_84 word234_0_62

def word234_0_86 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_85 word234_0_86

def word234_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11211440601066084391#64)

def word234_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_87 word234_0_88

def word234_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11211440601066084391#64)

def word234_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_89 word234_0_90

def word234_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_91 word234_0_62

def word234_0_93 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_92 word234_0_93

def word234_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16785154543263219779#64)

def word234_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_94 word234_0_95

def word234_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16785154543263219779#64)

def word234_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_96 word234_0_97

def word234_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_98 word234_0_62

def word234_0_100 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_99 word234_0_100

def word234_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5475067798876166378#64)

def word234_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_101 word234_0_102

def word234_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5475067798876166378#64)

def word234_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_103 word234_0_104

def word234_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_105 word234_0_62

def word234_0_107 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_106 word234_0_107

def word234_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13967066522134337243#64)

def word234_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_108 word234_0_109

def word234_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13967066522134337243#64)

def word234_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_110 word234_0_111

def word234_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_112 word234_0_62

def word234_0_114 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_113 word234_0_114

def word234_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12162352269144710392#64)

def word234_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_115 word234_0_116

def word234_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12162352269144710392#64)

def word234_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_117 word234_0_118

def word234_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_119 word234_0_62

def word234_0_121 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_120 word234_0_121

def word234_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12236539336977975698#64)

def word234_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_122 word234_0_123

def word234_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12236539336977975698#64)

def word234_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_124 word234_0_125

def word234_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_126 word234_0_62

def word234_0_128 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_127 word234_0_128

def word234_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8168838631237148268#64)

def word234_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_129 word234_0_130

def word234_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8168838631237148268#64)

def word234_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_131 word234_0_132

def word234_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_133 word234_0_62

def word234_0_135 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_134 word234_0_135

def word234_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7693696211446497479#64)

def word234_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_136 word234_0_137

def word234_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7693696211446497479#64)

def word234_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_138 word234_0_139

def word234_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_140 word234_0_62

def word234_0_142 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_141 word234_0_142

def word234_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6026757510069940497#64)

def word234_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_143 word234_0_144

def word234_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6026757510069940497#64)

def word234_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_145 word234_0_146

def word234_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_147 word234_0_62

def word234_0_149 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_148 word234_0_149

def word234_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5425962768908068266#64)

def word234_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_150 word234_0_151

def word234_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5425962768908068266#64)

def word234_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_152 word234_0_153

def word234_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_154 word234_0_62

def word234_0_156 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_155 word234_0_156

def word234_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4373938691328204737#64)

def word234_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_157 word234_0_158

def word234_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4373938691328204737#64)

def word234_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_159 word234_0_160

def word234_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_161 word234_0_62

def word234_0_163 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_162 word234_0_163

def word234_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7336695293655149907#64)

def word234_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_164 word234_0_165

def word234_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7336695293655149907#64)

def word234_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_166 word234_0_167

def word234_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_168 word234_0_62

def word234_0_170 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_169 word234_0_170

def word234_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10774040678445768101#64)

def word234_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_171 word234_0_172

def word234_0_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10774040678445768101#64)

def word234_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_173 word234_0_174

def word234_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_175 word234_0_62

def word234_0_177 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_176 word234_0_177

def word234_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6265190034888290884#64)

def word234_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_178 word234_0_179

def word234_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6265190034888290884#64)

def word234_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_180 word234_0_181

def word234_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_182 word234_0_62

def word234_0_184 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_183 word234_0_184

def word234_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4328568599408950463#64)

def word234_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_185 word234_0_186

def word234_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4328568599408950463#64)

def word234_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_187 word234_0_188

def word234_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_189 word234_0_62

def word234_0_191 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_190 word234_0_191

def word234_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11475758621772545438#64)

def word234_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_192 word234_0_193

def word234_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11475758621772545438#64)

def word234_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_194 word234_0_195

def word234_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_196 word234_0_62

def word234_0_198 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_197 word234_0_198

def word234_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14328116249982797230#64)

def word234_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_199 word234_0_200

def word234_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14328116249982797230#64)

def word234_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_201 word234_0_202

def word234_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_203 word234_0_62

def word234_0_205 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_204 word234_0_205

def word234_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5369876075554645581#64)

def word234_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_206 word234_0_207

def word234_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5369876075554645581#64)

def word234_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_208 word234_0_209

def word234_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_210 word234_0_62

def word234_0_212 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_211 word234_0_212

def word234_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3462437173510048856#64)

def word234_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_213 word234_0_214

def word234_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3462437173510048856#64)

def word234_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_215 word234_0_216

def word234_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_217 word234_0_62

def word234_0_219 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_218 word234_0_219

def word234_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8478027213065653720#64)

def word234_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_220 word234_0_221

def word234_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8478027213065653720#64)

def word234_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_222 word234_0_223

def word234_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_224 word234_0_62

def word234_0_226 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_225 word234_0_226

def word234_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9100017011721934421#64)

def word234_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_227 word234_0_228

def word234_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9100017011721934421#64)

def word234_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_229 word234_0_230

def word234_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_231 word234_0_62

def word234_0_233 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_232 word234_0_233

def word234_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1092431190279867409#64)

def word234_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_234 word234_0_235

def word234_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1092431190279867409#64)

def word234_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_236 word234_0_237

def word234_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_238 word234_0_62

def word234_0_240 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_239 word234_0_240

def word234_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11610003269932803729#64)

def word234_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_241 word234_0_242

def word234_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11610003269932803729#64)

def word234_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_243 word234_0_244

def word234_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_245 word234_0_62

def word234_0_247 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_246 word234_0_247

def word234_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17741225557905763207#64)

def word234_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_248 word234_0_249

def word234_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17741225557905763207#64)

def word234_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_250 word234_0_251

def word234_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_252 word234_0_62

def word234_0_254 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_253 word234_0_254

def word234_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6462564319743149778#64)

def word234_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_255 word234_0_256

def word234_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6462564319743149778#64)

def word234_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_257 word234_0_258

def word234_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_259 word234_0_62

def word234_0_261 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_260 word234_0_261

def word234_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7227379955731391093#64)

def word234_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_262 word234_0_263

def word234_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7227379955731391093#64)

def word234_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_264 word234_0_265

def word234_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_266 word234_0_62

def word234_0_268 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_267 word234_0_268

def word234_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3206371696687016891#64)

def word234_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_269 word234_0_270

def word234_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3206371696687016891#64)

def word234_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_271 word234_0_272

def word234_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_273 word234_0_62

def word234_0_275 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_274 word234_0_275

def word234_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5387818071436330022#64)

def word234_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_276 word234_0_277

def word234_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5387818071436330022#64)

def word234_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_278 word234_0_279

def word234_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_280 word234_0_62

def word234_0_282 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_281 word234_0_282

def word234_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4922937313274119005#64)

def word234_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_283 word234_0_284

def word234_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4922937313274119005#64)

def word234_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_285 word234_0_286

def word234_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_287 word234_0_62

def word234_0_289 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_288 word234_0_289

def word234_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13356489281317594354#64)

def word234_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_290 word234_0_291

def word234_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13356489281317594354#64)

def word234_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_292 word234_0_293

def word234_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_294 word234_0_62

def word234_0_296 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_295 word234_0_296

def word234_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10642425439793474513#64)

def word234_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_297 word234_0_298

def word234_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10642425439793474513#64)

def word234_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_299 word234_0_300

def word234_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_301 word234_0_62

def word234_0_303 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_302 word234_0_303

def word234_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 370461946040184144#64)

def word234_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_304 word234_0_305

def word234_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 370461946040184144#64)

def word234_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_306 word234_0_307

def word234_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_308 word234_0_62

def word234_0_310 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_309 word234_0_310

def word234_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13822332937032515768#64)

def word234_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_311 word234_0_312

def word234_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13822332937032515768#64)

def word234_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_313 word234_0_314

def word234_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_315 word234_0_62

def word234_0_317 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_316 word234_0_317

def word234_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9797762799335725330#64)

def word234_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_318 word234_0_319

def word234_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9797762799335725330#64)

def word234_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_320 word234_0_321

def word234_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_322 word234_0_62

def word234_0_324 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_323 word234_0_324

def word234_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16235845035758861537#64)

def word234_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_325 word234_0_326

def word234_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16235845035758861537#64)

def word234_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_327 word234_0_328

def word234_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_329 word234_0_62

def word234_0_331 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_330 word234_0_331

def word234_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3420301289996353535#64)

def word234_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_332 word234_0_333

def word234_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3420301289996353535#64)

def word234_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_334 word234_0_335

def word234_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_336 word234_0_62

def word234_0_338 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_337 word234_0_338

def word234_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14190584902117831829#64)

def word234_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_339 word234_0_340

def word234_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14190584902117831829#64)

def word234_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_341 word234_0_342

def word234_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_343 word234_0_62

def word234_0_345 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_344 word234_0_345

def word234_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 307632198917377537#64)

def word234_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_346 word234_0_347

def word234_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 307632198917377537#64)

def word234_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_348 word234_0_349

def word234_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_350 word234_0_62

def word234_0_352 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_351 word234_0_352

def word234_0_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3164220818431763392#64)

def word234_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_353 word234_0_354

def word234_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3164220818431763392#64)

def word234_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_355 word234_0_356

def word234_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_357 word234_0_62

def word234_0_359 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_358 word234_0_359

def word234_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2036759370292916332#64)

def word234_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_360 word234_0_361

def word234_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2036759370292916332#64)

def word234_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_362 word234_0_363

def word234_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_364 word234_0_62

def word234_0_366 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_365 word234_0_366

def word234_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2919949194864112600#64)

def word234_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_367 word234_0_368

def word234_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2919949194864112600#64)

def word234_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_369 word234_0_370

def word234_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_371 word234_0_62

def word234_0_373 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_372 word234_0_373

def word234_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3071707933450340712#64)

def word234_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_374 word234_0_375

def word234_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3071707933450340712#64)

def word234_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_376 word234_0_377

def word234_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_378 word234_0_62

def word234_0_380 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_379 word234_0_380

def word234_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2324585789792679604#64)

def word234_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_381 word234_0_382

def word234_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2324585789792679604#64)

def word234_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_383 word234_0_384

def word234_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_385 word234_0_62

def word234_0_387 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_386 word234_0_387

def word234_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2810268568004841655#64)

def word234_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_388 word234_0_389

def word234_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2810268568004841655#64)

def word234_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_390 word234_0_391

def word234_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_392 word234_0_62

def word234_0_394 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_393 word234_0_394

def word234_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9564373630919922159#64)

def word234_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_395 word234_0_396

def word234_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9564373630919922159#64)

def word234_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_397 word234_0_398

def word234_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_399 word234_0_62

def word234_0_401 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_400 word234_0_401

def word234_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3486387617714376654#64)

def word234_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_402 word234_0_403

def word234_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3486387617714376654#64)

def word234_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_404 word234_0_405

def word234_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_406 word234_0_62

def word234_0_408 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_407 word234_0_408

def word234_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6890280984553970309#64)

def word234_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_409 word234_0_410

def word234_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6890280984553970309#64)

def word234_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_411 word234_0_412

def word234_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_413 word234_0_62

def word234_0_415 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_414 word234_0_415

def word234_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16819778833677118175#64)

def word234_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_416 word234_0_417

def word234_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16819778833677118175#64)

def word234_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_418 word234_0_419

def word234_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_420 word234_0_62

def word234_0_422 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_421 word234_0_422

def word234_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8322863097767693039#64)

def word234_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_423 word234_0_424

def word234_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8322863097767693039#64)

def word234_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_425 word234_0_426

def word234_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_427 word234_0_62

def word234_0_429 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_428 word234_0_429

def word234_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8027430070029584534#64)

def word234_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_430 word234_0_431

def word234_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8027430070029584534#64)

def word234_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_432 word234_0_433

def word234_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_434 word234_0_62

def word234_0_436 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_435 word234_0_436

def word234_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6820710890943096971#64)

def word234_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_437 word234_0_438

def word234_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6820710890943096971#64)

def word234_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_439 word234_0_440

def word234_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_441 word234_0_62

def word234_0_443 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_442 word234_0_443

def word234_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4336430283471490485#64)

def word234_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_444 word234_0_445

def word234_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4336430283471490485#64)

def word234_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_446 word234_0_447

def word234_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_448 word234_0_62

def word234_0_450 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_449 word234_0_450

def word234_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8605430690499325776#64)

def word234_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_451 word234_0_452

def word234_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8605430690499325776#64)

def word234_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_453 word234_0_454

def word234_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_455 word234_0_62

def word234_0_457 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_456 word234_0_457

def word234_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2537147804892644646#64)

def word234_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_458 word234_0_459

def word234_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2537147804892644646#64)

def word234_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_460 word234_0_461

def word234_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_462 word234_0_62

def word234_0_464 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_463 word234_0_464

def word234_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9527129336064797123#64)

def word234_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_465 word234_0_466

def word234_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9527129336064797123#64)

def word234_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_467 word234_0_468

def word234_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_469 word234_0_62

def word234_0_471 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_470 word234_0_471

def word234_0_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3796763180038200020#64)

def word234_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_472 word234_0_473

def word234_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3796763180038200020#64)

def word234_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_474 word234_0_475

def word234_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_476 word234_0_62

def word234_0_478 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_477 word234_0_478

def word234_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14555780679623777547#64)

def word234_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_479 word234_0_480

def word234_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14555780679623777547#64)

def word234_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_481 word234_0_482

def word234_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_483 word234_0_62

def word234_0_485 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_484 word234_0_485

def word234_0_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16096546738174787888#64)

def word234_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_486 word234_0_487

def word234_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16096546738174787888#64)

def word234_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_488 word234_0_489

def word234_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_490 word234_0_62

def word234_0_492 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_491 word234_0_492

def word234_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13543108016013510813#64)

def word234_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_493 word234_0_494

def word234_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13543108016013510813#64)

def word234_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_495 word234_0_496

def word234_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_497 word234_0_62

def word234_0_499 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_498 word234_0_499

def word234_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15258290724352943759#64)

def word234_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_500 word234_0_501

def word234_0_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15258290724352943759#64)

def word234_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_502 word234_0_503

def word234_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_504 word234_0_62

def word234_0_506 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_505 word234_0_506

def word234_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11684343760181785733#64)

def word234_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_507 word234_0_508

def word234_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11684343760181785733#64)

def word234_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_509 word234_0_510

def word234_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_511 word234_0_62

def word234_0_513 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_512 word234_0_513

def word234_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13949822952470354220#64)

def word234_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_514 word234_0_515

def word234_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13949822952470354220#64)

def word234_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_516 word234_0_517

def word234_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_518 word234_0_62

def word234_0_520 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_519 word234_0_520

def word234_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16945894817209373553#64)

def word234_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_521 word234_0_522

def word234_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16945894817209373553#64)

def word234_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_523 word234_0_524

def word234_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_525 word234_0_62

def word234_0_527 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_526 word234_0_527

def word234_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9646352642919828877#64)

def word234_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_528 word234_0_529

def word234_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9646352642919828877#64)

def word234_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_530 word234_0_531

def word234_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_532 word234_0_62

def word234_0_534 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_533 word234_0_534

def word234_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18119732394455916553#64)

def word234_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_535 word234_0_536

def word234_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18119732394455916553#64)

def word234_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_537 word234_0_538

def word234_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_539 word234_0_62

def word234_0_541 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_540 word234_0_541

def word234_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17007273452497969503#64)

def word234_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_542 word234_0_543

def word234_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17007273452497969503#64)

def word234_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_544 word234_0_545

def word234_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_546 word234_0_62

def word234_0_548 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_547 word234_0_548

def word234_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12322822771725565612#64)

def word234_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_549 word234_0_550

def word234_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12322822771725565612#64)

def word234_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_551 word234_0_552

def word234_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_553 word234_0_62

def word234_0_555 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_554 word234_0_555

def word234_0_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15333140336139103893#64)

def word234_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_556 word234_0_557

def word234_0_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15333140336139103893#64)

def word234_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_558 word234_0_559

def word234_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_560 word234_0_62

def word234_0_562 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_561 word234_0_562

def word234_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5107348632695414249#64)

def word234_0_565 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_563 word234_0_564

def word234_0_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5107348632695414249#64)

def word234_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_565 word234_0_566

def word234_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_567 word234_0_62

def word234_0_569 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_568 word234_0_569

def word234_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14664322284665479009#64)

def word234_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_570 word234_0_571

def word234_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14664322284665479009#64)

def word234_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_572 word234_0_573

def word234_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_574 word234_0_62

def word234_0_576 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_575 word234_0_576

def word234_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11886449177369357420#64)

def word234_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_577 word234_0_578

def word234_0_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11886449177369357420#64)

def word234_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_579 word234_0_580

def word234_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_581 word234_0_62

def word234_0_583 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_582 word234_0_583

def word234_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13147546151981519864#64)

def word234_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_584 word234_0_585

def word234_0_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13147546151981519864#64)

def word234_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_586 word234_0_587

def word234_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_588 word234_0_62

def word234_0_590 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_589 word234_0_590

def word234_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11665373399896817451#64)

def word234_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_591 word234_0_592

def word234_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11665373399896817451#64)

def word234_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_593 word234_0_594

def word234_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_595 word234_0_62

def word234_0_597 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_596 word234_0_597

def word234_0_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 92424688682962637#64)

def word234_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_598 word234_0_599

def word234_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 92424688682962637#64)

def word234_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_600 word234_0_601

def word234_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_602 word234_0_62

def word234_0_604 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_603 word234_0_604

def word234_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9219292227730439048#64)

def word234_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_605 word234_0_606

def word234_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9219292227730439048#64)

def word234_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_607 word234_0_608

def word234_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_609 word234_0_62

def word234_0_611 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_610 word234_0_611

def word234_0_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3680535539744234445#64)

def word234_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_612 word234_0_613

def word234_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3680535539744234445#64)

def word234_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_614 word234_0_615

def word234_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_616 word234_0_62

def word234_0_618 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_617 word234_0_618

def word234_0_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1892576147470926227#64)

def word234_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_619 word234_0_620

def word234_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1892576147470926227#64)

def word234_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_621 word234_0_622

def word234_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_623 word234_0_62

def word234_0_625 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_624 word234_0_625

def word234_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12834539778033856447#64)

def word234_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_626 word234_0_627

def word234_0_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12834539778033856447#64)

def word234_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_628 word234_0_629

def word234_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_630 word234_0_62

def word234_0_632 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_631 word234_0_632

def word234_0_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12315947082840807554#64)

def word234_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_633 word234_0_634

def word234_0_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12315947082840807554#64)

def word234_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_635 word234_0_636

def word234_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_637 word234_0_62

def word234_0_639 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_638 word234_0_639

def word234_0_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 624466185408187786#64)

def word234_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_640 word234_0_641

def word234_0_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 624466185408187786#64)

def word234_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_642 word234_0_643

def word234_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_644 word234_0_62

def word234_0_646 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_645 word234_0_646

def word234_0_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6274640398404646490#64)

def word234_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_647 word234_0_648

def word234_0_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6274640398404646490#64)

def word234_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_649 word234_0_650

def word234_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_651 word234_0_62

def word234_0_653 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_652 word234_0_653

def word234_0_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3032155653827377631#64)

def word234_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_654 word234_0_655

def word234_0_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3032155653827377631#64)

def word234_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_656 word234_0_657

def word234_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_658 word234_0_62

def word234_0_660 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_659 word234_0_660

def word234_0_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11312800367795123152#64)

def word234_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_661 word234_0_662

def word234_0_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11312800367795123152#64)

def word234_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_663 word234_0_664

def word234_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_665 word234_0_62

def word234_0_667 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_666 word234_0_667

def word234_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8005893631376602110#64)

def word234_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_668 word234_0_669

def word234_0_671 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8005893631376602110#64)

def word234_0_672 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_670 word234_0_671

def word234_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_672 word234_0_62

def word234_0_674 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_673 word234_0_674

def word234_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14546998761574957247#64)

def word234_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_675 word234_0_676

def word234_0_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14546998761574957247#64)

def word234_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_677 word234_0_678

def word234_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_679 word234_0_62

def word234_0_681 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_680 word234_0_681

def word234_0_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13808291357847346201#64)

def word234_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_682 word234_0_683

def word234_0_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13808291357847346201#64)

def word234_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_684 word234_0_685

def word234_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_686 word234_0_62

def word234_0_688 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_687 word234_0_688

def word234_0_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7426889803764604373#64)

def word234_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_689 word234_0_690

def word234_0_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7426889803764604373#64)

def word234_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_691 word234_0_692

def word234_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_693 word234_0_62

def word234_0_695 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_694 word234_0_695

def word234_0_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16082005984671309799#64)

def word234_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_696 word234_0_697

def word234_0_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16082005984671309799#64)

def word234_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_698 word234_0_699

def word234_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_700 word234_0_62

def word234_0_702 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_701 word234_0_702

def word234_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14588286460061809342#64)

def word234_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_703 word234_0_704

def word234_0_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14588286460061809342#64)

def word234_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_705 word234_0_706

def word234_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_707 word234_0_62

def word234_0_709 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_708 word234_0_709

def word234_0_711 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17728765866657323141#64)

def word234_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_710 word234_0_711

def word234_0_713 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17728765866657323141#64)

def word234_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_712 word234_0_713

def word234_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_714 word234_0_62

def word234_0_716 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_715 word234_0_716

def word234_0_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15497068249977176230#64)

def word234_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_717 word234_0_718

def word234_0_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15497068249977176230#64)

def word234_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_719 word234_0_720

def word234_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_721 word234_0_62

def word234_0_723 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_722 word234_0_723

def word234_0_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7690828795371003953#64)

def word234_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_724 word234_0_725

def word234_0_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7690828795371003953#64)

def word234_0_728 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_726 word234_0_727

def word234_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_728 word234_0_62

def word234_0_730 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_729 word234_0_730

def word234_0_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1324886602002475454#64)

def word234_0_733 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_731 word234_0_732

def word234_0_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1324886602002475454#64)

def word234_0_735 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_733 word234_0_734

def word234_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_735 word234_0_62

def word234_0_737 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_736 word234_0_737

def word234_0_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18323441304716978721#64)

def word234_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_738 word234_0_739

def word234_0_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18323441304716978721#64)

def word234_0_742 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_740 word234_0_741

def word234_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_742 word234_0_62

def word234_0_744 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_743 word234_0_744

def word234_0_746 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13856354361931240139#64)

def word234_0_747 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_745 word234_0_746

def word234_0_748 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13856354361931240139#64)

def word234_0_749 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_747 word234_0_748

def word234_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_749 word234_0_62

def word234_0_751 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_752 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_750 word234_0_751

def word234_0_753 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16851886841088652577#64)

def word234_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_752 word234_0_753

def word234_0_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16851886841088652577#64)

def word234_0_756 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_754 word234_0_755

def word234_0_757 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_756 word234_0_62

def word234_0_758 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_759 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_757 word234_0_758

def word234_0_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 769057034638164883#64)

def word234_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_759 word234_0_760

def word234_0_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 769057034638164883#64)

def word234_0_763 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_761 word234_0_762

def word234_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_763 word234_0_62

def word234_0_765 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_766 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_764 word234_0_765

def word234_0_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12759459676965692222#64)

def word234_0_768 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_766 word234_0_767

def word234_0_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12759459676965692222#64)

def word234_0_770 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_768 word234_0_769

def word234_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_770 word234_0_62

def word234_0_772 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_771 word234_0_772

def word234_0_774 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4950902458522835297#64)

def word234_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_773 word234_0_774

def word234_0_776 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4950902458522835297#64)

def word234_0_777 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_775 word234_0_776

def word234_0_778 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_777 word234_0_62

def word234_0_779 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_780 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_778 word234_0_779

def word234_0_781 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8966028197115305569#64)

def word234_0_782 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_780 word234_0_781

def word234_0_783 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8966028197115305569#64)

def word234_0_784 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_782 word234_0_783

def word234_0_785 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_784 word234_0_62

def word234_0_786 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_785 word234_0_786

def word234_0_788 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7266436947758633777#64)

def word234_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_787 word234_0_788

def word234_0_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7266436947758633777#64)

def word234_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_789 word234_0_790

def word234_0_792 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_791 word234_0_62

def word234_0_793 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_794 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_792 word234_0_793

def word234_0_795 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10071477786334422691#64)

def word234_0_796 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_794 word234_0_795

def word234_0_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10071477786334422691#64)

def word234_0_798 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_796 word234_0_797

def word234_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_798 word234_0_62

def word234_0_800 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_799 word234_0_800

def word234_0_802 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7306989794471028984#64)

def word234_0_803 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_801 word234_0_802

def word234_0_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7306989794471028984#64)

def word234_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_803 word234_0_804

def word234_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_805 word234_0_62

def word234_0_807 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_808 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_806 word234_0_807

def word234_0_809 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7084305315825048956#64)

def word234_0_810 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_808 word234_0_809

def word234_0_811 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7084305315825048956#64)

def word234_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_810 word234_0_811

def word234_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_812 word234_0_62

def word234_0_814 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_813 word234_0_814

def word234_0_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7029210297249303693#64)

def word234_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_815 word234_0_816

def word234_0_818 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7029210297249303693#64)

def word234_0_819 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_817 word234_0_818

def word234_0_820 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_819 word234_0_62

def word234_0_821 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_822 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_820 word234_0_821

def word234_0_823 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13888135131756750481#64)

def word234_0_824 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_822 word234_0_823

def word234_0_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13888135131756750481#64)

def word234_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_824 word234_0_825

def word234_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_826 word234_0_62

def word234_0_828 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_829 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_827 word234_0_828

def word234_0_830 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14177739452029277007#64)

def word234_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_829 word234_0_830

def word234_0_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14177739452029277007#64)

def word234_0_833 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_831 word234_0_832

def word234_0_834 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_833 word234_0_62

def word234_0_835 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_834 word234_0_835

def word234_0_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14252389220175874436#64)

def word234_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_836 word234_0_837

def word234_0_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14252389220175874436#64)

def word234_0_840 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_838 word234_0_839

def word234_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_840 word234_0_62

def word234_0_842 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_843 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_841 word234_0_842

def word234_0_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9811086372826997062#64)

def word234_0_845 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_843 word234_0_844

def word234_0_846 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9811086372826997062#64)

def word234_0_847 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_845 word234_0_846

def word234_0_848 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_847 word234_0_62

def word234_0_849 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_848 word234_0_849

def word234_0_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4148236750813913193#64)

def word234_0_852 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_850 word234_0_851

def word234_0_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4148236750813913193#64)

def word234_0_854 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_852 word234_0_853

def word234_0_855 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_854 word234_0_62

def word234_0_856 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_857 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_855 word234_0_856

def word234_0_858 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16270233324326695721#64)

def word234_0_859 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_857 word234_0_858

def word234_0_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16270233324326695721#64)

def word234_0_861 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_859 word234_0_860

def word234_0_862 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_861 word234_0_62

def word234_0_863 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_864 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_862 word234_0_863

def word234_0_865 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13946718005913151880#64)

def word234_0_866 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_864 word234_0_865

def word234_0_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13946718005913151880#64)

def word234_0_868 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_866 word234_0_867

def word234_0_869 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_868 word234_0_62

def word234_0_870 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_871 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_869 word234_0_870

def word234_0_872 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3711126838644903941#64)

def word234_0_873 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_871 word234_0_872

def word234_0_874 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3711126838644903941#64)

def word234_0_875 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_873 word234_0_874

def word234_0_876 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_875 word234_0_62

def word234_0_877 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_878 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_876 word234_0_877

def word234_0_879 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16759306985766108712#64)

def word234_0_880 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_878 word234_0_879

def word234_0_881 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16759306985766108712#64)

def word234_0_882 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_880 word234_0_881

def word234_0_883 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_882 word234_0_62

def word234_0_884 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_885 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_883 word234_0_884

def word234_0_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3933481249500794299#64)

def word234_0_887 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_885 word234_0_886

def word234_0_888 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3933481249500794299#64)

def word234_0_889 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_887 word234_0_888

def word234_0_890 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_889 word234_0_62

def word234_0_891 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_892 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_890 word234_0_891

def word234_0_893 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1118330456063409845#64)

def word234_0_894 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_892 word234_0_893

def word234_0_895 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1118330456063409845#64)

def word234_0_896 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_894 word234_0_895

def word234_0_897 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_896 word234_0_62

def word234_0_898 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_899 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_897 word234_0_898

def word234_0_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16690822807669725318#64)

def word234_0_901 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_899 word234_0_900

def word234_0_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16690822807669725318#64)

def word234_0_903 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_901 word234_0_902

def word234_0_904 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_903 word234_0_62

def word234_0_905 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_906 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_904 word234_0_905

def word234_0_907 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10321710174032666548#64)

def word234_0_908 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_906 word234_0_907

def word234_0_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10321710174032666548#64)

def word234_0_910 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_908 word234_0_909

def word234_0_911 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_910 word234_0_62

def word234_0_912 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_913 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_911 word234_0_912

def word234_0_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6645715209169319136#64)

def word234_0_915 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_913 word234_0_914

def word234_0_916 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6645715209169319136#64)

def word234_0_917 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_915 word234_0_916

def word234_0_918 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_917 word234_0_62

def word234_0_919 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_920 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_918 word234_0_919

def word234_0_921 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14999431457205804696#64)

def word234_0_922 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_920 word234_0_921

def word234_0_923 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14999431457205804696#64)

def word234_0_924 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_922 word234_0_923

def word234_0_925 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_924 word234_0_62

def word234_0_926 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_927 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_925 word234_0_926

def word234_0_928 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9193974944397644221#64)

def word234_0_929 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_927 word234_0_928

def word234_0_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9193974944397644221#64)

def word234_0_931 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_929 word234_0_930

def word234_0_932 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_931 word234_0_62

def word234_0_933 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_934 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_932 word234_0_933

def word234_0_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10997307108222598233#64)

def word234_0_936 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_934 word234_0_935

def word234_0_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10997307108222598233#64)

def word234_0_938 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_936 word234_0_937

def word234_0_939 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_938 word234_0_62

def word234_0_940 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_941 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_939 word234_0_940

def word234_0_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17852298416714530259#64)

def word234_0_943 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_941 word234_0_942

def word234_0_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17852298416714530259#64)

def word234_0_945 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_943 word234_0_944

def word234_0_946 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_945 word234_0_62

def word234_0_947 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_948 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_946 word234_0_947

def word234_0_949 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13682468819463763654#64)

def word234_0_950 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_948 word234_0_949

def word234_0_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13682468819463763654#64)

def word234_0_952 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_950 word234_0_951

def word234_0_953 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_952 word234_0_62

def word234_0_954 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_955 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_953 word234_0_954

def word234_0_956 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17533508449362819567#64)

def word234_0_957 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_955 word234_0_956

def word234_0_958 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17533508449362819567#64)

def word234_0_959 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_957 word234_0_958

def word234_0_960 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_959 word234_0_62

def word234_0_961 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_962 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_960 word234_0_961

def word234_0_963 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5119082511933781574#64)

def word234_0_964 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_962 word234_0_963

def word234_0_965 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5119082511933781574#64)

def word234_0_966 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_964 word234_0_965

def word234_0_967 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_966 word234_0_62

def word234_0_968 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_969 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_967 word234_0_968

def word234_0_970 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18384370464483103265#64)

def word234_0_971 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_969 word234_0_970

def word234_0_972 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18384370464483103265#64)

def word234_0_973 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_971 word234_0_972

def word234_0_974 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_973 word234_0_62

def word234_0_975 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_976 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_974 word234_0_975

def word234_0_977 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12990861760746396188#64)

def word234_0_978 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_976 word234_0_977

def word234_0_979 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12990861760746396188#64)

def word234_0_980 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_978 word234_0_979

def word234_0_981 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_980 word234_0_62

def word234_0_982 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_983 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_981 word234_0_982

def word234_0_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 45569211422086573#64)

def word234_0_985 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_983 word234_0_984

def word234_0_986 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 45569211422086573#64)

def word234_0_987 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_985 word234_0_986

def word234_0_988 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_987 word234_0_62

def word234_0_989 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_990 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_988 word234_0_989

def word234_0_991 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1420783178076928847#64)

def word234_0_992 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_990 word234_0_991

def word234_0_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1420783178076928847#64)

def word234_0_994 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_992 word234_0_993

def word234_0_995 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_994 word234_0_62

def word234_0_996 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_997 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_995 word234_0_996

def word234_0_998 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14261549653343708295#64)

def word234_0_999 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_997 word234_0_998

def word234_0_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14261549653343708295#64)

def word234_0_1001 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_999 word234_0_1000

def word234_0_1002 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1001 word234_0_62

def word234_0_1003 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1004 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1002 word234_0_1003

def word234_0_1005 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8028620891772028719#64)

def word234_0_1006 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1004 word234_0_1005

def word234_0_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8028620891772028719#64)

def word234_0_1008 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1006 word234_0_1007

def word234_0_1009 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1008 word234_0_62

def word234_0_1010 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1011 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1009 word234_0_1010

def word234_0_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3012752997787233642#64)

def word234_0_1013 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1011 word234_0_1012

def word234_0_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3012752997787233642#64)

def word234_0_1015 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1013 word234_0_1014

def word234_0_1016 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1015 word234_0_62

def word234_0_1017 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1018 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1016 word234_0_1017

def word234_0_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6485064407427613008#64)

def word234_0_1020 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1018 word234_0_1019

def word234_0_1021 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6485064407427613008#64)

def word234_0_1022 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1020 word234_0_1021

def word234_0_1023 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1022 word234_0_62

def word234_0_1024 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1025 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1023 word234_0_1024

def word234_0_1026 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9024665051920482203#64)

def word234_0_1027 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1025 word234_0_1026

def word234_0_1028 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9024665051920482203#64)

def word234_0_1029 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1027 word234_0_1028

def word234_0_1030 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1029 word234_0_62

def word234_0_1031 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1032 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1030 word234_0_1031

def word234_0_1033 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 509635415706274098#64)

def word234_0_1034 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1032 word234_0_1033

def word234_0_1035 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 509635415706274098#64)

def word234_0_1036 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1034 word234_0_1035

def word234_0_1037 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1036 word234_0_62

def word234_0_1038 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1039 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1037 word234_0_1038

def word234_0_1040 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 513790109098180968#64)

def word234_0_1041 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1039 word234_0_1040

def word234_0_1042 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 513790109098180968#64)

def word234_0_1043 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1041 word234_0_1042

def word234_0_1044 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1043 word234_0_62

def word234_0_1045 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1046 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1044 word234_0_1045

def word234_0_1047 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6654427682542765749#64)

def word234_0_1048 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1046 word234_0_1047

def word234_0_1049 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6654427682542765749#64)

def word234_0_1050 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1048 word234_0_1049

def word234_0_1051 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1050 word234_0_62

def word234_0_1052 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1053 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1051 word234_0_1052

def word234_0_1054 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3185811144024273606#64)

def word234_0_1055 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1053 word234_0_1054

def word234_0_1056 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3185811144024273606#64)

def word234_0_1057 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1055 word234_0_1056

def word234_0_1058 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1057 word234_0_62

def word234_0_1059 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1060 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1058 word234_0_1059

def word234_0_1061 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2642828698713700799#64)

def word234_0_1062 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1060 word234_0_1061

def word234_0_1063 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2642828698713700799#64)

def word234_0_1064 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1062 word234_0_1063

def word234_0_1065 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1064 word234_0_62

def word234_0_1066 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1067 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1065 word234_0_1066

def word234_0_1068 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8403734739674248209#64)

def word234_0_1069 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1067 word234_0_1068

def word234_0_1070 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8403734739674248209#64)

def word234_0_1071 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1069 word234_0_1070

def word234_0_1072 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1071 word234_0_62

def word234_0_1073 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1074 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1072 word234_0_1073

def word234_0_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4570195437231161528#64)

def word234_0_1076 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1074 word234_0_1075

def word234_0_1077 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4570195437231161528#64)

def word234_0_1078 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1076 word234_0_1077

def word234_0_1079 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1078 word234_0_62

def word234_0_1080 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1081 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1079 word234_0_1080

def word234_0_1082 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2865159620061659274#64)

def word234_0_1083 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1081 word234_0_1082

def word234_0_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2865159620061659274#64)

def word234_0_1085 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1083 word234_0_1084

def word234_0_1086 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1085 word234_0_62

def word234_0_1087 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1088 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1086 word234_0_1087

def word234_0_1089 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11834257535751936085#64)

def word234_0_1090 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1088 word234_0_1089

def word234_0_1091 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11834257535751936085#64)

def word234_0_1092 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1090 word234_0_1091

def word234_0_1093 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1092 word234_0_62

def word234_0_1094 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1095 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1093 word234_0_1094

def word234_0_1096 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11238910945741517983#64)

def word234_0_1097 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1095 word234_0_1096

def word234_0_1098 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11238910945741517983#64)

def word234_0_1099 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1097 word234_0_1098

def word234_0_1100 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1099 word234_0_62

def word234_0_1101 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1102 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1100 word234_0_1101

def word234_0_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5051471170685666284#64)

def word234_0_1104 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1102 word234_0_1103

def word234_0_1105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5051471170685666284#64)

def word234_0_1106 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1104 word234_0_1105

def word234_0_1107 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1106 word234_0_62

def word234_0_1108 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1109 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1107 word234_0_1108

def word234_0_1110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8388529781081192817#64)

def word234_0_1111 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1109 word234_0_1110

def word234_0_1112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8388529781081192817#64)

def word234_0_1113 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1111 word234_0_1112

def word234_0_1114 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1113 word234_0_62

def word234_0_1115 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1116 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1114 word234_0_1115

def word234_0_1117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4111925609465979383#64)

def word234_0_1118 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1116 word234_0_1117

def word234_0_1119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4111925609465979383#64)

def word234_0_1120 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1118 word234_0_1119

def word234_0_1121 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1120 word234_0_62

def word234_0_1122 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1123 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1121 word234_0_1122

def word234_0_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6127044969543437945#64)

def word234_0_1125 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1123 word234_0_1124

def word234_0_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6127044969543437945#64)

def word234_0_1127 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1125 word234_0_1126

def word234_0_1128 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1127 word234_0_62

def word234_0_1129 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1130 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1128 word234_0_1129

def word234_0_1131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6753662340923002970#64)

def word234_0_1132 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1130 word234_0_1131

def word234_0_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6753662340923002970#64)

def word234_0_1134 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1132 word234_0_1133

def word234_0_1135 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1134 word234_0_62

def word234_0_1136 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1137 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1135 word234_0_1136

def word234_0_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8574440873971553187#64)

def word234_0_1139 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1137 word234_0_1138

def word234_0_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8574440873971553187#64)

def word234_0_1141 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1139 word234_0_1140

def word234_0_1142 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1141 word234_0_62

def word234_0_1143 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1144 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1142 word234_0_1143

def word234_0_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18394326828626289069#64)

def word234_0_1146 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1144 word234_0_1145

def word234_0_1147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18394326828626289069#64)

def word234_0_1148 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1146 word234_0_1147

def word234_0_1149 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1148 word234_0_62

def word234_0_1150 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1151 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1149 word234_0_1150

def word234_0_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10155487541343898339#64)

def word234_0_1153 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1151 word234_0_1152

def word234_0_1154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10155487541343898339#64)

def word234_0_1155 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1153 word234_0_1154

def word234_0_1156 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1155 word234_0_62

def word234_0_1157 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1158 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1156 word234_0_1157

def word234_0_1159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1481155093728913364#64)

def word234_0_1160 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1158 word234_0_1159

def word234_0_1161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1481155093728913364#64)

def word234_0_1162 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1160 word234_0_1161

def word234_0_1163 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1162 word234_0_62

def word234_0_1164 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1165 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1163 word234_0_1164

def word234_0_1166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8007640090153561430#64)

def word234_0_1167 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1165 word234_0_1166

def word234_0_1168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8007640090153561430#64)

def word234_0_1169 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1167 word234_0_1168

def word234_0_1170 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1169 word234_0_62

def word234_0_1171 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1172 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1170 word234_0_1171

def word234_0_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13202094277331385963#64)

def word234_0_1174 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1172 word234_0_1173

def word234_0_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13202094277331385963#64)

def word234_0_1176 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1174 word234_0_1175

def word234_0_1177 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1176 word234_0_62

def word234_0_1178 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1179 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1177 word234_0_1178

def word234_0_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3699131559765823562#64)

def word234_0_1181 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1179 word234_0_1180

def word234_0_1182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3699131559765823562#64)

def word234_0_1183 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1181 word234_0_1182

def word234_0_1184 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1183 word234_0_62

def word234_0_1185 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1186 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1184 word234_0_1185

def word234_0_1187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13528641530791972254#64)

def word234_0_1188 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1186 word234_0_1187

def word234_0_1189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13528641530791972254#64)

def word234_0_1190 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1188 word234_0_1189

def word234_0_1191 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1190 word234_0_62

def word234_0_1192 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1193 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1191 word234_0_1192

def word234_0_1194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 340637930261636494#64)

def word234_0_1195 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1193 word234_0_1194

def word234_0_1196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 340637930261636494#64)

def word234_0_1197 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1195 word234_0_1196

def word234_0_1198 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1197 word234_0_62

def word234_0_1199 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1200 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1198 word234_0_1199

def word234_0_1201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15870710482613367463#64)

def word234_0_1202 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1200 word234_0_1201

def word234_0_1203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15870710482613367463#64)

def word234_0_1204 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1202 word234_0_1203

def word234_0_1205 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1204 word234_0_62

def word234_0_1206 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1207 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1205 word234_0_1206

def word234_0_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17172055514406784034#64)

def word234_0_1209 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1207 word234_0_1208

def word234_0_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17172055514406784034#64)

def word234_0_1211 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1209 word234_0_1210

def word234_0_1212 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1211 word234_0_62

def word234_0_1213 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1214 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1212 word234_0_1213

def word234_0_1215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14133020127007460970#64)

def word234_0_1216 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1214 word234_0_1215

def word234_0_1217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14133020127007460970#64)

def word234_0_1218 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1216 word234_0_1217

def word234_0_1219 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1218 word234_0_62

def word234_0_1220 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1221 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1219 word234_0_1220

def word234_0_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3965534581494204130#64)

def word234_0_1223 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1221 word234_0_1222

def word234_0_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3965534581494204130#64)

def word234_0_1225 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1223 word234_0_1224

def word234_0_1226 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1225 word234_0_62

def word234_0_1227 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1228 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1226 word234_0_1227

def word234_0_1229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3173447334197983662#64)

def word234_0_1230 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1228 word234_0_1229

def word234_0_1231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3173447334197983662#64)

def word234_0_1232 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1230 word234_0_1231

def word234_0_1233 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1232 word234_0_62

def word234_0_1234 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1235 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1233 word234_0_1234

def word234_0_1236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14368533742882113932#64)

def word234_0_1237 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1235 word234_0_1236

def word234_0_1238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14368533742882113932#64)

def word234_0_1239 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1237 word234_0_1238

def word234_0_1240 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1239 word234_0_62

def word234_0_1241 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1242 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1240 word234_0_1241

def word234_0_1243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12415197558330999895#64)

def word234_0_1244 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1242 word234_0_1243

def word234_0_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12415197558330999895#64)

def word234_0_1246 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1244 word234_0_1245

def word234_0_1247 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1246 word234_0_62

def word234_0_1248 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1249 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1247 word234_0_1248

def word234_0_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11736201854900641778#64)

def word234_0_1251 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1249 word234_0_1250

def word234_0_1252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11736201854900641778#64)

def word234_0_1253 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1251 word234_0_1252

def word234_0_1254 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1253 word234_0_62

def word234_0_1255 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1256 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1254 word234_0_1255

def word234_0_1257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16476971752832647834#64)

def word234_0_1258 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1256 word234_0_1257

def word234_0_1259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16476971752832647834#64)

def word234_0_1260 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1258 word234_0_1259

def word234_0_1261 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1260 word234_0_62

def word234_0_1262 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1263 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1261 word234_0_1262

def word234_0_1264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17445207633720542226#64)

def word234_0_1265 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1263 word234_0_1264

def word234_0_1266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17445207633720542226#64)

def word234_0_1267 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1265 word234_0_1266

def word234_0_1268 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1267 word234_0_62

def word234_0_1269 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1270 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1268 word234_0_1269

def word234_0_1271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1013143465238215583#64)

def word234_0_1272 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1270 word234_0_1271

def word234_0_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1013143465238215583#64)

def word234_0_1274 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1272 word234_0_1273

def word234_0_1275 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1274 word234_0_62

def word234_0_1276 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1277 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1275 word234_0_1276

def word234_0_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 424026453363255084#64)

def word234_0_1279 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1277 word234_0_1278

def word234_0_1280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 424026453363255084#64)

def word234_0_1281 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1279 word234_0_1280

def word234_0_1282 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1281 word234_0_62

def word234_0_1283 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1284 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1282 word234_0_1283

def word234_0_1285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14968108404964173521#64)

def word234_0_1286 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1284 word234_0_1285

def word234_0_1287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14968108404964173521#64)

def word234_0_1288 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1286 word234_0_1287

def word234_0_1289 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1288 word234_0_62

def word234_0_1290 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1291 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1289 word234_0_1290

def word234_0_1292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10554179017340196119#64)

def word234_0_1293 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1291 word234_0_1292

def word234_0_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10554179017340196119#64)

def word234_0_1295 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1293 word234_0_1294

def word234_0_1296 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1295 word234_0_62

def word234_0_1297 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1298 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1296 word234_0_1297

def word234_0_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7501102438331281009#64)

def word234_0_1300 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1298 word234_0_1299

def word234_0_1301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7501102438331281009#64)

def word234_0_1302 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1300 word234_0_1301

def word234_0_1303 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1302 word234_0_62

def word234_0_1304 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1305 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1303 word234_0_1304

def word234_0_1306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12433118847022113593#64)

def word234_0_1307 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1305 word234_0_1306

def word234_0_1308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12433118847022113593#64)

def word234_0_1309 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1307 word234_0_1308

def word234_0_1310 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1309 word234_0_62

def word234_0_1311 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1312 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1310 word234_0_1311

def word234_0_1313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 690731836760980218#64)

def word234_0_1314 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1312 word234_0_1313

def word234_0_1315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 690731836760980218#64)

def word234_0_1316 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1314 word234_0_1315

def word234_0_1317 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1316 word234_0_62

def word234_0_1318 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1319 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1317 word234_0_1318

def word234_0_1320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10578288101608441794#64)

def word234_0_1321 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1319 word234_0_1320

def word234_0_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10578288101608441794#64)

def word234_0_1323 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1321 word234_0_1322

def word234_0_1324 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1323 word234_0_62

def word234_0_1325 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1326 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1324 word234_0_1325

def word234_0_1327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6123628888509943429#64)

def word234_0_1328 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1326 word234_0_1327

def word234_0_1329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6123628888509943429#64)

def word234_0_1330 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1328 word234_0_1329

def word234_0_1331 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1330 word234_0_62

def word234_0_1332 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1333 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1331 word234_0_1332

def word234_0_1334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5094693348458656889#64)

def word234_0_1335 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1333 word234_0_1334

def word234_0_1336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5094693348458656889#64)

def word234_0_1337 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1335 word234_0_1336

def word234_0_1338 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1337 word234_0_62

def word234_0_1339 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1340 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1338 word234_0_1339

def word234_0_1341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6516980136051946547#64)

def word234_0_1342 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1340 word234_0_1341

def word234_0_1343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6516980136051946547#64)

def word234_0_1344 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1342 word234_0_1343

def word234_0_1345 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1344 word234_0_62

def word234_0_1346 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1347 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1345 word234_0_1346

def word234_0_1348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 91644931610378662#64)

def word234_0_1349 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1347 word234_0_1348

def word234_0_1350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 91644931610378662#64)

def word234_0_1351 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1349 word234_0_1350

def word234_0_1352 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1351 word234_0_62

def word234_0_1353 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1354 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1352 word234_0_1353

def word234_0_1355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15468643217874662509#64)

def word234_0_1356 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1354 word234_0_1355

def word234_0_1357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15468643217874662509#64)

def word234_0_1358 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1356 word234_0_1357

def word234_0_1359 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1358 word234_0_62

def word234_0_1360 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1361 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1359 word234_0_1360

def word234_0_1362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6210536894189389677#64)

def word234_0_1363 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1361 word234_0_1362

def word234_0_1364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6210536894189389677#64)

def word234_0_1365 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1363 word234_0_1364

def word234_0_1366 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1365 word234_0_62

def word234_0_1367 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1368 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1366 word234_0_1367

def word234_0_1369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17847289674800666119#64)

def word234_0_1370 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1368 word234_0_1369

def word234_0_1371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17847289674800666119#64)

def word234_0_1372 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1370 word234_0_1371

def word234_0_1373 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1372 word234_0_62

def word234_0_1374 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1375 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1373 word234_0_1374

def word234_0_1376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3106964598684577348#64)

def word234_0_1377 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1375 word234_0_1376

def word234_0_1378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3106964598684577348#64)

def word234_0_1379 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1377 word234_0_1378

def word234_0_1380 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1379 word234_0_62

def word234_0_1381 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1382 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1380 word234_0_1381

def word234_0_1383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8402432595930871483#64)

def word234_0_1384 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1382 word234_0_1383

def word234_0_1385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8402432595930871483#64)

def word234_0_1386 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1384 word234_0_1385

def word234_0_1387 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1386 word234_0_62

def word234_0_1388 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1389 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1387 word234_0_1388

def word234_0_1390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3207977348847941336#64)

def word234_0_1391 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1389 word234_0_1390

def word234_0_1392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3207977348847941336#64)

def word234_0_1393 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1391 word234_0_1392

def word234_0_1394 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1393 word234_0_62

def word234_0_1395 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1396 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1394 word234_0_1395

def word234_0_1397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6118280012185379707#64)

def word234_0_1398 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1396 word234_0_1397

def word234_0_1399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6118280012185379707#64)

def word234_0_1400 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1398 word234_0_1399

def word234_0_1401 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1400 word234_0_62

def word234_0_1402 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1403 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1401 word234_0_1402

def word234_0_1404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15554389263149372507#64)

def word234_0_1405 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1403 word234_0_1404

def word234_0_1406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15554389263149372507#64)

def word234_0_1407 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1405 word234_0_1406

def word234_0_1408 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1407 word234_0_62

def word234_0_1409 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1410 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1408 word234_0_1409

def word234_0_1411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 825768116663620526#64)

def word234_0_1412 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1410 word234_0_1411

def word234_0_1413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 825768116663620526#64)

def word234_0_1414 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1412 word234_0_1413

def word234_0_1415 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1414 word234_0_62

def word234_0_1416 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1417 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1415 word234_0_1416

def word234_0_1418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7259264309575870851#64)

def word234_0_1419 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1417 word234_0_1418

def word234_0_1420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7259264309575870851#64)

def word234_0_1421 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1419 word234_0_1420

def word234_0_1422 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1421 word234_0_62

def word234_0_1423 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1424 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1422 word234_0_1423

def word234_0_1425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4116471800096853880#64)

def word234_0_1426 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1424 word234_0_1425

def word234_0_1427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4116471800096853880#64)

def word234_0_1428 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1426 word234_0_1427

def word234_0_1429 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1428 word234_0_62

def word234_0_1430 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1431 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1429 word234_0_1430

def word234_0_1432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3220628530898328474#64)

def word234_0_1433 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1431 word234_0_1432

def word234_0_1434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3220628530898328474#64)

def word234_0_1435 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1433 word234_0_1434

def word234_0_1436 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1435 word234_0_62

def word234_0_1437 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1438 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1436 word234_0_1437

def word234_0_1439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 785148066790290254#64)

def word234_0_1440 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1438 word234_0_1439

def word234_0_1441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 785148066790290254#64)

def word234_0_1442 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1440 word234_0_1441

def word234_0_1443 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1442 word234_0_62

def word234_0_1444 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1445 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1443 word234_0_1444

def word234_0_1446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15859045307365574315#64)

def word234_0_1447 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1445 word234_0_1446

def word234_0_1448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15859045307365574315#64)

def word234_0_1449 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1447 word234_0_1448

def word234_0_1450 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1449 word234_0_62

def word234_0_1451 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1452 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1450 word234_0_1451

def word234_0_1453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10080850857162126312#64)

def word234_0_1454 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1452 word234_0_1453

def word234_0_1455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10080850857162126312#64)

def word234_0_1456 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1454 word234_0_1455

def word234_0_1457 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1456 word234_0_62

def word234_0_1458 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1459 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1457 word234_0_1458

def word234_0_1460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17473130183572900340#64)

def word234_0_1461 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1459 word234_0_1460

def word234_0_1462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17473130183572900340#64)

def word234_0_1463 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1461 word234_0_1462

def word234_0_1464 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1463 word234_0_62

def word234_0_1465 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1466 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1464 word234_0_1465

def word234_0_1467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5280875127751342706#64)

def word234_0_1468 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1466 word234_0_1467

def word234_0_1469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 5280875127751342706#64)

def word234_0_1470 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1468 word234_0_1469

def word234_0_1471 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1470 word234_0_62

def word234_0_1472 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1473 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1471 word234_0_1472

def word234_0_1474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13478169855198869191#64)

def word234_0_1475 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1473 word234_0_1474

def word234_0_1476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13478169855198869191#64)

def word234_0_1477 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1475 word234_0_1476

def word234_0_1478 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1477 word234_0_62

def word234_0_1479 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1480 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1478 word234_0_1479

def word234_0_1481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1470386339905773104#64)

def word234_0_1482 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1480 word234_0_1481

def word234_0_1483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1470386339905773104#64)

def word234_0_1484 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1482 word234_0_1483

def word234_0_1485 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1484 word234_0_62

def word234_0_1486 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1487 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1485 word234_0_1486

def word234_0_1488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18063838854675756281#64)

def word234_0_1489 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1487 word234_0_1488

def word234_0_1490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18063838854675756281#64)

def word234_0_1491 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1489 word234_0_1490

def word234_0_1492 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1491 word234_0_62

def word234_0_1493 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1494 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1492 word234_0_1493

def word234_0_1495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6581698550652646368#64)

def word234_0_1496 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1494 word234_0_1495

def word234_0_1497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6581698550652646368#64)

def word234_0_1498 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1496 word234_0_1497

def word234_0_1499 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1498 word234_0_62

def word234_0_1500 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1501 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1499 word234_0_1500

def word234_0_1502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 105682938938997452#64)

def word234_0_1503 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1501 word234_0_1502

def word234_0_1504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 105682938938997452#64)

def word234_0_1505 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1503 word234_0_1504

def word234_0_1506 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1505 word234_0_62

def word234_0_1507 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1508 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1506 word234_0_1507

def word234_0_1509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7315579702113888802#64)

def word234_0_1510 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1508 word234_0_1509

def word234_0_1511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7315579702113888802#64)

def word234_0_1512 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1510 word234_0_1511

def word234_0_1513 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1512 word234_0_62

def word234_0_1514 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1515 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1513 word234_0_1514

def word234_0_1516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18112971320389354662#64)

def word234_0_1517 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1515 word234_0_1516

def word234_0_1518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 18112971320389354662#64)

def word234_0_1519 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1517 word234_0_1518

def word234_0_1520 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1519 word234_0_62

def word234_0_1521 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1522 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1520 word234_0_1521

def word234_0_1523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8240209784894197942#64)

def word234_0_1524 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1522 word234_0_1523

def word234_0_1525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8240209784894197942#64)

def word234_0_1526 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1524 word234_0_1525

def word234_0_1527 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1526 word234_0_62

def word234_0_1528 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1529 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1527 word234_0_1528

def word234_0_1530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6744886295492200972#64)

def word234_0_1531 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1529 word234_0_1530

def word234_0_1532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6744886295492200972#64)

def word234_0_1533 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1531 word234_0_1532

def word234_0_1534 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1533 word234_0_62

def word234_0_1535 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1536 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1534 word234_0_1535

def word234_0_1537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8539428888738900801#64)

def word234_0_1538 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1536 word234_0_1537

def word234_0_1539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8539428888738900801#64)

def word234_0_1540 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1538 word234_0_1539

def word234_0_1541 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1540 word234_0_62

def word234_0_1542 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1543 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1541 word234_0_1542

def word234_0_1544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3697187765683852069#64)

def word234_0_1545 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1543 word234_0_1544

def word234_0_1546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 3697187765683852069#64)

def word234_0_1547 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1545 word234_0_1546

def word234_0_1548 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1547 word234_0_62

def word234_0_1549 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1550 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1548 word234_0_1549

def word234_0_1551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2390323488676383742#64)

def word234_0_1552 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1550 word234_0_1551

def word234_0_1553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2390323488676383742#64)

def word234_0_1554 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1552 word234_0_1553

def word234_0_1555 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1554 word234_0_62

def word234_0_1556 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1557 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1555 word234_0_1556

def word234_0_1558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17871315337231244794#64)

def word234_0_1559 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1557 word234_0_1558

def word234_0_1560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17871315337231244794#64)

def word234_0_1561 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1559 word234_0_1560

def word234_0_1562 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1561 word234_0_62

def word234_0_1563 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1564 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1562 word234_0_1563

def word234_0_1565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12006895627266174020#64)

def word234_0_1566 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1564 word234_0_1565

def word234_0_1567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12006895627266174020#64)

def word234_0_1568 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1566 word234_0_1567

def word234_0_1569 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1568 word234_0_62

def word234_0_1570 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1571 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1569 word234_0_1570

def word234_0_1572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6664420376411809383#64)

def word234_0_1573 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1571 word234_0_1572

def word234_0_1574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6664420376411809383#64)

def word234_0_1575 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1573 word234_0_1574

def word234_0_1576 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1575 word234_0_62

def word234_0_1577 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1578 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1576 word234_0_1577

def word234_0_1579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14947488578937618115#64)

def word234_0_1580 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1578 word234_0_1579

def word234_0_1581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14947488578937618115#64)

def word234_0_1582 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1580 word234_0_1581

def word234_0_1583 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1582 word234_0_62

def word234_0_1584 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1585 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1583 word234_0_1584

def word234_0_1586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7602290591698202650#64)

def word234_0_1587 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1585 word234_0_1586

def word234_0_1588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7602290591698202650#64)

def word234_0_1589 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1587 word234_0_1588

def word234_0_1590 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1589 word234_0_62

def word234_0_1591 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1592 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1590 word234_0_1591

def word234_0_1593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7843373463766933664#64)

def word234_0_1594 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1592 word234_0_1593

def word234_0_1595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7843373463766933664#64)

def word234_0_1596 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1594 word234_0_1595

def word234_0_1597 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1596 word234_0_62

def word234_0_1598 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1599 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1597 word234_0_1598

def word234_0_1600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16251937524398416173#64)

def word234_0_1601 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1599 word234_0_1600

def word234_0_1602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16251937524398416173#64)

def word234_0_1603 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1601 word234_0_1602

def word234_0_1604 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1603 word234_0_62

def word234_0_1605 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1606 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1604 word234_0_1605

def word234_0_1607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16491285021543357750#64)

def word234_0_1608 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1606 word234_0_1607

def word234_0_1609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16491285021543357750#64)

def word234_0_1610 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1608 word234_0_1609

def word234_0_1611 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1610 word234_0_62

def word234_0_1612 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1613 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1611 word234_0_1612

def word234_0_1614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8388552398802175010#64)

def word234_0_1615 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1613 word234_0_1614

def word234_0_1616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8388552398802175010#64)

def word234_0_1617 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1615 word234_0_1616

def word234_0_1618 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1617 word234_0_62

def word234_0_1619 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1620 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1618 word234_0_1619

def word234_0_1621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13721634289081332861#64)

def word234_0_1622 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1620 word234_0_1621

def word234_0_1623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13721634289081332861#64)

def word234_0_1624 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1622 word234_0_1623

def word234_0_1625 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1624 word234_0_62

def word234_0_1626 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1627 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1625 word234_0_1626

def word234_0_1628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11723496258667999243#64)

def word234_0_1629 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1627 word234_0_1628

def word234_0_1630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 11723496258667999243#64)

def word234_0_1631 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1629 word234_0_1630

def word234_0_1632 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1631 word234_0_62

def word234_0_1633 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1634 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1632 word234_0_1633

def word234_0_1635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8290189175361551552#64)

def word234_0_1636 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1634 word234_0_1635

def word234_0_1637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8290189175361551552#64)

def word234_0_1638 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1636 word234_0_1637

def word234_0_1639 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1638 word234_0_62

def word234_0_1640 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1641 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1639 word234_0_1640

def word234_0_1642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4618397651472586894#64)

def word234_0_1643 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1641 word234_0_1642

def word234_0_1644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4618397651472586894#64)

def word234_0_1645 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1643 word234_0_1644

def word234_0_1646 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1645 word234_0_62

def word234_0_1647 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1648 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1646 word234_0_1647

def word234_0_1649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7571141537874358586#64)

def word234_0_1650 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1648 word234_0_1649

def word234_0_1651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7571141537874358586#64)

def word234_0_1652 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1650 word234_0_1651

def word234_0_1653 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1652 word234_0_62

def word234_0_1654 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1655 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1653 word234_0_1654

def word234_0_1656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4867171076863847426#64)

def word234_0_1657 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1655 word234_0_1656

def word234_0_1658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4867171076863847426#64)

def word234_0_1659 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1657 word234_0_1658

def word234_0_1660 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1659 word234_0_62

def word234_0_1661 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1662 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1660 word234_0_1661

def word234_0_1663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8351873792473709480#64)

def word234_0_1664 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1662 word234_0_1663

def word234_0_1665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8351873792473709480#64)

def word234_0_1666 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1664 word234_0_1665

def word234_0_1667 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1666 word234_0_62

def word234_0_1668 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1669 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1667 word234_0_1668

def word234_0_1670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17782739426466776193#64)

def word234_0_1671 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1669 word234_0_1670

def word234_0_1672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17782739426466776193#64)

def word234_0_1673 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1671 word234_0_1672

def word234_0_1674 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1673 word234_0_62

def word234_0_1675 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1676 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1674 word234_0_1675

def word234_0_1677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4526876414717359258#64)

def word234_0_1678 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1676 word234_0_1677

def word234_0_1679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4526876414717359258#64)

def word234_0_1680 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1678 word234_0_1679

def word234_0_1681 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1680 word234_0_62

def word234_0_1682 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1683 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1681 word234_0_1682

def word234_0_1684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10274268464843138734#64)

def word234_0_1685 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1683 word234_0_1684

def word234_0_1686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10274268464843138734#64)

def word234_0_1687 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1685 word234_0_1686

def word234_0_1688 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1687 word234_0_62

def word234_0_1689 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1690 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1688 word234_0_1689

def word234_0_1691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16824209053157969140#64)

def word234_0_1692 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1690 word234_0_1691

def word234_0_1693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16824209053157969140#64)

def word234_0_1694 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1692 word234_0_1693

def word234_0_1695 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1694 word234_0_62

def word234_0_1696 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1697 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1695 word234_0_1696

def word234_0_1698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7786711905802725111#64)

def word234_0_1699 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1697 word234_0_1698

def word234_0_1700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7786711905802725111#64)

def word234_0_1701 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1699 word234_0_1700

def word234_0_1702 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1701 word234_0_62

def word234_0_1703 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1704 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1702 word234_0_1703

def word234_0_1705 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16482954048828300402#64)

def word234_0_1706 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1704 word234_0_1705

def word234_0_1707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 16482954048828300402#64)

def word234_0_1708 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1706 word234_0_1707

def word234_0_1709 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1708 word234_0_62

def word234_0_1710 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1711 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1709 word234_0_1710

def word234_0_1712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9134525602405993810#64)

def word234_0_1713 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1711 word234_0_1712

def word234_0_1714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9134525602405993810#64)

def word234_0_1715 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1713 word234_0_1714

def word234_0_1716 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1715 word234_0_62

def word234_0_1717 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1718 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1716 word234_0_1717

def word234_0_1719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14604653709840004316#64)

def word234_0_1720 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1718 word234_0_1719

def word234_0_1721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14604653709840004316#64)

def word234_0_1722 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1720 word234_0_1721

def word234_0_1723 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1722 word234_0_62

def word234_0_1724 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1725 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1723 word234_0_1724

def word234_0_1726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2300633297700838512#64)

def word234_0_1727 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1725 word234_0_1726

def word234_0_1728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2300633297700838512#64)

def word234_0_1729 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1727 word234_0_1728

def word234_0_1730 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1729 word234_0_62

def word234_0_1731 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1732 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1730 word234_0_1731

def word234_0_1733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7100965087805631020#64)

def word234_0_1734 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1732 word234_0_1733

def word234_0_1735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 7100965087805631020#64)

def word234_0_1736 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1734 word234_0_1735

def word234_0_1737 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1736 word234_0_62

def word234_0_1738 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1739 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1737 word234_0_1738

def word234_0_1740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17653769186452274312#64)

def word234_0_1741 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1739 word234_0_1740

def word234_0_1742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 17653769186452274312#64)

def word234_0_1743 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1741 word234_0_1742

def word234_0_1744 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1743 word234_0_62

def word234_0_1745 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1746 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1744 word234_0_1745

def word234_0_1747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13434765484626730719#64)

def word234_0_1748 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1746 word234_0_1747

def word234_0_1749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 13434765484626730719#64)

def word234_0_1750 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1748 word234_0_1749

def word234_0_1751 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1750 word234_0_62

def word234_0_1752 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1753 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1751 word234_0_1752

def word234_0_1754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14108377942339324501#64)

def word234_0_1755 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1753 word234_0_1754

def word234_0_1756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14108377942339324501#64)

def word234_0_1757 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1755 word234_0_1756

def word234_0_1758 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1757 word234_0_62

def word234_0_1759 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1760 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1758 word234_0_1759

def word234_0_1761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2113714948559937023#64)

def word234_0_1762 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1760 word234_0_1761

def word234_0_1763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2113714948559937023#64)

def word234_0_1764 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1762 word234_0_1763

def word234_0_1765 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1764 word234_0_62

def word234_0_1766 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1767 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1765 word234_0_1766

def word234_0_1768 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10042038731026925717#64)

def word234_0_1769 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1767 word234_0_1768

def word234_0_1770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 10042038731026925717#64)

def word234_0_1771 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1769 word234_0_1770

def word234_0_1772 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1771 word234_0_62

def word234_0_1773 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1774 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1772 word234_0_1773

def word234_0_1775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12821921441708664034#64)

def word234_0_1776 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1774 word234_0_1775

def word234_0_1777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 12821921441708664034#64)

def word234_0_1778 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1776 word234_0_1777

def word234_0_1779 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1778 word234_0_62

def word234_0_1780 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1781 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1779 word234_0_1780

def word234_0_1782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9192677158497032927#64)

def word234_0_1783 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1781 word234_0_1782

def word234_0_1784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 9192677158497032927#64)

def word234_0_1785 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1783 word234_0_1784

def word234_0_1786 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1785 word234_0_62

def word234_0_1787 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1788 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1786 word234_0_1787

def word234_0_1789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2440275331481373231#64)

def word234_0_1790 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1788 word234_0_1789

def word234_0_1791 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2440275331481373231#64)

def word234_0_1792 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1790 word234_0_1791

def word234_0_1793 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1792 word234_0_62

def word234_0_1794 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1795 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1793 word234_0_1794

def word234_0_1796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6965264199319123290#64)

def word234_0_1797 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1795 word234_0_1796

def word234_0_1798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 6965264199319123290#64)

def word234_0_1799 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1797 word234_0_1798

def word234_0_1800 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1799 word234_0_62

def word234_0_1801 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1802 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1800 word234_0_1801

def word234_0_1803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1932755011918763066#64)

def word234_0_1804 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1802 word234_0_1803

def word234_0_1805 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1932755011918763066#64)

def word234_0_1806 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1804 word234_0_1805

def word234_0_1807 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1806 word234_0_62

def word234_0_1808 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1809 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1807 word234_0_1808

def word234_0_1810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2449361547660069867#64)

def word234_0_1811 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1809 word234_0_1810

def word234_0_1812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 2449361547660069867#64)

def word234_0_1813 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1811 word234_0_1812

def word234_0_1814 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1813 word234_0_62

def word234_0_1815 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1816 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1814 word234_0_1815

def word234_0_1817 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4134045736763573740#64)

def word234_0_1818 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1816 word234_0_1817

def word234_0_1819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 4134045736763573740#64)

def word234_0_1820 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1818 word234_0_1819

def word234_0_1821 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1820 word234_0_62

def word234_0_1822 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1823 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1821 word234_0_1822

def word234_0_1824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8017606045960358736#64)

def word234_0_1825 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1823 word234_0_1824

def word234_0_1826 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8017606045960358736#64)

def word234_0_1827 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1825 word234_0_1826

def word234_0_1828 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1827 word234_0_62

def word234_0_1829 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1830 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1828 word234_0_1829

def word234_0_1831 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14859615004192187521#64)

def word234_0_1832 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1830 word234_0_1831

def word234_0_1833 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 14859615004192187521#64)

def word234_0_1834 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1832 word234_0_1833

def word234_0_1835 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1834 word234_0_62

def word234_0_1836 : WordLangProgHOL (BitVec 64) :=
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

def word234_0_1837 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1835 word234_0_1836

def word234_0_1838 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15657776661966830049#64)

def word234_0_1839 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1837 word234_0_1838

def word234_0_1840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 15657776661966830049#64)

def word234_0_1841 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1839 word234_0_1840

def word234_0_1842 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1841 word234_0_62

def word234_0_1843 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1842 word234_0_8

def word234_0_1844 : WordLangProgHOL (BitVec 64) :=
.seq word234_0_1843 word234_0_10

def pass234_0 : WordLangProgHOL (BitVec 64) :=
word234_0_1844
theorem pass234_0_eq : WordSimp.compileExp (source234.2.2) = pass234_0 := by
  kernel_rfl
#print axioms pass234_0_eq
end InitECandidate.Proofs.WordStages
