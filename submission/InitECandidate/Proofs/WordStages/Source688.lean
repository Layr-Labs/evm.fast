import InitECandidate.Proofs.WordStages.Source672
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody688_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody688_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody688_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody688_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 108)

def sourceBody688_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody688_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody688_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody688_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 90 (Flapjack.WordRegImm.reg 56) sourceBody688_5 sourceBody688_6

def sourceBody688_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_7 sourceBody688_2

def sourceBody688_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 90)

def sourceBody688_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody688_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody688_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody688_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody688_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 6#64])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody688_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 6#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody688_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 6#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody688_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 6#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody688_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody688_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 82)

def sourceBody688_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 48)

def sourceBody688_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 118)

def sourceBody688_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody688_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody688_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 100, 66, 136]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 2)) (some 665) ([10, 78, 44, 114, 28]) (some (10, sourceBody688_23, 688, 3))

def sourceBody688_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_24 sourceBody688_2

def sourceBody688_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_25 sourceBody688_0

def sourceBody688_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_22 sourceBody688_26

def sourceBody688_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_21 sourceBody688_27

def sourceBody688_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_20 sourceBody688_28

def sourceBody688_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_19 sourceBody688_29

def sourceBody688_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_18 sourceBody688_30

def sourceBody688_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody688_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 90)

def sourceBody688_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 56)

def sourceBody688_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 126)

def sourceBody688_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody688_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 100)

def sourceBody688_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 66)

def sourceBody688_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 136)

def sourceBody688_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody688_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 78, 44, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 4)) (some 658) ([28, 96, 62, 132, 18, 86, 52, 122]) (some (28, sourceBody688_40, 688, 5))

def sourceBody688_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_41 sourceBody688_2

def sourceBody688_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_42 sourceBody688_0

def sourceBody688_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_39 sourceBody688_43

def sourceBody688_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_38 sourceBody688_44

def sourceBody688_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_37 sourceBody688_45

def sourceBody688_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_36 sourceBody688_46

def sourceBody688_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_35 sourceBody688_47

def sourceBody688_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_34 sourceBody688_48

def sourceBody688_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_33 sourceBody688_49

def sourceBody688_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_32 sourceBody688_50

def sourceBody688_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody688_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 82)

def sourceBody688_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 48)

def sourceBody688_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 118)

def sourceBody688_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody688_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 96, 62, 132]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 6)) (some 660) ([18, 86, 52, 122]) (some (18, sourceBody688_56, 688, 7))

def sourceBody688_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_57 sourceBody688_2

def sourceBody688_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_58 sourceBody688_0

def sourceBody688_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_55 sourceBody688_59

def sourceBody688_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_54 sourceBody688_60

def sourceBody688_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_53 sourceBody688_61

def sourceBody688_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_52 sourceBody688_62

def sourceBody688_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 376#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
          (Flapjack.WordLangExpHOL.const 6#64)]))

def sourceBody688_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 376#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 6#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody688_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 376#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 6#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody688_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 376#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 6#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody688_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 376#64]),
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
          (Flapjack.WordLangExpHOL.const 6#64),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody688_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 376#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 6#64),
            Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody688_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 376#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 6#64),
            Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody688_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 376#64]),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
              (Flapjack.WordLangExpHOL.const 6#64),
            Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody688_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody688_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 78)

def sourceBody688_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 44)

def sourceBody688_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 114)

def sourceBody688_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody688_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 86)

def sourceBody688_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody688_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 122)

def sourceBody688_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody688_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 76, 42, 112]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 8)) (some 661) ([26, 94, 60, 130, 16, 84, 50, 120]) (some (26, sourceBody688_80, 688, 9))

def sourceBody688_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_81 sourceBody688_2

def sourceBody688_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_82 sourceBody688_0

def sourceBody688_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_79 sourceBody688_83

def sourceBody688_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_78 sourceBody688_84

def sourceBody688_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_77 sourceBody688_85

def sourceBody688_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_76 sourceBody688_86

def sourceBody688_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_75 sourceBody688_87

def sourceBody688_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_74 sourceBody688_88

def sourceBody688_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_73 sourceBody688_89

def sourceBody688_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_72 sourceBody688_90

def sourceBody688_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody688_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 96)

def sourceBody688_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def sourceBody688_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 132)

def sourceBody688_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody688_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 104)

def sourceBody688_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 70)

def sourceBody688_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 140)

def sourceBody688_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody688_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 94, 60, 130]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 10)) (some 661) ([16, 84, 50, 120, 34, 102, 68, 138]) (some (16, sourceBody688_100, 688, 11))

def sourceBody688_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_101 sourceBody688_2

def sourceBody688_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_102 sourceBody688_0

def sourceBody688_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_99 sourceBody688_103

def sourceBody688_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_98 sourceBody688_104

def sourceBody688_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_97 sourceBody688_105

def sourceBody688_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_96 sourceBody688_106

def sourceBody688_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_95 sourceBody688_107

def sourceBody688_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_94 sourceBody688_108

def sourceBody688_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_93 sourceBody688_109

def sourceBody688_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_92 sourceBody688_110

def sourceBody688_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody688_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 78)

def sourceBody688_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 44)

def sourceBody688_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 114)

def sourceBody688_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 36)

def sourceBody688_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 104)

def sourceBody688_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 70)

def sourceBody688_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 140)

def sourceBody688_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody688_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 84, 50, 120]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 12)) (some 661) ([34, 102, 68, 138, 12, 80, 46, 116]) (some (34, sourceBody688_120, 688, 13))

def sourceBody688_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_121 sourceBody688_2

def sourceBody688_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_122 sourceBody688_0

def sourceBody688_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_119 sourceBody688_123

def sourceBody688_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_118 sourceBody688_124

def sourceBody688_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_117 sourceBody688_125

def sourceBody688_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_116 sourceBody688_126

def sourceBody688_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_115 sourceBody688_127

def sourceBody688_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_114 sourceBody688_128

def sourceBody688_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_113 sourceBody688_129

def sourceBody688_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_112 sourceBody688_130

def sourceBody688_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody688_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 96)

def sourceBody688_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 62)

def sourceBody688_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 132)

def sourceBody688_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody688_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 86)

def sourceBody688_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 52)

def sourceBody688_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 122)

def sourceBody688_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody688_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 102, 68, 138]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 14)) (some 661) ([12, 80, 46, 116, 30, 98, 64, 134]) (some (12, sourceBody688_140, 688, 15))

def sourceBody688_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_141 sourceBody688_2

def sourceBody688_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_142 sourceBody688_0

def sourceBody688_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_139 sourceBody688_143

def sourceBody688_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_138 sourceBody688_144

def sourceBody688_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_137 sourceBody688_145

def sourceBody688_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_136 sourceBody688_146

def sourceBody688_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_135 sourceBody688_147

def sourceBody688_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_134 sourceBody688_148

def sourceBody688_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_133 sourceBody688_149

def sourceBody688_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_132 sourceBody688_150

def sourceBody688_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody688_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 76)

def sourceBody688_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 42)

def sourceBody688_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 112)

def sourceBody688_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody688_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 94)

def sourceBody688_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 60)

def sourceBody688_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 130)

def sourceBody688_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody688_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 80, 46, 116]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 16)) (some 659) ([30, 98, 64, 134, 20, 88, 54, 124]) (some (30, sourceBody688_160, 688, 17))

def sourceBody688_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_161 sourceBody688_2

def sourceBody688_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_162 sourceBody688_0

def sourceBody688_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_159 sourceBody688_163

def sourceBody688_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_158 sourceBody688_164

def sourceBody688_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_157 sourceBody688_165

def sourceBody688_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_156 sourceBody688_166

def sourceBody688_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_155 sourceBody688_167

def sourceBody688_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_154 sourceBody688_168

def sourceBody688_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_153 sourceBody688_169

def sourceBody688_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_152 sourceBody688_170

def sourceBody688_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody688_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 84)

def sourceBody688_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody688_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 120)

def sourceBody688_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 34)

def sourceBody688_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 102)

def sourceBody688_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 68)

def sourceBody688_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 138)

def sourceBody688_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody688_181 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 98, 64, 134]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 18)) (some 658) ([20, 88, 54, 124, 38, 106, 72, 142]) (some (20, sourceBody688_180, 688, 19))

def sourceBody688_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_181 sourceBody688_2

def sourceBody688_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_182 sourceBody688_0

def sourceBody688_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_179 sourceBody688_183

def sourceBody688_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_178 sourceBody688_184

def sourceBody688_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_177 sourceBody688_185

def sourceBody688_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_176 sourceBody688_186

def sourceBody688_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_175 sourceBody688_187

def sourceBody688_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_174 sourceBody688_188

def sourceBody688_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_173 sourceBody688_189

def sourceBody688_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_172 sourceBody688_190

def sourceBody688_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody688_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 98)

def sourceBody688_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 64)

def sourceBody688_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 134)

def sourceBody688_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody688_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody688_198 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 88, 54, 124]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 20)) (some 665) ([38, 106, 72, 142, 6]) (some (38, sourceBody688_197, 688, 21))

def sourceBody688_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_198 sourceBody688_2

def sourceBody688_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_199 sourceBody688_0

def sourceBody688_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_196 sourceBody688_200

def sourceBody688_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_195 sourceBody688_201

def sourceBody688_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_194 sourceBody688_202

def sourceBody688_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_193 sourceBody688_203

def sourceBody688_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_192 sourceBody688_204

def sourceBody688_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody688_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 80)

def sourceBody688_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 46)

def sourceBody688_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 116)

def sourceBody688_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody688_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 88)

def sourceBody688_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 54)

def sourceBody688_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 124)

def sourceBody688_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody688_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 106, 72, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody688_0, 688, 22)) (some 659) ([6, 74, 40, 110, 24, 92, 58, 128]) (some (6, sourceBody688_214, 688, 23))

def sourceBody688_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_215 sourceBody688_2

def sourceBody688_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_216 sourceBody688_0

def sourceBody688_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_213 sourceBody688_217

def sourceBody688_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_212 sourceBody688_218

def sourceBody688_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_211 sourceBody688_219

def sourceBody688_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_210 sourceBody688_220

def sourceBody688_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_209 sourceBody688_221

def sourceBody688_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_208 sourceBody688_222

def sourceBody688_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_207 sourceBody688_223

def sourceBody688_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_206 sourceBody688_224

def sourceBody688_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 108)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody688_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 38)

def sourceBody688_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 106)

def sourceBody688_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 72)

def sourceBody688_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 142)

def sourceBody688_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 74)

def sourceBody688_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 92

def sourceBody688_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_232 sourceBody688_0

def sourceBody688_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_231 sourceBody688_233

def sourceBody688_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 40)

def sourceBody688_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]) 92

def sourceBody688_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_236 sourceBody688_0

def sourceBody688_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_235 sourceBody688_237

def sourceBody688_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 110)

def sourceBody688_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])
  92

def sourceBody688_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_240 sourceBody688_0

def sourceBody688_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_239 sourceBody688_241

def sourceBody688_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 24)

def sourceBody688_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])
  92

def sourceBody688_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_244 sourceBody688_0

def sourceBody688_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_243 sourceBody688_245

def sourceBody688_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_246 sourceBody688_0

def sourceBody688_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_242 sourceBody688_247

def sourceBody688_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_238 sourceBody688_248

def sourceBody688_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_234 sourceBody688_249

def sourceBody688_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_230 sourceBody688_250

def sourceBody688_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_251

def sourceBody688_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_229 sourceBody688_252

def sourceBody688_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_253

def sourceBody688_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_228 sourceBody688_254

def sourceBody688_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_255

def sourceBody688_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_227 sourceBody688_256

def sourceBody688_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_257

def sourceBody688_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_226 sourceBody688_258

def sourceBody688_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_259

def sourceBody688_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 6#64])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody688_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 30)

def sourceBody688_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 98)

def sourceBody688_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 64)

def sourceBody688_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 134)

def sourceBody688_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_265 sourceBody688_250

def sourceBody688_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_266

def sourceBody688_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_264 sourceBody688_267

def sourceBody688_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_268

def sourceBody688_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_263 sourceBody688_269

def sourceBody688_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_270

def sourceBody688_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_262 sourceBody688_271

def sourceBody688_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_272

def sourceBody688_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_261 sourceBody688_273

def sourceBody688_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_274

def sourceBody688_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_260 sourceBody688_275

def sourceBody688_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 108, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody688_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 6)

def sourceBody688_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_278 sourceBody688_0

def sourceBody688_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_279 sourceBody688_0

def sourceBody688_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_277 sourceBody688_280

def sourceBody688_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_281

def sourceBody688_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_276 sourceBody688_282

def sourceBody688_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_225 sourceBody688_283

def sourceBody688_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_284

def sourceBody688_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_285

def sourceBody688_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_286

def sourceBody688_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_287

def sourceBody688_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_288

def sourceBody688_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_289

def sourceBody688_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_290

def sourceBody688_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_291

def sourceBody688_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_205 sourceBody688_292

def sourceBody688_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_293

def sourceBody688_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_294

def sourceBody688_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_295

def sourceBody688_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_296

def sourceBody688_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_297

def sourceBody688_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_298

def sourceBody688_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_299

def sourceBody688_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_300

def sourceBody688_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_191 sourceBody688_301

def sourceBody688_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_302

def sourceBody688_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_303

def sourceBody688_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_304

def sourceBody688_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_305

def sourceBody688_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_306

def sourceBody688_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_307

def sourceBody688_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_308

def sourceBody688_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_309

def sourceBody688_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_171 sourceBody688_310

def sourceBody688_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_311

def sourceBody688_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_312

def sourceBody688_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_313

def sourceBody688_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_314

def sourceBody688_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_315

def sourceBody688_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_316

def sourceBody688_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_317

def sourceBody688_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_318

def sourceBody688_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_151 sourceBody688_319

def sourceBody688_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_320

def sourceBody688_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_321

def sourceBody688_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_322

def sourceBody688_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_323

def sourceBody688_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_324

def sourceBody688_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_325

def sourceBody688_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_326

def sourceBody688_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_327

def sourceBody688_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_131 sourceBody688_328

def sourceBody688_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_329

def sourceBody688_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_330

def sourceBody688_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_331

def sourceBody688_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_332

def sourceBody688_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_333

def sourceBody688_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_334

def sourceBody688_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_335

def sourceBody688_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_336

def sourceBody688_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_111 sourceBody688_337

def sourceBody688_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_338

def sourceBody688_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_339

def sourceBody688_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_340

def sourceBody688_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_341

def sourceBody688_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_342

def sourceBody688_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_343

def sourceBody688_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_344

def sourceBody688_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_345

def sourceBody688_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_91 sourceBody688_346

def sourceBody688_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_347

def sourceBody688_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_348

def sourceBody688_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_349

def sourceBody688_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_350

def sourceBody688_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_351

def sourceBody688_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_352

def sourceBody688_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_353

def sourceBody688_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_354

def sourceBody688_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_71 sourceBody688_355

def sourceBody688_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_356

def sourceBody688_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_70 sourceBody688_357

def sourceBody688_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_358

def sourceBody688_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_69 sourceBody688_359

def sourceBody688_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_360

def sourceBody688_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_68 sourceBody688_361

def sourceBody688_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_362

def sourceBody688_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_67 sourceBody688_363

def sourceBody688_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_364

def sourceBody688_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_66 sourceBody688_365

def sourceBody688_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_366

def sourceBody688_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_65 sourceBody688_367

def sourceBody688_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_368

def sourceBody688_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_64 sourceBody688_369

def sourceBody688_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_370

def sourceBody688_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_63 sourceBody688_371

def sourceBody688_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_372

def sourceBody688_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_373

def sourceBody688_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_374

def sourceBody688_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_375

def sourceBody688_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_376

def sourceBody688_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_377

def sourceBody688_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_378

def sourceBody688_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_379

def sourceBody688_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_51 sourceBody688_380

def sourceBody688_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_381

def sourceBody688_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_382

def sourceBody688_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_383

def sourceBody688_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_384

def sourceBody688_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_385

def sourceBody688_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_386

def sourceBody688_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_387

def sourceBody688_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_388

def sourceBody688_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_31 sourceBody688_389

def sourceBody688_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_390

def sourceBody688_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_391

def sourceBody688_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_392

def sourceBody688_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_393

def sourceBody688_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_394

def sourceBody688_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_395

def sourceBody688_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_396

def sourceBody688_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_397

def sourceBody688_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_17 sourceBody688_398

def sourceBody688_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_399

def sourceBody688_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_16 sourceBody688_400

def sourceBody688_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_401

def sourceBody688_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_15 sourceBody688_402

def sourceBody688_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_403

def sourceBody688_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_14 sourceBody688_404

def sourceBody688_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_405

def sourceBody688_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_13 sourceBody688_406

def sourceBody688_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_407

def sourceBody688_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_12 sourceBody688_408

def sourceBody688_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_409

def sourceBody688_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_11 sourceBody688_410

def sourceBody688_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_411

def sourceBody688_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_10 sourceBody688_412

def sourceBody688_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_413

def sourceBody688_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody688_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_414 sourceBody688_415

def sourceBody688_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody688_418 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 126 (Flapjack.WordRegImm.imm 0#64) sourceBody688_416 sourceBody688_417

def sourceBody688_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_418 sourceBody688_2

def sourceBody688_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_419 sourceBody688_0

def sourceBody688_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_9 sourceBody688_420

def sourceBody688_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_8 sourceBody688_421

def sourceBody688_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_4 sourceBody688_422

def sourceBody688_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_3 sourceBody688_423

def sourceBody688_425 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody688_424 (Flapjack.Spt.ls PUnit.unit)

def sourceBody688_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_425 sourceBody688_2

def sourceBody688_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_2 sourceBody688_426

def sourceBody688_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody688_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody688_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_429 sourceBody688_0

def sourceBody688_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_428 sourceBody688_430

def sourceBody688_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_427 sourceBody688_431

def sourceBody688_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_1 sourceBody688_432

def sourceBody688_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody688_0 sourceBody688_433

def source688 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (688, 3, sourceBody688_434)
end InitECandidate.Proofs.WordStages
