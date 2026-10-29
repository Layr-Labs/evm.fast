import InitECandidate.Proofs.WordStages.Source417
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody433_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody433_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody433_2 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody433_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody433_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody433_0, 433, 2)) (some 432) ([22, 4]) (some (22, sourceBody433_3, 433, 3))

def sourceBody433_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody433_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_4 sourceBody433_5

def sourceBody433_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_6 sourceBody433_0

def sourceBody433_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_2 sourceBody433_7

def sourceBody433_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_1 sourceBody433_8

def sourceBody433_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_9

def sourceBody433_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_10

def sourceBody433_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody433_13 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody433_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody433_0, 433, 4)) (some 432) ([22, 4]) (some (22, sourceBody433_3, 433, 5))

def sourceBody433_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_14 sourceBody433_5

def sourceBody433_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_15 sourceBody433_0

def sourceBody433_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_13 sourceBody433_16

def sourceBody433_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_12 sourceBody433_17

def sourceBody433_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_18

def sourceBody433_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_19

def sourceBody433_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_11 sourceBody433_20

def sourceBody433_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody433_23 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody433_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody433_0, 433, 6)) (some 432) ([22, 4]) (some (22, sourceBody433_3, 433, 7))

def sourceBody433_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_24 sourceBody433_5

def sourceBody433_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_25 sourceBody433_0

def sourceBody433_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_23 sourceBody433_26

def sourceBody433_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_22 sourceBody433_27

def sourceBody433_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_28

def sourceBody433_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_29

def sourceBody433_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_21 sourceBody433_30

def sourceBody433_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody433_33 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody433_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody433_0, 433, 8)) (some 432) ([22, 4]) (some (22, sourceBody433_3, 433, 9))

def sourceBody433_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_34 sourceBody433_5

def sourceBody433_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_35 sourceBody433_0

def sourceBody433_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_33 sourceBody433_36

def sourceBody433_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_32 sourceBody433_37

def sourceBody433_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_38

def sourceBody433_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_39

def sourceBody433_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_31 sourceBody433_40

def sourceBody433_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody433_43 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody433_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody433_0, 433, 10)) (some 432) ([22, 4]) (some (22, sourceBody433_3, 433, 11))

def sourceBody433_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_44 sourceBody433_5

def sourceBody433_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_45 sourceBody433_0

def sourceBody433_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_43 sourceBody433_46

def sourceBody433_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_42 sourceBody433_47

def sourceBody433_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_48

def sourceBody433_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_49

def sourceBody433_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_41 sourceBody433_50

def sourceBody433_52 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody433_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody433_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody433_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody433_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody433_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody433_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 26 (Flapjack.WordRegImm.reg 2) sourceBody433_58 sourceBody433_59

def sourceBody433_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_60 sourceBody433_5

def sourceBody433_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody433_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody433_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody433_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody433_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 26, 2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody433_0, 433, 12)) (some 197) ([16, 10]) (some (16, sourceBody433_65, 433, 13))

def sourceBody433_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_66 sourceBody433_5

def sourceBody433_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_67 sourceBody433_0

def sourceBody433_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_64 sourceBody433_68

def sourceBody433_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_63 sourceBody433_69

def sourceBody433_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody433_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody433_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 24) sourceBody433_73 sourceBody433_74

def sourceBody433_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_75 sourceBody433_5

def sourceBody433_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody433_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody433_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def sourceBody433_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody433_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody433_0, 433, 14)) (some 186) ([24, 6]) (some (24, sourceBody433_80, 433, 15))

def sourceBody433_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_81 sourceBody433_5

def sourceBody433_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_82 sourceBody433_0

def sourceBody433_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_79 sourceBody433_83

def sourceBody433_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_78 sourceBody433_84

def sourceBody433_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody433_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody433_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 14) sourceBody433_88 sourceBody433_89

def sourceBody433_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_90 sourceBody433_5

def sourceBody433_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody433_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody433_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody433_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody433_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody433_0, 433, 16)) (some 182) ([6, 20]) (some (6, sourceBody433_95, 433, 17))

def sourceBody433_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_96 sourceBody433_5

def sourceBody433_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_97 sourceBody433_0

def sourceBody433_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_94 sourceBody433_98

def sourceBody433_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_93 sourceBody433_99

def sourceBody433_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody433_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody433_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody433_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody433_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody433_0, 433, 18)) (some 192) ([20, 14, 28]) (some (20, sourceBody433_104, 433, 19))

def sourceBody433_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_105 sourceBody433_5

def sourceBody433_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_106 sourceBody433_0

def sourceBody433_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_103 sourceBody433_107

def sourceBody433_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_102 sourceBody433_108

def sourceBody433_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_101 sourceBody433_109

def sourceBody433_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_110

def sourceBody433_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_111

def sourceBody433_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_100 sourceBody433_112

def sourceBody433_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody433_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_114 sourceBody433_0

def sourceBody433_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_115 sourceBody433_0

def sourceBody433_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody433_113 sourceBody433_116

def sourceBody433_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_117 sourceBody433_5

def sourceBody433_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_118 sourceBody433_0

def sourceBody433_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_92 sourceBody433_119

def sourceBody433_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_91 sourceBody433_120

def sourceBody433_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_87 sourceBody433_121

def sourceBody433_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_86 sourceBody433_122

def sourceBody433_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody433_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody433_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody433_0, 433, 20)) (some 432) ([20, 14]) (some (20, sourceBody433_104, 433, 21))

def sourceBody433_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_126 sourceBody433_5

def sourceBody433_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_127 sourceBody433_0

def sourceBody433_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_125 sourceBody433_128

def sourceBody433_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_124 sourceBody433_129

def sourceBody433_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_130

def sourceBody433_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_131

def sourceBody433_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_123 sourceBody433_132

def sourceBody433_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_133

def sourceBody433_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_134

def sourceBody433_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_85 sourceBody433_135

def sourceBody433_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_136

def sourceBody433_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_137

def sourceBody433_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_138

def sourceBody433_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_139

def sourceBody433_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody433_140 sourceBody433_0

def sourceBody433_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_141 sourceBody433_5

def sourceBody433_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_142 sourceBody433_0

def sourceBody433_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_77 sourceBody433_143

def sourceBody433_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_76 sourceBody433_144

def sourceBody433_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_72 sourceBody433_145

def sourceBody433_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_71 sourceBody433_146

def sourceBody433_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody433_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody433_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_149 sourceBody433_0

def sourceBody433_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_150 sourceBody433_0

def sourceBody433_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_148 sourceBody433_151

def sourceBody433_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_152

def sourceBody433_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_147 sourceBody433_153

def sourceBody433_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_70 sourceBody433_154

def sourceBody433_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_155

def sourceBody433_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_156

def sourceBody433_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_157

def sourceBody433_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_158

def sourceBody433_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_159

def sourceBody433_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_160

def sourceBody433_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody433_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_161 sourceBody433_162

def sourceBody433_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody433_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody433_163 sourceBody433_164

def sourceBody433_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_165 sourceBody433_5

def sourceBody433_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_166 sourceBody433_0

def sourceBody433_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_62 sourceBody433_167

def sourceBody433_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_61 sourceBody433_168

def sourceBody433_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_57 sourceBody433_169

def sourceBody433_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_56 sourceBody433_170

def sourceBody433_172 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody433_171 (Flapjack.Spt.ls PUnit.unit)

def sourceBody433_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_172 sourceBody433_5

def sourceBody433_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_5 sourceBody433_173

def sourceBody433_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody433_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody433_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_176 sourceBody433_0

def sourceBody433_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_175 sourceBody433_177

def sourceBody433_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_174 sourceBody433_178

def sourceBody433_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_55 sourceBody433_179

def sourceBody433_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_180

def sourceBody433_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_54 sourceBody433_181

def sourceBody433_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_182

def sourceBody433_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_53 sourceBody433_183

def sourceBody433_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_184

def sourceBody433_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_52 sourceBody433_185

def sourceBody433_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_0 sourceBody433_186

def sourceBody433_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody433_51 sourceBody433_187

def source433 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (433, 1, sourceBody433_188)
end InitECandidate.Proofs.WordStages
