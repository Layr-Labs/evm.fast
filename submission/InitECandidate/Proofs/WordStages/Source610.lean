import InitECandidate.Proofs.WordStages.Source594
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody610_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody610_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody610_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody610_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody610_0, 610, 2)) (some 609) ([18]) (some (18, sourceBody610_2, 610, 3))

def sourceBody610_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody610_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_3 sourceBody610_4

def sourceBody610_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_5 sourceBody610_0

def sourceBody610_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_1 sourceBody610_6

def sourceBody610_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_7

def sourceBody610_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_8

def sourceBody610_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody610_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 192#64]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])])

def sourceBody610_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 18)

def sourceBody610_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody610_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_13 sourceBody610_0

def sourceBody610_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_12 sourceBody610_14

def sourceBody610_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_15 sourceBody610_0

def sourceBody610_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_11 sourceBody610_16

def sourceBody610_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_17

def sourceBody610_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_10 sourceBody610_18

def sourceBody610_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_19

def sourceBody610_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_9 sourceBody610_20

def sourceBody610_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody610_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody610_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody610_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody610_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody610_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 16) sourceBody610_25 sourceBody610_26

def sourceBody610_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_27 sourceBody610_4

def sourceBody610_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody610_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody610_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_30 sourceBody610_0

def sourceBody610_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_31 sourceBody610_0

def sourceBody610_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody610_32 sourceBody610_0

def sourceBody610_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_33 sourceBody610_4

def sourceBody610_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_34 sourceBody610_0

def sourceBody610_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_29 sourceBody610_35

def sourceBody610_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_28 sourceBody610_36

def sourceBody610_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_24 sourceBody610_37

def sourceBody610_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_23 sourceBody610_38

def sourceBody610_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody610_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 64#64]),
      Flapjack.WordLangExpHOL.var 8])

def sourceBody610_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody610_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 16

def sourceBody610_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_43 sourceBody610_0

def sourceBody610_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_42 sourceBody610_44

def sourceBody610_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_45 sourceBody610_0

def sourceBody610_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_41 sourceBody610_46

def sourceBody610_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_47

def sourceBody610_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_40 sourceBody610_48

def sourceBody610_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_49

def sourceBody610_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_39 sourceBody610_50

def sourceBody610_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody610_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 72#64]),
      Flapjack.WordLangExpHOL.var 8])

def sourceBody610_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_53 sourceBody610_46

def sourceBody610_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_54

def sourceBody610_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_52 sourceBody610_55

def sourceBody610_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_56

def sourceBody610_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_51 sourceBody610_57

def sourceBody610_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 192#64])

def sourceBody610_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 192#64]),
      Flapjack.WordLangExpHOL.var 8])

def sourceBody610_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_60 sourceBody610_46

def sourceBody610_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_61

def sourceBody610_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_59 sourceBody610_62

def sourceBody610_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_63

def sourceBody610_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_58 sourceBody610_64

def sourceBody610_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody610_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody610_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody610_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody610_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody610_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody610_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody610_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody610_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 14) sourceBody610_72 sourceBody610_73

def sourceBody610_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_74 sourceBody610_4

def sourceBody610_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody610_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody610_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody610_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody610_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody610_0, 610, 4)) (some 545) ([4, 14]) (some (4, sourceBody610_79, 610, 5))

def sourceBody610_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_80 sourceBody610_4

def sourceBody610_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_81 sourceBody610_0

def sourceBody610_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_78 sourceBody610_82

def sourceBody610_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_77 sourceBody610_83

def sourceBody610_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_84

def sourceBody610_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_85

def sourceBody610_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody610_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody610_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_88 sourceBody610_0

def sourceBody610_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_89 sourceBody610_0

def sourceBody610_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_87 sourceBody610_90

def sourceBody610_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_91

def sourceBody610_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_86 sourceBody610_92

def sourceBody610_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody610_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_93 sourceBody610_94

def sourceBody610_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody610_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody610_95 sourceBody610_96

def sourceBody610_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_97 sourceBody610_4

def sourceBody610_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_98 sourceBody610_0

def sourceBody610_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_76 sourceBody610_99

def sourceBody610_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_75 sourceBody610_100

def sourceBody610_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_71 sourceBody610_101

def sourceBody610_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_70 sourceBody610_102

def sourceBody610_104 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody610_103 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def sourceBody610_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_104 sourceBody610_4

def sourceBody610_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_4 sourceBody610_105

def sourceBody610_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 96#64])

def sourceBody610_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 256#64]),
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])])

def sourceBody610_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody610_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 14

def sourceBody610_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_110 sourceBody610_0

def sourceBody610_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_109 sourceBody610_111

def sourceBody610_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_112 sourceBody610_0

def sourceBody610_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_108 sourceBody610_113

def sourceBody610_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_114

def sourceBody610_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_107 sourceBody610_115

def sourceBody610_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_116

def sourceBody610_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_106 sourceBody610_117

def sourceBody610_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody610_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody610_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody610_0, 610, 6)) (some 432) ([4, 14]) (some (4, sourceBody610_79, 610, 7))

def sourceBody610_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_121 sourceBody610_4

def sourceBody610_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_122 sourceBody610_0

def sourceBody610_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_120 sourceBody610_123

def sourceBody610_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_119 sourceBody610_124

def sourceBody610_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_125

def sourceBody610_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_126

def sourceBody610_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_118 sourceBody610_127

def sourceBody610_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody610_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody610_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_130 sourceBody610_0

def sourceBody610_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_129 sourceBody610_131

def sourceBody610_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_128 sourceBody610_132

def sourceBody610_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_69 sourceBody610_133

def sourceBody610_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_134

def sourceBody610_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_68 sourceBody610_135

def sourceBody610_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_136

def sourceBody610_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_67 sourceBody610_137

def sourceBody610_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_138

def sourceBody610_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_66 sourceBody610_139

def sourceBody610_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_140

def sourceBody610_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_65 sourceBody610_141

def sourceBody610_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_22 sourceBody610_142

def sourceBody610_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_0 sourceBody610_143

def sourceBody610_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody610_21 sourceBody610_144

def source610 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (610, 2, sourceBody610_145)
end InitECandidate.Proofs.WordStages
