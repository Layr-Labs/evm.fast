import InitECandidate.Proofs.WordStages.Source618
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody634_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody634_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 368#64]))

def sourceBody634_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody634_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody634_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody634_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 2)) (some 77) ([14, 22, 18]) (some (14, sourceBody634_4, 634, 3))

def sourceBody634_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody634_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_5 sourceBody634_6

def sourceBody634_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_7 sourceBody634_0

def sourceBody634_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_3 sourceBody634_8

def sourceBody634_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_2 sourceBody634_9

def sourceBody634_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_1 sourceBody634_10

def sourceBody634_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_11

def sourceBody634_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_12

def sourceBody634_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody634_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 360#64]))

def sourceBody634_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 4)) (some 77) ([14, 22, 18]) (some (14, sourceBody634_4, 634, 5))

def sourceBody634_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_16 sourceBody634_6

def sourceBody634_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_17 sourceBody634_0

def sourceBody634_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_3 sourceBody634_18

def sourceBody634_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_15 sourceBody634_19

def sourceBody634_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_14 sourceBody634_20

def sourceBody634_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_21

def sourceBody634_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_22

def sourceBody634_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_13 sourceBody634_23

def sourceBody634_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody634_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 368#64]),
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.var 8])

def sourceBody634_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody634_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 28) 22

def sourceBody634_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_28 sourceBody634_0

def sourceBody634_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_27 sourceBody634_29

def sourceBody634_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_30 sourceBody634_0

def sourceBody634_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_26 sourceBody634_31

def sourceBody634_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_32

def sourceBody634_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_25 sourceBody634_33

def sourceBody634_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_34

def sourceBody634_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_24 sourceBody634_35

def sourceBody634_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody634_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 368#64]),
            Flapjack.WordLangExpHOL.const 104#64]),
      Flapjack.WordLangExpHOL.var 10])

def sourceBody634_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_38 sourceBody634_31

def sourceBody634_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_39

def sourceBody634_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_37 sourceBody634_40

def sourceBody634_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_41

def sourceBody634_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_36 sourceBody634_42

def sourceBody634_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody634_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody634_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody634_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody634_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 22) sourceBody634_46 sourceBody634_47

def sourceBody634_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_48 sourceBody634_6

def sourceBody634_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody634_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.const 112#64])

def sourceBody634_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 368#64]),
            Flapjack.WordLangExpHOL.const 112#64]),
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody634_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_52 sourceBody634_31

def sourceBody634_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_53

def sourceBody634_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_51 sourceBody634_54

def sourceBody634_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_55

def sourceBody634_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody634_56 sourceBody634_0

def sourceBody634_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_57 sourceBody634_6

def sourceBody634_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_58 sourceBody634_0

def sourceBody634_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_50 sourceBody634_59

def sourceBody634_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_49 sourceBody634_60

def sourceBody634_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_45 sourceBody634_61

def sourceBody634_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_44 sourceBody634_62

def sourceBody634_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_43 sourceBody634_63

def sourceBody634_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody634_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody634_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody634_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody634_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody634_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 26) sourceBody634_68 sourceBody634_69

def sourceBody634_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_70 sourceBody634_6

def sourceBody634_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody634_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody634_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody634_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody634_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 0#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 4#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody634_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 6)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 7))

def sourceBody634_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_79 sourceBody634_6

def sourceBody634_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_80 sourceBody634_0

def sourceBody634_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_77 sourceBody634_81

def sourceBody634_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_76 sourceBody634_82

def sourceBody634_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_75 sourceBody634_83

def sourceBody634_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_74 sourceBody634_84

def sourceBody634_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_73 sourceBody634_85

def sourceBody634_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_69 sourceBody634_86

def sourceBody634_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_87

def sourceBody634_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_88

def sourceBody634_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody634_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody634_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody634_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 8#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 12#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 8)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 9))

def sourceBody634_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_95 sourceBody634_6

def sourceBody634_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_96 sourceBody634_0

def sourceBody634_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_94 sourceBody634_97

def sourceBody634_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_93 sourceBody634_98

def sourceBody634_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_92 sourceBody634_99

def sourceBody634_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_91 sourceBody634_100

def sourceBody634_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_90 sourceBody634_101

def sourceBody634_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_68 sourceBody634_102

def sourceBody634_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_103

def sourceBody634_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_104

def sourceBody634_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_89 sourceBody634_105

def sourceBody634_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody634_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody634_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody634_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 14#64)

def sourceBody634_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 16#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 20#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 10)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 11))

def sourceBody634_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_113 sourceBody634_6

def sourceBody634_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_114 sourceBody634_0

def sourceBody634_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_112 sourceBody634_115

def sourceBody634_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_111 sourceBody634_116

def sourceBody634_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_110 sourceBody634_117

def sourceBody634_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_109 sourceBody634_118

def sourceBody634_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_108 sourceBody634_119

def sourceBody634_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_107 sourceBody634_120

def sourceBody634_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_121

def sourceBody634_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_122

def sourceBody634_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_106 sourceBody634_123

def sourceBody634_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody634_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody634_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody634_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 15#64)

def sourceBody634_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 24#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 28#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 12)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 13))

def sourceBody634_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_131 sourceBody634_6

def sourceBody634_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_132 sourceBody634_0

def sourceBody634_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_130 sourceBody634_133

def sourceBody634_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_129 sourceBody634_134

def sourceBody634_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_128 sourceBody634_135

def sourceBody634_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_127 sourceBody634_136

def sourceBody634_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_126 sourceBody634_137

def sourceBody634_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_125 sourceBody634_138

def sourceBody634_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_139

def sourceBody634_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_140

def sourceBody634_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_124 sourceBody634_141

def sourceBody634_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 32#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 36#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_145 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 14)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 15))

def sourceBody634_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_145 sourceBody634_6

def sourceBody634_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_146 sourceBody634_0

def sourceBody634_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_144 sourceBody634_147

def sourceBody634_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_143 sourceBody634_148

def sourceBody634_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_128 sourceBody634_149

def sourceBody634_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_109 sourceBody634_150

def sourceBody634_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_90 sourceBody634_151

def sourceBody634_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_69 sourceBody634_152

def sourceBody634_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_153

def sourceBody634_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_154

def sourceBody634_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_142 sourceBody634_155

def sourceBody634_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 40#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 44#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 16)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 17))

def sourceBody634_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_159 sourceBody634_6

def sourceBody634_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_160 sourceBody634_0

def sourceBody634_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_158 sourceBody634_161

def sourceBody634_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_157 sourceBody634_162

def sourceBody634_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_75 sourceBody634_163

def sourceBody634_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_127 sourceBody634_164

def sourceBody634_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_108 sourceBody634_165

def sourceBody634_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_68 sourceBody634_166

def sourceBody634_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_167

def sourceBody634_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_168

def sourceBody634_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_156 sourceBody634_169

def sourceBody634_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 48#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 52#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_173 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 18)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 19))

def sourceBody634_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_173 sourceBody634_6

def sourceBody634_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_174 sourceBody634_0

def sourceBody634_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_172 sourceBody634_175

def sourceBody634_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_171 sourceBody634_176

def sourceBody634_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_92 sourceBody634_177

def sourceBody634_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_74 sourceBody634_178

def sourceBody634_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_126 sourceBody634_179

def sourceBody634_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_107 sourceBody634_180

def sourceBody634_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_181

def sourceBody634_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_182

def sourceBody634_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_170 sourceBody634_183

def sourceBody634_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 56#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
                (Flapjack.WordLangExpHOL.load
                  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.load
                        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                                  (Flapjack.WordLangExpHOL.const 1#64)],
                            Flapjack.WordLangExpHOL.const 352#64]),
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
                        (Flapjack.WordLangExpHOL.const 3#64)]))
                (Flapjack.WordLangExpHOL.const 60#64),
              Flapjack.WordLangExpHOL.const 15#64])
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody634_187 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody634_0, 634, 20)) (some 633) ([18, 26, 16, 24, 20, 30]) (some (18, sourceBody634_78, 634, 21))

def sourceBody634_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_187 sourceBody634_6

def sourceBody634_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_188 sourceBody634_0

def sourceBody634_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_186 sourceBody634_189

def sourceBody634_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_185 sourceBody634_190

def sourceBody634_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_110 sourceBody634_191

def sourceBody634_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_91 sourceBody634_192

def sourceBody634_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_73 sourceBody634_193

def sourceBody634_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_125 sourceBody634_194

def sourceBody634_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_195

def sourceBody634_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_196

def sourceBody634_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_184 sourceBody634_197

def sourceBody634_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody634_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody634_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_200 sourceBody634_0

def sourceBody634_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_201 sourceBody634_0

def sourceBody634_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_199 sourceBody634_202

def sourceBody634_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_203

def sourceBody634_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_198 sourceBody634_204

def sourceBody634_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody634_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody634_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_207 sourceBody634_0

def sourceBody634_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_208 sourceBody634_0

def sourceBody634_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_206 sourceBody634_209

def sourceBody634_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_210

def sourceBody634_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_205 sourceBody634_211

def sourceBody634_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody634_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 26) sourceBody634_68 sourceBody634_69

def sourceBody634_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_214 sourceBody634_6

def sourceBody634_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_47 sourceBody634_0

def sourceBody634_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_216 sourceBody634_0

def sourceBody634_218 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody634_217 sourceBody634_0

def sourceBody634_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_218 sourceBody634_6

def sourceBody634_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_219 sourceBody634_0

def sourceBody634_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_72 sourceBody634_220

def sourceBody634_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_215 sourceBody634_221

def sourceBody634_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_213 sourceBody634_222

def sourceBody634_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_50 sourceBody634_223

def sourceBody634_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_212 sourceBody634_224

def sourceBody634_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody634_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_225 sourceBody634_226

def sourceBody634_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody634_229 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody634_227 sourceBody634_228

def sourceBody634_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_229 sourceBody634_6

def sourceBody634_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_230 sourceBody634_0

def sourceBody634_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_72 sourceBody634_231

def sourceBody634_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_71 sourceBody634_232

def sourceBody634_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_67 sourceBody634_233

def sourceBody634_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_66 sourceBody634_234

def sourceBody634_236 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody634_235 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody634_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_236 sourceBody634_6

def sourceBody634_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_6 sourceBody634_237

def sourceBody634_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody634_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody634_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody634_242 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 26 (Flapjack.WordRegImm.reg 16) sourceBody634_240 sourceBody634_241

def sourceBody634_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_242 sourceBody634_6

def sourceBody634_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody634_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody634_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
              (Flapjack.WordLangExpHOL.const 3#64)]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 368#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
              (Flapjack.WordLangExpHOL.const 3#64)]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 368#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
              (Flapjack.WordLangExpHOL.const 3#64)])])

def sourceBody634_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody634_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 16

def sourceBody634_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_248 sourceBody634_0

def sourceBody634_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_247 sourceBody634_249

def sourceBody634_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_250 sourceBody634_0

def sourceBody634_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_246 sourceBody634_251

def sourceBody634_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_252

def sourceBody634_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_245 sourceBody634_253

def sourceBody634_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_254

def sourceBody634_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody634_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody634_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_257 sourceBody634_0

def sourceBody634_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_258 sourceBody634_0

def sourceBody634_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_256 sourceBody634_259

def sourceBody634_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_260

def sourceBody634_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_255 sourceBody634_261

def sourceBody634_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_262 sourceBody634_226

def sourceBody634_264 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody634_263 sourceBody634_228

def sourceBody634_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_264 sourceBody634_6

def sourceBody634_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_265 sourceBody634_0

def sourceBody634_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_244 sourceBody634_266

def sourceBody634_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_243 sourceBody634_267

def sourceBody634_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_74 sourceBody634_268

def sourceBody634_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_239 sourceBody634_269

def sourceBody634_271 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody634_270 (Flapjack.Spt.ls PUnit.unit)

def sourceBody634_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_271 sourceBody634_6

def sourceBody634_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_6 sourceBody634_272

def sourceBody634_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody634_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_274 sourceBody634_0

def sourceBody634_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_69 sourceBody634_275

def sourceBody634_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_273 sourceBody634_276

def sourceBody634_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_45 sourceBody634_277

def sourceBody634_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_278

def sourceBody634_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_238 sourceBody634_279

def sourceBody634_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_47 sourceBody634_280

def sourceBody634_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_281

def sourceBody634_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_65 sourceBody634_282

def sourceBody634_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_0 sourceBody634_283

def sourceBody634_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody634_64 sourceBody634_284

def source634 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (634, 7, sourceBody634_285)
end InitECandidate.Proofs.WordStages
