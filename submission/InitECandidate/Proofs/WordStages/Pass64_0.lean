import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source64
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word64_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 8#64])

def word64_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word64_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_0 word64_0_1

def word64_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def word64_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_2 word64_0_3

def word64_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def word64_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_4 word64_0_5

def word64_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def word64_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_6 word64_0_7

def word64_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_8 word64_0_1

def word64_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_9 word64_0_3

def word64_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_10 word64_0_5

def word64_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 24#64])

def word64_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_11 word64_0_12

def word64_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_13 word64_0_1

def word64_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_14 word64_0_3

def word64_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_15 word64_0_5

def word64_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 32#64])

def word64_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_16 word64_0_17

def word64_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_18 word64_0_1

def word64_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_19 word64_0_3

def word64_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_20 word64_0_5

def word64_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 40#64])

def word64_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_21 word64_0_22

def word64_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_23 word64_0_1

def word64_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_24 word64_0_3

def word64_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_25 word64_0_5

def word64_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 48#64])

def word64_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_26 word64_0_27

def word64_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_28 word64_0_1

def word64_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_29 word64_0_3

def word64_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_30 word64_0_5

def word64_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 56#64])

def word64_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_31 word64_0_32

def word64_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_33 word64_0_1

def word64_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_34 word64_0_3

def word64_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_35 word64_0_5

def word64_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 64#64])

def word64_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_36 word64_0_37

def word64_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_38 word64_0_1

def word64_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_39 word64_0_3

def word64_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_40 word64_0_5

def word64_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 72#64])

def word64_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_41 word64_0_42

def word64_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_43 word64_0_1

def word64_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_44 word64_0_3

def word64_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_45 word64_0_5

def word64_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 80#64])

def word64_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_46 word64_0_47

def word64_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_48 word64_0_1

def word64_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_49 word64_0_3

def word64_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_50 word64_0_5

def word64_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 88#64])

def word64_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_51 word64_0_52

def word64_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_53 word64_0_1

def word64_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_54 word64_0_3

def word64_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_55 word64_0_5

def word64_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 96#64])

def word64_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_56 word64_0_57

def word64_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_58 word64_0_1

def word64_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_59 word64_0_3

def word64_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_60 word64_0_5

def word64_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 104#64])

def word64_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_61 word64_0_62

def word64_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_63 word64_0_1

def word64_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_64 word64_0_3

def word64_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_65 word64_0_5

def word64_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 112#64])

def word64_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_66 word64_0_67

def word64_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_68 word64_0_1

def word64_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_69 word64_0_3

def word64_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_70 word64_0_5

def word64_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 120#64])

def word64_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_71 word64_0_72

def word64_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_73 word64_0_1

def word64_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_74 word64_0_3

def word64_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_75 word64_0_5

def word64_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 128#64])

def word64_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_76 word64_0_77

def word64_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_78 word64_0_1

def word64_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_79 word64_0_3

def word64_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_80 word64_0_5

def word64_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 136#64])

def word64_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_81 word64_0_82

def word64_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_83 word64_0_1

def word64_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_84 word64_0_3

def word64_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_85 word64_0_5

def word64_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 144#64])

def word64_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_86 word64_0_87

def word64_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_88 word64_0_1

def word64_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_89 word64_0_3

def word64_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_90 word64_0_5

def word64_0_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 152#64])

def word64_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_91 word64_0_92

def word64_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_93 word64_0_1

def word64_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_94 word64_0_3

def word64_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_95 word64_0_5

def word64_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 160#64])

def word64_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_96 word64_0_97

def word64_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_98 word64_0_1

def word64_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_99 word64_0_3

def word64_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_100 word64_0_5

def word64_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 168#64])

def word64_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_101 word64_0_102

def word64_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_103 word64_0_1

def word64_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_104 word64_0_3

def word64_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_105 word64_0_5

def word64_0_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 176#64])

def word64_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_106 word64_0_107

def word64_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_108 word64_0_1

def word64_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_109 word64_0_3

def word64_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_110 word64_0_5

def word64_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 184#64])

def word64_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_111 word64_0_112

def word64_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_113 word64_0_1

def word64_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_114 word64_0_3

def word64_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_115 word64_0_5

def word64_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 192#64])

def word64_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_116 word64_0_117

def word64_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_118 word64_0_1

def word64_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_119 word64_0_3

def word64_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_120 word64_0_5

def word64_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 200#64])

def word64_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_121 word64_0_122

def word64_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_123 word64_0_1

def word64_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_124 word64_0_3

def word64_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_125 word64_0_5

def word64_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 208#64])

def word64_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_126 word64_0_127

def word64_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_128 word64_0_1

def word64_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_129 word64_0_3

def word64_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_130 word64_0_5

def word64_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 216#64])

def word64_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_131 word64_0_132

def word64_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_133 word64_0_1

def word64_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_134 word64_0_3

def word64_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_135 word64_0_5

def word64_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 224#64])

def word64_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_136 word64_0_137

def word64_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_138 word64_0_1

def word64_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_139 word64_0_3

def word64_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_140 word64_0_5

def word64_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 232#64])

def word64_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_141 word64_0_142

def word64_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_143 word64_0_1

def word64_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_144 word64_0_3

def word64_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_145 word64_0_5

def word64_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 240#64])

def word64_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_146 word64_0_147

def word64_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_148 word64_0_1

def word64_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_149 word64_0_3

def word64_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_150 word64_0_5

def word64_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 248#64])

def word64_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_151 word64_0_152

def word64_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_153 word64_0_1

def word64_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_154 word64_0_3

def word64_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_155 word64_0_5

def word64_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def word64_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_156 word64_0_157

def word64_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_158 word64_0_1

def word64_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_159 word64_0_3

def word64_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_160 word64_0_5

def word64_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 264#64])

def word64_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_161 word64_0_162

def word64_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_163 word64_0_1

def word64_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_164 word64_0_3

def word64_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_165 word64_0_5

def word64_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 272#64])

def word64_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_166 word64_0_167

def word64_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_168 word64_0_1

def word64_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_169 word64_0_3

def word64_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_170 word64_0_5

def word64_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 280#64])

def word64_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_171 word64_0_172

def word64_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_173 word64_0_1

def word64_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_174 word64_0_3

def word64_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_175 word64_0_5

def word64_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 288#64])

def word64_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_176 word64_0_177

def word64_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_178 word64_0_1

def word64_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_179 word64_0_3

def word64_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_180 word64_0_5

def word64_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 296#64])

def word64_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_181 word64_0_182

def word64_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_183 word64_0_1

def word64_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_184 word64_0_3

def word64_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_185 word64_0_5

def word64_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 304#64])

def word64_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_186 word64_0_187

def word64_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_188 word64_0_1

def word64_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_189 word64_0_3

def word64_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_190 word64_0_5

def word64_0_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 312#64])

def word64_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_191 word64_0_192

def word64_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_193 word64_0_1

def word64_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_194 word64_0_3

def word64_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_195 word64_0_5

def word64_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 320#64])

def word64_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_196 word64_0_197

def word64_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_198 word64_0_1

def word64_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_199 word64_0_3

def word64_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_200 word64_0_5

def word64_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 328#64])

def word64_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_201 word64_0_202

def word64_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_203 word64_0_1

def word64_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_204 word64_0_3

def word64_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_205 word64_0_5

def word64_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 336#64])

def word64_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_206 word64_0_207

def word64_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_208 word64_0_1

def word64_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_209 word64_0_3

def word64_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_210 word64_0_5

def word64_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 344#64])

def word64_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_211 word64_0_212

def word64_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_213 word64_0_1

def word64_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_214 word64_0_3

def word64_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_215 word64_0_5

def word64_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 352#64])

def word64_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_216 word64_0_217

def word64_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_218 word64_0_1

def word64_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_219 word64_0_3

def word64_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_220 word64_0_5

def word64_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 360#64])

def word64_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_221 word64_0_222

def word64_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_223 word64_0_1

def word64_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_224 word64_0_3

def word64_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_225 word64_0_5

def word64_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 368#64])

def word64_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_226 word64_0_227

def word64_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_228 word64_0_1

def word64_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_229 word64_0_3

def word64_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_230 word64_0_5

def word64_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 376#64])

def word64_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_231 word64_0_232

def word64_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_233 word64_0_1

def word64_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_234 word64_0_3

def word64_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_235 word64_0_5

def word64_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 384#64])

def word64_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_236 word64_0_237

def word64_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_238 word64_0_1

def word64_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_239 word64_0_3

def word64_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_240 word64_0_5

def word64_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 392#64])

def word64_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_241 word64_0_242

def word64_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_243 word64_0_1

def word64_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_244 word64_0_3

def word64_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_245 word64_0_5

def word64_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 400#64])

def word64_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_246 word64_0_247

def word64_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_248 word64_0_1

def word64_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_249 word64_0_3

def word64_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_250 word64_0_5

def word64_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 408#64])

def word64_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_251 word64_0_252

def word64_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_253 word64_0_1

def word64_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_254 word64_0_3

def word64_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_255 word64_0_5

def word64_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 416#64])

def word64_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_256 word64_0_257

def word64_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_258 word64_0_1

def word64_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_259 word64_0_3

def word64_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_260 word64_0_5

def word64_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 424#64])

def word64_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_261 word64_0_262

def word64_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_263 word64_0_1

def word64_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_264 word64_0_3

def word64_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_265 word64_0_5

def word64_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 432#64])

def word64_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_266 word64_0_267

def word64_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_268 word64_0_1

def word64_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_269 word64_0_3

def word64_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_270 word64_0_5

def word64_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 440#64])

def word64_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_271 word64_0_272

def word64_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_273 word64_0_1

def word64_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_274 word64_0_3

def word64_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_275 word64_0_5

def word64_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 448#64])

def word64_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_276 word64_0_277

def word64_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_278 word64_0_1

def word64_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_279 word64_0_3

def word64_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_280 word64_0_5

def word64_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 456#64])

def word64_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_281 word64_0_282

def word64_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_283 word64_0_1

def word64_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_284 word64_0_3

def word64_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_285 word64_0_5

def word64_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 464#64])

def word64_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_286 word64_0_287

def word64_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_288 word64_0_1

def word64_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_289 word64_0_3

def word64_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_290 word64_0_5

def word64_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 472#64])

def word64_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_291 word64_0_292

def word64_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_293 word64_0_1

def word64_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_294 word64_0_3

def word64_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_295 word64_0_5

def word64_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 480#64])

def word64_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_296 word64_0_297

def word64_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_298 word64_0_1

def word64_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_299 word64_0_3

def word64_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_300 word64_0_5

def word64_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 488#64])

def word64_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_301 word64_0_302

def word64_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_303 word64_0_1

def word64_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_304 word64_0_3

def word64_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_305 word64_0_5

def word64_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 496#64])

def word64_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_306 word64_0_307

def word64_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_308 word64_0_1

def word64_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_309 word64_0_3

def word64_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_310 word64_0_5

def word64_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 504#64])

def word64_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_311 word64_0_312

def word64_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_313 word64_0_1

def word64_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_314 word64_0_3

def word64_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_315 word64_0_5

def word64_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 512#64])

def word64_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_316 word64_0_317

def word64_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_318 word64_0_1

def word64_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_319 word64_0_3

def word64_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_320 word64_0_5

def word64_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 520#64])

def word64_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_321 word64_0_322

def word64_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_323 word64_0_1

def word64_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_324 word64_0_3

def word64_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_325 word64_0_5

def word64_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 528#64])

def word64_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_326 word64_0_327

def word64_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_328 word64_0_1

def word64_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_329 word64_0_3

def word64_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_330 word64_0_5

def word64_0_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 536#64])

def word64_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_331 word64_0_332

def word64_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_333 word64_0_1

def word64_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_334 word64_0_3

def word64_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_335 word64_0_5

def word64_0_337 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 65) ([0]) (none)

def word64_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word64_0_336 word64_0_337

def pass64_0 : WordLangProgHOL (BitVec 64) :=
word64_0_338
theorem pass64_0_eq : WordSimp.compileExp (source64.2.2) = pass64_0 := by
  kernel_rfl
#print axioms pass64_0_eq
end InitECandidate.Proofs.WordStages
