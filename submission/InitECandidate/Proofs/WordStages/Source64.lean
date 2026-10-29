import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody64_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody64_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody64_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody64_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 6)

def sourceBody64_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 2

def sourceBody64_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_4 sourceBody64_0

def sourceBody64_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_3 sourceBody64_5

def sourceBody64_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_6 sourceBody64_0

def sourceBody64_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_2 sourceBody64_7

def sourceBody64_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_8

def sourceBody64_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_1 sourceBody64_9

def sourceBody64_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_10

def sourceBody64_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody64_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_12 sourceBody64_9

def sourceBody64_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_13

def sourceBody64_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody64_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_15 sourceBody64_9

def sourceBody64_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_16

def sourceBody64_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody64_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_18 sourceBody64_9

def sourceBody64_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_19

def sourceBody64_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody64_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_21 sourceBody64_9

def sourceBody64_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_22

def sourceBody64_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody64_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_24 sourceBody64_9

def sourceBody64_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_25

def sourceBody64_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody64_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_27 sourceBody64_9

def sourceBody64_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_28

def sourceBody64_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody64_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_30 sourceBody64_9

def sourceBody64_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_31

def sourceBody64_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody64_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_33 sourceBody64_9

def sourceBody64_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_34

def sourceBody64_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody64_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_36 sourceBody64_9

def sourceBody64_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_37

def sourceBody64_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 88#64])

def sourceBody64_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_39 sourceBody64_9

def sourceBody64_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_40

def sourceBody64_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody64_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_42 sourceBody64_9

def sourceBody64_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_43

def sourceBody64_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody64_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_45 sourceBody64_9

def sourceBody64_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_46

def sourceBody64_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 112#64])

def sourceBody64_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_48 sourceBody64_9

def sourceBody64_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_49

def sourceBody64_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody64_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_51 sourceBody64_9

def sourceBody64_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_52

def sourceBody64_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody64_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_54 sourceBody64_9

def sourceBody64_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_55

def sourceBody64_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 136#64])

def sourceBody64_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_57 sourceBody64_9

def sourceBody64_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_58

def sourceBody64_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 144#64])

def sourceBody64_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_60 sourceBody64_9

def sourceBody64_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_61

def sourceBody64_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 152#64])

def sourceBody64_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_63 sourceBody64_9

def sourceBody64_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_64

def sourceBody64_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 160#64])

def sourceBody64_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_66 sourceBody64_9

def sourceBody64_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_67

def sourceBody64_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 168#64])

def sourceBody64_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_69 sourceBody64_9

def sourceBody64_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_70

def sourceBody64_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 176#64])

def sourceBody64_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_72 sourceBody64_9

def sourceBody64_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_73

def sourceBody64_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 184#64])

def sourceBody64_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_75 sourceBody64_9

def sourceBody64_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_76

def sourceBody64_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody64_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_78 sourceBody64_9

def sourceBody64_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_79

def sourceBody64_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 200#64])

def sourceBody64_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_81 sourceBody64_9

def sourceBody64_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_82

def sourceBody64_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 208#64])

def sourceBody64_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_84 sourceBody64_9

def sourceBody64_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_85

def sourceBody64_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody64_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_87 sourceBody64_9

def sourceBody64_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_88

def sourceBody64_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 224#64])

def sourceBody64_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_90 sourceBody64_9

def sourceBody64_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_91

def sourceBody64_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 232#64])

def sourceBody64_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_93 sourceBody64_9

def sourceBody64_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_94

def sourceBody64_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 240#64])

def sourceBody64_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_96 sourceBody64_9

def sourceBody64_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_97

def sourceBody64_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 248#64])

def sourceBody64_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_99 sourceBody64_9

def sourceBody64_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_100

def sourceBody64_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody64_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_102 sourceBody64_9

def sourceBody64_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_103

def sourceBody64_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 264#64])

def sourceBody64_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_105 sourceBody64_9

def sourceBody64_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_106

def sourceBody64_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 272#64])

def sourceBody64_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_108 sourceBody64_9

def sourceBody64_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_109

def sourceBody64_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 280#64])

def sourceBody64_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_111 sourceBody64_9

def sourceBody64_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_112

def sourceBody64_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody64_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_114 sourceBody64_9

def sourceBody64_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_115

def sourceBody64_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 296#64])

def sourceBody64_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_117 sourceBody64_9

def sourceBody64_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_118

def sourceBody64_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 304#64])

def sourceBody64_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_120 sourceBody64_9

def sourceBody64_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_121

def sourceBody64_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 312#64])

def sourceBody64_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_123 sourceBody64_9

def sourceBody64_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_124

def sourceBody64_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 320#64])

def sourceBody64_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_126 sourceBody64_9

def sourceBody64_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_127

def sourceBody64_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 328#64])

def sourceBody64_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_129 sourceBody64_9

def sourceBody64_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_130

def sourceBody64_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 336#64])

def sourceBody64_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_132 sourceBody64_9

def sourceBody64_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_133

def sourceBody64_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 344#64])

def sourceBody64_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_135 sourceBody64_9

def sourceBody64_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_136

def sourceBody64_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 352#64])

def sourceBody64_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_138 sourceBody64_9

def sourceBody64_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_139

def sourceBody64_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 360#64])

def sourceBody64_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_141 sourceBody64_9

def sourceBody64_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_142

def sourceBody64_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 368#64])

def sourceBody64_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_144 sourceBody64_9

def sourceBody64_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_145

def sourceBody64_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 376#64])

def sourceBody64_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_147 sourceBody64_9

def sourceBody64_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_148

def sourceBody64_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 384#64])

def sourceBody64_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_150 sourceBody64_9

def sourceBody64_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_151

def sourceBody64_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 392#64])

def sourceBody64_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_153 sourceBody64_9

def sourceBody64_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_154

def sourceBody64_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 400#64])

def sourceBody64_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_156 sourceBody64_9

def sourceBody64_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_157

def sourceBody64_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 408#64])

def sourceBody64_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_159 sourceBody64_9

def sourceBody64_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_160

def sourceBody64_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 416#64])

def sourceBody64_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_162 sourceBody64_9

def sourceBody64_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_163

def sourceBody64_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 424#64])

def sourceBody64_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_165 sourceBody64_9

def sourceBody64_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_166

def sourceBody64_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 432#64])

def sourceBody64_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_168 sourceBody64_9

def sourceBody64_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_169

def sourceBody64_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 440#64])

def sourceBody64_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_171 sourceBody64_9

def sourceBody64_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_172

def sourceBody64_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 448#64])

def sourceBody64_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_174 sourceBody64_9

def sourceBody64_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_175

def sourceBody64_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 456#64])

def sourceBody64_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_177 sourceBody64_9

def sourceBody64_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_178

def sourceBody64_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 464#64])

def sourceBody64_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_180 sourceBody64_9

def sourceBody64_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_181

def sourceBody64_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 472#64])

def sourceBody64_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_183 sourceBody64_9

def sourceBody64_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_184

def sourceBody64_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 480#64])

def sourceBody64_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_186 sourceBody64_9

def sourceBody64_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_187

def sourceBody64_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 488#64])

def sourceBody64_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_189 sourceBody64_9

def sourceBody64_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_190

def sourceBody64_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 496#64])

def sourceBody64_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_192 sourceBody64_9

def sourceBody64_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_193

def sourceBody64_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 504#64])

def sourceBody64_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_195 sourceBody64_9

def sourceBody64_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_196

def sourceBody64_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 512#64])

def sourceBody64_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_198 sourceBody64_9

def sourceBody64_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_199

def sourceBody64_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 520#64])

def sourceBody64_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_201 sourceBody64_9

def sourceBody64_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_202

def sourceBody64_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 528#64])

def sourceBody64_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_204 sourceBody64_9

def sourceBody64_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_205

def sourceBody64_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 536#64])

def sourceBody64_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_207 sourceBody64_9

def sourceBody64_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_0 sourceBody64_208

def sourceBody64_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_209 sourceBody64_0

def sourceBody64_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_206 sourceBody64_210

def sourceBody64_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_203 sourceBody64_211

def sourceBody64_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_200 sourceBody64_212

def sourceBody64_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_197 sourceBody64_213

def sourceBody64_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_194 sourceBody64_214

def sourceBody64_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_191 sourceBody64_215

def sourceBody64_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_188 sourceBody64_216

def sourceBody64_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_185 sourceBody64_217

def sourceBody64_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_182 sourceBody64_218

def sourceBody64_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_179 sourceBody64_219

def sourceBody64_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_176 sourceBody64_220

def sourceBody64_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_173 sourceBody64_221

def sourceBody64_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_170 sourceBody64_222

def sourceBody64_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_167 sourceBody64_223

def sourceBody64_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_164 sourceBody64_224

def sourceBody64_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_161 sourceBody64_225

def sourceBody64_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_158 sourceBody64_226

def sourceBody64_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_155 sourceBody64_227

def sourceBody64_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_152 sourceBody64_228

def sourceBody64_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_149 sourceBody64_229

def sourceBody64_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_146 sourceBody64_230

def sourceBody64_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_143 sourceBody64_231

def sourceBody64_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_140 sourceBody64_232

def sourceBody64_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_137 sourceBody64_233

def sourceBody64_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_134 sourceBody64_234

def sourceBody64_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_131 sourceBody64_235

def sourceBody64_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_128 sourceBody64_236

def sourceBody64_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_125 sourceBody64_237

def sourceBody64_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_122 sourceBody64_238

def sourceBody64_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_119 sourceBody64_239

def sourceBody64_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_116 sourceBody64_240

def sourceBody64_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_113 sourceBody64_241

def sourceBody64_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_110 sourceBody64_242

def sourceBody64_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_107 sourceBody64_243

def sourceBody64_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_104 sourceBody64_244

def sourceBody64_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_101 sourceBody64_245

def sourceBody64_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_98 sourceBody64_246

def sourceBody64_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_95 sourceBody64_247

def sourceBody64_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_92 sourceBody64_248

def sourceBody64_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_89 sourceBody64_249

def sourceBody64_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_86 sourceBody64_250

def sourceBody64_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_83 sourceBody64_251

def sourceBody64_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_80 sourceBody64_252

def sourceBody64_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_77 sourceBody64_253

def sourceBody64_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_74 sourceBody64_254

def sourceBody64_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_71 sourceBody64_255

def sourceBody64_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_68 sourceBody64_256

def sourceBody64_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_65 sourceBody64_257

def sourceBody64_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_62 sourceBody64_258

def sourceBody64_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_59 sourceBody64_259

def sourceBody64_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_56 sourceBody64_260

def sourceBody64_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_53 sourceBody64_261

def sourceBody64_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_50 sourceBody64_262

def sourceBody64_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_47 sourceBody64_263

def sourceBody64_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_44 sourceBody64_264

def sourceBody64_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_41 sourceBody64_265

def sourceBody64_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_38 sourceBody64_266

def sourceBody64_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_35 sourceBody64_267

def sourceBody64_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_32 sourceBody64_268

def sourceBody64_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_29 sourceBody64_269

def sourceBody64_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_26 sourceBody64_270

def sourceBody64_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_23 sourceBody64_271

def sourceBody64_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_20 sourceBody64_272

def sourceBody64_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_17 sourceBody64_273

def sourceBody64_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_14 sourceBody64_274

def sourceBody64_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_11 sourceBody64_275

def sourceBody64_277 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 65) ([0]) (none)

def sourceBody64_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_277 sourceBody64_0

def sourceBody64_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody64_276 sourceBody64_278

def source64 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (64, 1, sourceBody64_279)
end InitECandidate.Proofs.WordStages
