import InitECandidate.Proofs.WordStages.Source585
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody601_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody601_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 288#64]))

def sourceBody601_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 256#64]))

def sourceBody601_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody601_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody601_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody601_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody601_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody601_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody601_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody601_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody601_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody601_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody601_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody601_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody601_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody601_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 42) sourceBody601_14 sourceBody601_15

def sourceBody601_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody601_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_16 sourceBody601_17

def sourceBody601_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 22)

def sourceBody601_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody601_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody601_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody601_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody601_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody601_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 2) sourceBody601_23 sourceBody601_24

def sourceBody601_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_25 sourceBody601_17

def sourceBody601_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody601_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 18)

def sourceBody601_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody601_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody601_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody601_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_31 sourceBody601_0

def sourceBody601_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_32 sourceBody601_0

def sourceBody601_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 32)

def sourceBody601_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody601_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 3)) (some 391) ([24]) (some (24, sourceBody601_35, 601, 4))

def sourceBody601_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_36 sourceBody601_17

def sourceBody601_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_37 sourceBody601_0

def sourceBody601_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_34 sourceBody601_38

def sourceBody601_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_39

def sourceBody601_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_40

def sourceBody601_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 5)) (some 474) ([]) (some (24, sourceBody601_35, 601, 6))

def sourceBody601_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_42 sourceBody601_17

def sourceBody601_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_43 sourceBody601_0

def sourceBody601_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_44

def sourceBody601_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_45

def sourceBody601_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_41 sourceBody601_46

def sourceBody601_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody601_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 7)) (some 604) ([24]) (some (24, sourceBody601_35, 601, 8))

def sourceBody601_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_49 sourceBody601_17

def sourceBody601_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_50 sourceBody601_0

def sourceBody601_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_48 sourceBody601_51

def sourceBody601_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_52

def sourceBody601_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_53

def sourceBody601_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_47 sourceBody601_54

def sourceBody601_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody601_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody601_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody601_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 2) 14

def sourceBody601_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_59 sourceBody601_0

def sourceBody601_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_58 sourceBody601_60

def sourceBody601_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_61 sourceBody601_0

def sourceBody601_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_57 sourceBody601_62

def sourceBody601_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_63

def sourceBody601_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_56 sourceBody601_64

def sourceBody601_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_65

def sourceBody601_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_55 sourceBody601_66

def sourceBody601_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody601_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody601_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_69 sourceBody601_62

def sourceBody601_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_70

def sourceBody601_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_68 sourceBody601_71

def sourceBody601_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_72

def sourceBody601_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_67 sourceBody601_73

def sourceBody601_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_33 sourceBody601_74

def sourceBody601_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_17 sourceBody601_75

def sourceBody601_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) sourceBody601_30 sourceBody601_76

def sourceBody601_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_77 sourceBody601_17

def sourceBody601_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 2)) (some 607) ([2, 24]) (some (2, sourceBody601_78, 601, 9))

def sourceBody601_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_79 sourceBody601_17

def sourceBody601_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_80 sourceBody601_0

def sourceBody601_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_29 sourceBody601_81

def sourceBody601_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_28 sourceBody601_82

def sourceBody601_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_83

def sourceBody601_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_84

def sourceBody601_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_85

def sourceBody601_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_86

def sourceBody601_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 32)

def sourceBody601_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody601_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 10)) (some 391) ([42]) (some (42, sourceBody601_89, 601, 11))

def sourceBody601_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_90 sourceBody601_17

def sourceBody601_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_91 sourceBody601_0

def sourceBody601_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_88 sourceBody601_92

def sourceBody601_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_93

def sourceBody601_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_94

def sourceBody601_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody601_87 sourceBody601_95

def sourceBody601_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_96 sourceBody601_17

def sourceBody601_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_97 sourceBody601_0

def sourceBody601_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_27 sourceBody601_98

def sourceBody601_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_26 sourceBody601_99

def sourceBody601_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_100

def sourceBody601_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_21 sourceBody601_101

def sourceBody601_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_20 sourceBody601_102

def sourceBody601_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_103

def sourceBody601_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody601_104 sourceBody601_0

def sourceBody601_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_105 sourceBody601_17

def sourceBody601_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_106 sourceBody601_0

def sourceBody601_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_19 sourceBody601_107

def sourceBody601_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_18 sourceBody601_108

def sourceBody601_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_13 sourceBody601_109

def sourceBody601_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_12 sourceBody601_110

def sourceBody601_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 256#64])

def sourceBody601_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody601_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)

def sourceBody601_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 42

def sourceBody601_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_115 sourceBody601_0

def sourceBody601_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_114 sourceBody601_116

def sourceBody601_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_117 sourceBody601_0

def sourceBody601_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_113 sourceBody601_118

def sourceBody601_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_119

def sourceBody601_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_112 sourceBody601_120

def sourceBody601_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_121

def sourceBody601_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_111 sourceBody601_122

def sourceBody601_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 288#64])

def sourceBody601_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody601_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_125 sourceBody601_118

def sourceBody601_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_126

def sourceBody601_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_124 sourceBody601_127

def sourceBody601_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_128

def sourceBody601_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_123 sourceBody601_129

def sourceBody601_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody601_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 2) sourceBody601_23 sourceBody601_24

def sourceBody601_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_132 sourceBody601_17

def sourceBody601_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody601_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 12)) (some 611) ([42]) (some (42, sourceBody601_89, 601, 13))

def sourceBody601_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_135 sourceBody601_17

def sourceBody601_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_136 sourceBody601_0

def sourceBody601_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_134 sourceBody601_137

def sourceBody601_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_138

def sourceBody601_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_139

def sourceBody601_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 14)) (some 609) ([42]) (some (42, sourceBody601_89, 601, 15))

def sourceBody601_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_141 sourceBody601_17

def sourceBody601_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_142 sourceBody601_0

def sourceBody601_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_134 sourceBody601_143

def sourceBody601_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_144

def sourceBody601_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_145

def sourceBody601_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_140 sourceBody601_146

def sourceBody601_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody601_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody601_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 16)) (some 472) ([42]) (some (42, sourceBody601_89, 601, 17))

def sourceBody601_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_150 sourceBody601_17

def sourceBody601_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_151 sourceBody601_0

def sourceBody601_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_149 sourceBody601_152

def sourceBody601_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_153

def sourceBody601_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_154

def sourceBody601_156 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody601_155 sourceBody601_0

def sourceBody601_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_156 sourceBody601_17

def sourceBody601_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_157 sourceBody601_0

def sourceBody601_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_27 sourceBody601_158

def sourceBody601_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_133 sourceBody601_159

def sourceBody601_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_160

def sourceBody601_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_148 sourceBody601_161

def sourceBody601_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_147 sourceBody601_162

def sourceBody601_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody601_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody601_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 18)) (some 613) ([42, 2]) (some (42, sourceBody601_89, 601, 19))

def sourceBody601_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_166 sourceBody601_17

def sourceBody601_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_167 sourceBody601_0

def sourceBody601_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_165 sourceBody601_168

def sourceBody601_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_164 sourceBody601_169

def sourceBody601_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_170

def sourceBody601_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_171

def sourceBody601_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_163 sourceBody601_172

def sourceBody601_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody601_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 20)) (some 476) ([42, 2, 24, 14]) (some (42, sourceBody601_89, 601, 21))

def sourceBody601_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_175 sourceBody601_17

def sourceBody601_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_176 sourceBody601_0

def sourceBody601_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_174 sourceBody601_177

def sourceBody601_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_69 sourceBody601_178

def sourceBody601_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_179

def sourceBody601_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_24 sourceBody601_180

def sourceBody601_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_181

def sourceBody601_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_182

def sourceBody601_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_173 sourceBody601_183

def sourceBody601_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 22)) (some 610) ([42]) (some (42, sourceBody601_89, 601, 23))

def sourceBody601_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_185 sourceBody601_17

def sourceBody601_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_186 sourceBody601_0

def sourceBody601_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_134 sourceBody601_187

def sourceBody601_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_188

def sourceBody601_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_189

def sourceBody601_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 24)) (some 613) ([42, 2]) (some (42, sourceBody601_89, 601, 25))

def sourceBody601_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_191 sourceBody601_17

def sourceBody601_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_192 sourceBody601_0

def sourceBody601_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_193

def sourceBody601_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_88 sourceBody601_194

def sourceBody601_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_195

def sourceBody601_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_196

def sourceBody601_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_190 sourceBody601_197

def sourceBody601_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody601_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody601_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 42, 2, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 26)) (some 467) ([14]) (some (14, sourceBody601_200, 601, 27))

def sourceBody601_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_201 sourceBody601_17

def sourceBody601_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_202 sourceBody601_0

def sourceBody601_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_199 sourceBody601_203

def sourceBody601_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody601_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 42)

def sourceBody601_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody601_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody601_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody601_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 28)) (some 476) ([36, 8, 30, 20]) (some (36, sourceBody601_209, 601, 29))

def sourceBody601_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_210 sourceBody601_17

def sourceBody601_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_211 sourceBody601_0

def sourceBody601_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_208 sourceBody601_212

def sourceBody601_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_207 sourceBody601_213

def sourceBody601_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_206 sourceBody601_214

def sourceBody601_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_205 sourceBody601_215

def sourceBody601_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_216

def sourceBody601_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_217

def sourceBody601_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_204 sourceBody601_218

def sourceBody601_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_219

def sourceBody601_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_220

def sourceBody601_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_221

def sourceBody601_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_222

def sourceBody601_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_223

def sourceBody601_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_224

def sourceBody601_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_225

def sourceBody601_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_226

def sourceBody601_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_198 sourceBody601_227

def sourceBody601_229 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody601_184 sourceBody601_228

def sourceBody601_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_229 sourceBody601_17

def sourceBody601_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_230 sourceBody601_0

def sourceBody601_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_27 sourceBody601_231

def sourceBody601_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_133 sourceBody601_232

def sourceBody601_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_233

def sourceBody601_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_21 sourceBody601_234

def sourceBody601_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_131 sourceBody601_235

def sourceBody601_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_236

def sourceBody601_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody601_239 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 42) sourceBody601_14 sourceBody601_15

def sourceBody601_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_239 sourceBody601_17

def sourceBody601_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody601_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody601_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 30)) (some 611) ([22]) (some (22, sourceBody601_242, 601, 31))

def sourceBody601_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_243 sourceBody601_17

def sourceBody601_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_244 sourceBody601_0

def sourceBody601_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_241 sourceBody601_245

def sourceBody601_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_246

def sourceBody601_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_247

def sourceBody601_249 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 32)) (some 609) ([22]) (some (22, sourceBody601_242, 601, 33))

def sourceBody601_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_249 sourceBody601_17

def sourceBody601_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_250 sourceBody601_0

def sourceBody601_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_241 sourceBody601_251

def sourceBody601_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_252

def sourceBody601_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_253

def sourceBody601_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_248 sourceBody601_254

def sourceBody601_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 40)

def sourceBody601_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody601_258 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 34)) (some 472) ([22]) (some (22, sourceBody601_242, 601, 35))

def sourceBody601_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_258 sourceBody601_17

def sourceBody601_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_259 sourceBody601_0

def sourceBody601_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_257 sourceBody601_260

def sourceBody601_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_261

def sourceBody601_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_262

def sourceBody601_264 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody601_263 sourceBody601_0

def sourceBody601_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_264 sourceBody601_17

def sourceBody601_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_265 sourceBody601_0

def sourceBody601_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_19 sourceBody601_266

def sourceBody601_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_240 sourceBody601_267

def sourceBody601_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_24 sourceBody601_268

def sourceBody601_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_256 sourceBody601_269

def sourceBody601_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_255 sourceBody601_270

def sourceBody601_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody601_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody601_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 36)) (some 613) ([22, 42]) (some (22, sourceBody601_242, 601, 37))

def sourceBody601_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_274 sourceBody601_17

def sourceBody601_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_275 sourceBody601_0

def sourceBody601_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_273 sourceBody601_276

def sourceBody601_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_272 sourceBody601_277

def sourceBody601_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_278

def sourceBody601_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_279

def sourceBody601_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_271 sourceBody601_280

def sourceBody601_282 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 38)) (some 476) ([22, 42, 2, 24]) (some (22, sourceBody601_242, 601, 39))

def sourceBody601_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_282 sourceBody601_17

def sourceBody601_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_283 sourceBody601_0

def sourceBody601_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_69 sourceBody601_284

def sourceBody601_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_285

def sourceBody601_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_24 sourceBody601_286

def sourceBody601_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_15 sourceBody601_287

def sourceBody601_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_288

def sourceBody601_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_289

def sourceBody601_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_281 sourceBody601_290

def sourceBody601_292 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 40)) (some 610) ([22]) (some (22, sourceBody601_242, 601, 41))

def sourceBody601_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_292 sourceBody601_17

def sourceBody601_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_293 sourceBody601_0

def sourceBody601_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_241 sourceBody601_294

def sourceBody601_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_295

def sourceBody601_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_296

def sourceBody601_298 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 42)) (some 613) ([22, 42]) (some (22, sourceBody601_242, 601, 43))

def sourceBody601_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_298 sourceBody601_17

def sourceBody601_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_299 sourceBody601_0

def sourceBody601_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_273 sourceBody601_300

def sourceBody601_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_272 sourceBody601_301

def sourceBody601_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_302

def sourceBody601_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_303

def sourceBody601_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_297 sourceBody601_304

def sourceBody601_306 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 44)) (some 476) ([22, 42, 2, 24]) (some (22, sourceBody601_242, 601, 45))

def sourceBody601_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_306 sourceBody601_17

def sourceBody601_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_307 sourceBody601_0

def sourceBody601_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_69 sourceBody601_308

def sourceBody601_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_309

def sourceBody601_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_24 sourceBody601_310

def sourceBody601_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_14 sourceBody601_311

def sourceBody601_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_312

def sourceBody601_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_313

def sourceBody601_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_305 sourceBody601_314

def sourceBody601_316 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody601_291 sourceBody601_315

def sourceBody601_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_316 sourceBody601_17

def sourceBody601_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_317 sourceBody601_0

def sourceBody601_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_19 sourceBody601_318

def sourceBody601_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_240 sourceBody601_319

def sourceBody601_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_24 sourceBody601_320

def sourceBody601_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_238 sourceBody601_321

def sourceBody601_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody601_324 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 46)) (some 92) ([22, 42]) (some (22, sourceBody601_242, 601, 47))

def sourceBody601_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_324 sourceBody601_17

def sourceBody601_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_325 sourceBody601_0

def sourceBody601_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_273 sourceBody601_326

def sourceBody601_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_323 sourceBody601_327

def sourceBody601_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
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
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 16])

def sourceBody601_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
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
        Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody601_331 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 48)) (some 77) ([42, 2, 24]) (some (42, sourceBody601_89, 601, 49))

def sourceBody601_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_331 sourceBody601_17

def sourceBody601_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_332 sourceBody601_0

def sourceBody601_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_34 sourceBody601_333

def sourceBody601_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_330 sourceBody601_334

def sourceBody601_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_329 sourceBody601_335

def sourceBody601_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_336

def sourceBody601_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_337

def sourceBody601_339 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody601_338 sourceBody601_0

def sourceBody601_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_339 sourceBody601_17

def sourceBody601_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_340 sourceBody601_0

def sourceBody601_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_27 sourceBody601_341

def sourceBody601_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_133 sourceBody601_342

def sourceBody601_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_22 sourceBody601_343

def sourceBody601_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_88 sourceBody601_344

def sourceBody601_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_328 sourceBody601_345

def sourceBody601_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_346

def sourceBody601_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_347

def sourceBody601_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_322 sourceBody601_348

def sourceBody601_350 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) sourceBody601_237 sourceBody601_349

def sourceBody601_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_350 sourceBody601_17

def sourceBody601_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_351 sourceBody601_0

def sourceBody601_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_19 sourceBody601_352

def sourceBody601_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_18 sourceBody601_353

def sourceBody601_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_13 sourceBody601_354

def sourceBody601_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_12 sourceBody601_355

def sourceBody601_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_130 sourceBody601_356

def sourceBody601_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody601_359 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody601_0, 601, 50)) (some 76) ([22]) (some (22, sourceBody601_242, 601, 51))

def sourceBody601_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_359 sourceBody601_17

def sourceBody601_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_360 sourceBody601_0

def sourceBody601_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_358 sourceBody601_361

def sourceBody601_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_362

def sourceBody601_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_363

def sourceBody601_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_357 sourceBody601_364

def sourceBody601_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody601_367 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody601_0, 601, 52)) (some 73) ([22]) (some (22, sourceBody601_242, 601, 53))

def sourceBody601_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_367 sourceBody601_17

def sourceBody601_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_368 sourceBody601_0

def sourceBody601_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_366 sourceBody601_369

def sourceBody601_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_370

def sourceBody601_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_371

def sourceBody601_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_365 sourceBody601_372

def sourceBody601_374 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody601_0, 601, 54)) (some 490) ([22]) (some (22, sourceBody601_242, 601, 55))

def sourceBody601_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_374 sourceBody601_17

def sourceBody601_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_375 sourceBody601_0

def sourceBody601_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_14 sourceBody601_376

def sourceBody601_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_377

def sourceBody601_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_378

def sourceBody601_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_373 sourceBody601_379

def sourceBody601_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody601_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody601_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_382 sourceBody601_0

def sourceBody601_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_381 sourceBody601_383

def sourceBody601_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_380 sourceBody601_384

def sourceBody601_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_11 sourceBody601_385

def sourceBody601_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_386

def sourceBody601_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_10 sourceBody601_387

def sourceBody601_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_388

def sourceBody601_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_9 sourceBody601_389

def sourceBody601_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_390

def sourceBody601_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_8 sourceBody601_391

def sourceBody601_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_392

def sourceBody601_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_7 sourceBody601_393

def sourceBody601_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_394

def sourceBody601_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_6 sourceBody601_395

def sourceBody601_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_396

def sourceBody601_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_5 sourceBody601_397

def sourceBody601_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_398

def sourceBody601_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_4 sourceBody601_399

def sourceBody601_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_400

def sourceBody601_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_3 sourceBody601_401

def sourceBody601_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_402

def sourceBody601_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_2 sourceBody601_403

def sourceBody601_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_404

def sourceBody601_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_1 sourceBody601_405

def sourceBody601_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody601_0 sourceBody601_406

def source601 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (601, 1, sourceBody601_407)
end InitECandidate.Proofs.WordStages
