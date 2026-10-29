import InitECandidate.Proofs.WordStages.Source852
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody868_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody868_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody868_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody868_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 88#64)

def sourceBody868_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody868_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 2)) (some 68) ([24]) (some (24, sourceBody868_4, 868, 3))

def sourceBody868_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody868_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_5 sourceBody868_6

def sourceBody868_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_7 sourceBody868_0

def sourceBody868_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_3 sourceBody868_8

def sourceBody868_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 416#64])

def sourceBody868_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 36)

def sourceBody868_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 50)

def sourceBody868_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 8

def sourceBody868_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_13 sourceBody868_0

def sourceBody868_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_12 sourceBody868_14

def sourceBody868_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_15 sourceBody868_0

def sourceBody868_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_11 sourceBody868_16

def sourceBody868_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_17

def sourceBody868_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_10 sourceBody868_18

def sourceBody868_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_19

def sourceBody868_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_9 sourceBody868_20

def sourceBody868_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_21

def sourceBody868_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_22

def sourceBody868_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 416#64]))

def sourceBody868_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 88#64)

def sourceBody868_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 4)) (some 78) ([24, 50]) (some (24, sourceBody868_4, 868, 5))

def sourceBody868_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_26 sourceBody868_6

def sourceBody868_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_27 sourceBody868_0

def sourceBody868_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_25 sourceBody868_28

def sourceBody868_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_24 sourceBody868_29

def sourceBody868_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_30

def sourceBody868_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_31

def sourceBody868_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_23 sourceBody868_32

def sourceBody868_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody868_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 6)) (some 68) ([24]) (some (24, sourceBody868_4, 868, 7))

def sourceBody868_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_35 sourceBody868_6

def sourceBody868_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_36 sourceBody868_0

def sourceBody868_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_34 sourceBody868_37

def sourceBody868_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def sourceBody868_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_39 sourceBody868_18

def sourceBody868_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_40

def sourceBody868_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody868_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody868_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 8)) (some 68) ([50]) (some (50, sourceBody868_43, 868, 9))

def sourceBody868_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_44 sourceBody868_6

def sourceBody868_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_45 sourceBody868_0

def sourceBody868_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_42 sourceBody868_46

def sourceBody868_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody868_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody868_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody868_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 50) 32

def sourceBody868_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_51 sourceBody868_0

def sourceBody868_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_50 sourceBody868_52

def sourceBody868_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_53 sourceBody868_0

def sourceBody868_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_49 sourceBody868_54

def sourceBody868_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_55

def sourceBody868_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_48 sourceBody868_56

def sourceBody868_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_57

def sourceBody868_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody868_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody868_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody868_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 10)) (some 435) ([8, 32]) (some (8, sourceBody868_61, 868, 11))

def sourceBody868_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_62 sourceBody868_6

def sourceBody868_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_63 sourceBody868_0

def sourceBody868_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_60 sourceBody868_64

def sourceBody868_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_59 sourceBody868_65

def sourceBody868_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def sourceBody868_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 50)

def sourceBody868_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def sourceBody868_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 20

def sourceBody868_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_70 sourceBody868_0

def sourceBody868_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_69 sourceBody868_71

def sourceBody868_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_72 sourceBody868_0

def sourceBody868_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_68 sourceBody868_73

def sourceBody868_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_74

def sourceBody868_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_67 sourceBody868_75

def sourceBody868_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_76

def sourceBody868_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody868_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody868_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 12)) (some 68) ([32]) (some (32, sourceBody868_79, 868, 13))

def sourceBody868_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_80 sourceBody868_6

def sourceBody868_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_81 sourceBody868_0

def sourceBody868_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_78 sourceBody868_82

def sourceBody868_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody868_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody868_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def sourceBody868_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 46

def sourceBody868_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_87 sourceBody868_0

def sourceBody868_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_86 sourceBody868_88

def sourceBody868_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_89 sourceBody868_0

def sourceBody868_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_85 sourceBody868_90

def sourceBody868_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_91

def sourceBody868_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_84 sourceBody868_92

def sourceBody868_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_93

def sourceBody868_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody868_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody868_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody868_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 14)) (some 435) ([20, 46]) (some (20, sourceBody868_97, 868, 15))

def sourceBody868_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_98 sourceBody868_6

def sourceBody868_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_99 sourceBody868_0

def sourceBody868_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_96 sourceBody868_100

def sourceBody868_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_95 sourceBody868_101

def sourceBody868_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody868_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 32)

def sourceBody868_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 46)

def sourceBody868_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 16

def sourceBody868_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_106 sourceBody868_0

def sourceBody868_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_105 sourceBody868_107

def sourceBody868_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_108 sourceBody868_0

def sourceBody868_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_104 sourceBody868_109

def sourceBody868_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_110

def sourceBody868_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_103 sourceBody868_111

def sourceBody868_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_112

def sourceBody868_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def sourceBody868_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody868_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_115 sourceBody868_109

def sourceBody868_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_116

def sourceBody868_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_114 sourceBody868_117

def sourceBody868_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_118

def sourceBody868_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_113 sourceBody868_119

def sourceBody868_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody868_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 16)) (some 438) ([]) (some (46, sourceBody868_121, 868, 17))

def sourceBody868_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_122 sourceBody868_6

def sourceBody868_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_123 sourceBody868_0

def sourceBody868_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_124

def sourceBody868_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_125

def sourceBody868_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_120 sourceBody868_126

def sourceBody868_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 464#64]))

def sourceBody868_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody868_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 18)) (some 860) ([46, 16, 40]) (some (46, sourceBody868_121, 868, 19))

def sourceBody868_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_131 sourceBody868_6

def sourceBody868_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_132 sourceBody868_0

def sourceBody868_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_130 sourceBody868_133

def sourceBody868_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_129 sourceBody868_134

def sourceBody868_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_128 sourceBody868_135

def sourceBody868_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_136

def sourceBody868_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_137

def sourceBody868_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_127 sourceBody868_138

def sourceBody868_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 432#64]))

def sourceBody868_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody868_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 448#64]))

def sourceBody868_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody868_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 40) sourceBody868_143 sourceBody868_141

def sourceBody868_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_144 sourceBody868_6

def sourceBody868_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody868_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 440#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 448#64]),
            Flapjack.WordLangExpHOL.const 1#64])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody868_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_147 sourceBody868_0

def sourceBody868_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_148 sourceBody868_0

def sourceBody868_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody868_149 sourceBody868_0

def sourceBody868_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_150 sourceBody868_6

def sourceBody868_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_151 sourceBody868_0

def sourceBody868_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_146 sourceBody868_152

def sourceBody868_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_145 sourceBody868_153

def sourceBody868_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_142 sourceBody868_154

def sourceBody868_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_141 sourceBody868_155

def sourceBody868_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 472#64]))

def sourceBody868_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody868_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody868_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 20)) (some 860) ([16, 40, 28]) (some (16, sourceBody868_160, 868, 21))

def sourceBody868_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_161 sourceBody868_6

def sourceBody868_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_162 sourceBody868_0

def sourceBody868_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_159 sourceBody868_163

def sourceBody868_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_158 sourceBody868_164

def sourceBody868_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_157 sourceBody868_165

def sourceBody868_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_166

def sourceBody868_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_167

def sourceBody868_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_156 sourceBody868_168

def sourceBody868_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 22)) (some 387) ([]) (some (16, sourceBody868_160, 868, 23))

def sourceBody868_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_170 sourceBody868_6

def sourceBody868_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_171 sourceBody868_0

def sourceBody868_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_172

def sourceBody868_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_173

def sourceBody868_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_169 sourceBody868_174

def sourceBody868_176 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 24)) (some 434) ([16]) (some (16, sourceBody868_160, 868, 25))

def sourceBody868_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_176 sourceBody868_6

def sourceBody868_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_177 sourceBody868_0

def sourceBody868_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_143 sourceBody868_178

def sourceBody868_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_179

def sourceBody868_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_180

def sourceBody868_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_175 sourceBody868_181

def sourceBody868_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody868_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody868_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody868_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody868_187 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 28 (Flapjack.WordRegImm.reg 54) sourceBody868_185 sourceBody868_186

def sourceBody868_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_187 sourceBody868_6

def sourceBody868_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 28)

def sourceBody868_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 46,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody868_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 46,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody868_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody868_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 26)) (some 346) ([28, 54]) (some (28, sourceBody868_192, 868, 27))

def sourceBody868_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_193 sourceBody868_6

def sourceBody868_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_194 sourceBody868_0

def sourceBody868_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_191 sourceBody868_195

def sourceBody868_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_190 sourceBody868_196

def sourceBody868_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody868_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody868_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody868_201 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 28)) (some 863) ([54, 6]) (some (54, sourceBody868_200, 868, 29))

def sourceBody868_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_201 sourceBody868_6

def sourceBody868_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_202 sourceBody868_0

def sourceBody868_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_199 sourceBody868_203

def sourceBody868_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_198 sourceBody868_204

def sourceBody868_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_205

def sourceBody868_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_206

def sourceBody868_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody868_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody868_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_209 sourceBody868_0

def sourceBody868_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_210 sourceBody868_0

def sourceBody868_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_208 sourceBody868_211

def sourceBody868_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_212

def sourceBody868_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_207 sourceBody868_213

def sourceBody868_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_197 sourceBody868_214

def sourceBody868_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_215

def sourceBody868_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_216

def sourceBody868_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody868_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_217 sourceBody868_218

def sourceBody868_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody868_221 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody868_219 sourceBody868_220

def sourceBody868_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_221 sourceBody868_6

def sourceBody868_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_222 sourceBody868_0

def sourceBody868_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_189 sourceBody868_223

def sourceBody868_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_188 sourceBody868_224

def sourceBody868_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_184 sourceBody868_225

def sourceBody868_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_146 sourceBody868_226

def sourceBody868_228 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody868_227 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody868_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_228 sourceBody868_6

def sourceBody868_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_6 sourceBody868_229

def sourceBody868_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 224#64])

def sourceBody868_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody868_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 28)

def sourceBody868_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 54

def sourceBody868_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_234 sourceBody868_0

def sourceBody868_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_233 sourceBody868_235

def sourceBody868_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_236 sourceBody868_0

def sourceBody868_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_232 sourceBody868_237

def sourceBody868_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_238

def sourceBody868_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_231 sourceBody868_239

def sourceBody868_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_240

def sourceBody868_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_230 sourceBody868_241

def sourceBody868_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 42)

def sourceBody868_244 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 30)) (some 865) ([28]) (some (28, sourceBody868_192, 868, 31))

def sourceBody868_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_244 sourceBody868_6

def sourceBody868_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_245 sourceBody868_0

def sourceBody868_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_243 sourceBody868_246

def sourceBody868_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_247

def sourceBody868_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_248

def sourceBody868_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_242 sourceBody868_249

def sourceBody868_251 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 32)) (some 867) ([]) (some (28, sourceBody868_192, 868, 33))

def sourceBody868_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_251 sourceBody868_6

def sourceBody868_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_252 sourceBody868_0

def sourceBody868_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_253

def sourceBody868_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_254

def sourceBody868_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_250 sourceBody868_255

def sourceBody868_257 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 34)) (some 460) ([]) (some (54, sourceBody868_200, 868, 35))

def sourceBody868_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_257 sourceBody868_6

def sourceBody868_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_258 sourceBody868_0

def sourceBody868_260 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 408#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody868_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody868_262 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 36)) (some 461) ([6]) (some (6, sourceBody868_261, 868, 37))

def sourceBody868_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_262 sourceBody868_6

def sourceBody868_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_263 sourceBody868_0

def sourceBody868_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_260 sourceBody868_264

def sourceBody868_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_265

def sourceBody868_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_266

def sourceBody868_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 38)) (some 68) ([6]) (some (6, sourceBody868_261, 868, 39))

def sourceBody868_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_269 sourceBody868_6

def sourceBody868_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_270 sourceBody868_0

def sourceBody868_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_268 sourceBody868_271

def sourceBody868_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def sourceBody868_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody868_275 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 40)) (some 850) ([30]) (some (30, sourceBody868_274, 868, 41))

def sourceBody868_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_275 sourceBody868_6

def sourceBody868_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_276 sourceBody868_0

def sourceBody868_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_273 sourceBody868_277

def sourceBody868_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_278

def sourceBody868_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_279

def sourceBody868_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_282 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 42)) (some 68) ([30]) (some (30, sourceBody868_274, 868, 43))

def sourceBody868_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_282 sourceBody868_6

def sourceBody868_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_283 sourceBody868_0

def sourceBody868_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_281 sourceBody868_284

def sourceBody868_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def sourceBody868_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def sourceBody868_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody868_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody868_290 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 44)) (some 332) ([18, 44, 14]) (some (18, sourceBody868_289, 868, 45))

def sourceBody868_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_290 sourceBody868_6

def sourceBody868_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_291 sourceBody868_0

def sourceBody868_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_288 sourceBody868_292

def sourceBody868_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_287 sourceBody868_293

def sourceBody868_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_286 sourceBody868_294

def sourceBody868_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_295

def sourceBody868_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_296

def sourceBody868_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_299 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 46)) (some 68) ([18]) (some (18, sourceBody868_289, 868, 47))

def sourceBody868_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_299 sourceBody868_6

def sourceBody868_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_300 sourceBody868_0

def sourceBody868_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_298 sourceBody868_301

def sourceBody868_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 24)

def sourceBody868_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody868_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody868_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody868_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 48)) (some 332) ([44, 14, 38]) (some (44, sourceBody868_306, 868, 49))

def sourceBody868_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_307 sourceBody868_6

def sourceBody868_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_308 sourceBody868_0

def sourceBody868_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_305 sourceBody868_309

def sourceBody868_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_304 sourceBody868_310

def sourceBody868_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_303 sourceBody868_311

def sourceBody868_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_312

def sourceBody868_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_313

def sourceBody868_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody868_316 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 50)) (some 68) ([44]) (some (44, sourceBody868_306, 868, 51))

def sourceBody868_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_316 sourceBody868_6

def sourceBody868_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_317 sourceBody868_0

def sourceBody868_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_315 sourceBody868_318

def sourceBody868_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody868_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody868_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody868_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 52)) (some 839) ([14, 38]) (some (14, sourceBody868_322, 868, 53))

def sourceBody868_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_323 sourceBody868_6

def sourceBody868_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_324 sourceBody868_0

def sourceBody868_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_321 sourceBody868_325

def sourceBody868_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_320 sourceBody868_326

def sourceBody868_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_327

def sourceBody868_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_328

def sourceBody868_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_331 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 54)) (some 68) ([14]) (some (14, sourceBody868_322, 868, 55))

def sourceBody868_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_331 sourceBody868_6

def sourceBody868_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_332 sourceBody868_0

def sourceBody868_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_330 sourceBody868_333

def sourceBody868_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 528#64]))

def sourceBody868_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody868_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 44)

def sourceBody868_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody868_339 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 56)) (some 332) ([38, 26, 52]) (some (38, sourceBody868_338, 868, 57))

def sourceBody868_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_339 sourceBody868_6

def sourceBody868_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_340 sourceBody868_0

def sourceBody868_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_337 sourceBody868_341

def sourceBody868_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_336 sourceBody868_342

def sourceBody868_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_335 sourceBody868_343

def sourceBody868_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_344

def sourceBody868_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_345

def sourceBody868_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_348 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 58)) (some 68) ([38]) (some (38, sourceBody868_338, 868, 59))

def sourceBody868_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_348 sourceBody868_6

def sourceBody868_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_349 sourceBody868_0

def sourceBody868_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_347 sourceBody868_350

def sourceBody868_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody868_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody868_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody868_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody868_356 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 60)) (some 847) ([26, 52, 10]) (some (26, sourceBody868_355, 868, 61))

def sourceBody868_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_356 sourceBody868_6

def sourceBody868_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_357 sourceBody868_0

def sourceBody868_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_354 sourceBody868_358

def sourceBody868_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_353 sourceBody868_359

def sourceBody868_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_352 sourceBody868_360

def sourceBody868_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_361

def sourceBody868_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_362

def sourceBody868_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_365 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 62)) (some 68) ([26]) (some (26, sourceBody868_355, 868, 63))

def sourceBody868_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_365 sourceBody868_6

def sourceBody868_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_366 sourceBody868_0

def sourceBody868_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_364 sourceBody868_367

def sourceBody868_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 40)

def sourceBody868_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody868_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody868_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody868_373 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 64)) (some 158) ([52, 10, 34]) (some (52, sourceBody868_372, 868, 65))

def sourceBody868_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_373 sourceBody868_6

def sourceBody868_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_374 sourceBody868_0

def sourceBody868_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_371 sourceBody868_375

def sourceBody868_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_370 sourceBody868_376

def sourceBody868_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_369 sourceBody868_377

def sourceBody868_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_378

def sourceBody868_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_379

def sourceBody868_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody868_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody868_383 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 66)) (some 93) ([52, 10]) (some (52, sourceBody868_372, 868, 67))

def sourceBody868_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_383 sourceBody868_6

def sourceBody868_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_384 sourceBody868_0

def sourceBody868_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_382 sourceBody868_385

def sourceBody868_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_381 sourceBody868_386

def sourceBody868_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 26)

def sourceBody868_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody868_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody868_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody868_392 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 34) sourceBody868_390 sourceBody868_391

def sourceBody868_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_392 sourceBody868_6

def sourceBody868_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody868_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 110#64)

def sourceBody868_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 52)

def sourceBody868_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_396 sourceBody868_0

def sourceBody868_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_397 sourceBody868_0

def sourceBody868_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_395 sourceBody868_398

def sourceBody868_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_399

def sourceBody868_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody868_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_401 sourceBody868_372

def sourceBody868_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_400 sourceBody868_402

def sourceBody868_404 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody868_403 sourceBody868_0

def sourceBody868_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_404 sourceBody868_6

def sourceBody868_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_405 sourceBody868_0

def sourceBody868_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_394 sourceBody868_406

def sourceBody868_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_393 sourceBody868_407

def sourceBody868_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_389 sourceBody868_408

def sourceBody868_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_388 sourceBody868_409

def sourceBody868_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody868_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody868_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody868_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody868_415 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 68)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 69))

def sourceBody868_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_415 sourceBody868_6

def sourceBody868_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_416 sourceBody868_0

def sourceBody868_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_413 sourceBody868_417

def sourceBody868_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_412 sourceBody868_418

def sourceBody868_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_411 sourceBody868_419

def sourceBody868_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 52)

def sourceBody868_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody868_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody868_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody868_425 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) sourceBody868_423 sourceBody868_424

def sourceBody868_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_425 sourceBody868_6

def sourceBody868_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 34)

def sourceBody868_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 111#64)

def sourceBody868_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody868_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_429 sourceBody868_0

def sourceBody868_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_430 sourceBody868_0

def sourceBody868_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_428 sourceBody868_431

def sourceBody868_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_432

def sourceBody868_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody868_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_434 sourceBody868_414

def sourceBody868_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_433 sourceBody868_435

def sourceBody868_437 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_436 sourceBody868_0

def sourceBody868_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_437 sourceBody868_6

def sourceBody868_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_438 sourceBody868_0

def sourceBody868_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_439

def sourceBody868_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_440

def sourceBody868_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_441

def sourceBody868_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_442

def sourceBody868_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 54)

def sourceBody868_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody868_446 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 70)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 71))

def sourceBody868_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_446 sourceBody868_6

def sourceBody868_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_447 sourceBody868_0

def sourceBody868_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_413 sourceBody868_448

def sourceBody868_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_445 sourceBody868_449

def sourceBody868_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_444 sourceBody868_450

def sourceBody868_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_443 sourceBody868_451

def sourceBody868_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 112#64)

def sourceBody868_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_453 sourceBody868_431

def sourceBody868_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_454

def sourceBody868_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_455 sourceBody868_435

def sourceBody868_457 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_456 sourceBody868_0

def sourceBody868_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_457 sourceBody868_6

def sourceBody868_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_458 sourceBody868_0

def sourceBody868_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_459

def sourceBody868_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_460

def sourceBody868_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_461

def sourceBody868_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_462

def sourceBody868_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_452 sourceBody868_463

def sourceBody868_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 30)

def sourceBody868_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody868_467 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 72)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 73))

def sourceBody868_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_467 sourceBody868_6

def sourceBody868_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_468 sourceBody868_0

def sourceBody868_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_413 sourceBody868_469

def sourceBody868_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_466 sourceBody868_470

def sourceBody868_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_465 sourceBody868_471

def sourceBody868_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_464 sourceBody868_472

def sourceBody868_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 113#64)

def sourceBody868_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_474 sourceBody868_431

def sourceBody868_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_475

def sourceBody868_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_476 sourceBody868_435

def sourceBody868_478 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_477 sourceBody868_0

def sourceBody868_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_478 sourceBody868_6

def sourceBody868_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_479 sourceBody868_0

def sourceBody868_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_480

def sourceBody868_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_481

def sourceBody868_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_482

def sourceBody868_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_483

def sourceBody868_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_473 sourceBody868_484

def sourceBody868_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody868_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody868_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody868_489 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 74)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 75))

def sourceBody868_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_489 sourceBody868_6

def sourceBody868_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_490 sourceBody868_0

def sourceBody868_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_488 sourceBody868_491

def sourceBody868_493 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_487 sourceBody868_492

def sourceBody868_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_486 sourceBody868_493

def sourceBody868_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_485 sourceBody868_494

def sourceBody868_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 114#64)

def sourceBody868_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_496 sourceBody868_431

def sourceBody868_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_497

def sourceBody868_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_498 sourceBody868_435

def sourceBody868_500 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_499 sourceBody868_0

def sourceBody868_501 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_500 sourceBody868_6

def sourceBody868_502 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_501 sourceBody868_0

def sourceBody868_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_502

def sourceBody868_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_503

def sourceBody868_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_504

def sourceBody868_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_505

def sourceBody868_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_495 sourceBody868_506

def sourceBody868_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 44)

def sourceBody868_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64]))

def sourceBody868_510 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 76)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 77))

def sourceBody868_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_510 sourceBody868_6

def sourceBody868_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_511 sourceBody868_0

def sourceBody868_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_413 sourceBody868_512

def sourceBody868_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_509 sourceBody868_513

def sourceBody868_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_508 sourceBody868_514

def sourceBody868_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_507 sourceBody868_515

def sourceBody868_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 115#64)

def sourceBody868_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_517 sourceBody868_431

def sourceBody868_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_518

def sourceBody868_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_519 sourceBody868_435

def sourceBody868_521 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_520 sourceBody868_0

def sourceBody868_522 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_521 sourceBody868_6

def sourceBody868_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_522 sourceBody868_0

def sourceBody868_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_523

def sourceBody868_525 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_524

def sourceBody868_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_525

def sourceBody868_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_526

def sourceBody868_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_516 sourceBody868_527

def sourceBody868_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody868_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 200#64]))

def sourceBody868_531 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 22) sourceBody868_423 sourceBody868_424

def sourceBody868_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_531 sourceBody868_6

def sourceBody868_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 116#64)

def sourceBody868_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_533 sourceBody868_431

def sourceBody868_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_534

def sourceBody868_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_535 sourceBody868_435

def sourceBody868_537 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_536 sourceBody868_0

def sourceBody868_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_537 sourceBody868_6

def sourceBody868_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_538 sourceBody868_0

def sourceBody868_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_539

def sourceBody868_541 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_532 sourceBody868_540

def sourceBody868_542 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_530 sourceBody868_541

def sourceBody868_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_529 sourceBody868_542

def sourceBody868_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_528 sourceBody868_543

def sourceBody868_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody868_546 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody868_0, 868, 78)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 79))

def sourceBody868_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_546 sourceBody868_6

def sourceBody868_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_547 sourceBody868_0

def sourceBody868_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_413 sourceBody868_548

def sourceBody868_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_545 sourceBody868_549

def sourceBody868_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_354 sourceBody868_550

def sourceBody868_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_544 sourceBody868_551

def sourceBody868_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 117#64)

def sourceBody868_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_553 sourceBody868_431

def sourceBody868_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_554

def sourceBody868_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_555 sourceBody868_435

def sourceBody868_557 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_556 sourceBody868_0

def sourceBody868_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_557 sourceBody868_6

def sourceBody868_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_558 sourceBody868_0

def sourceBody868_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_559

def sourceBody868_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_560

def sourceBody868_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_561

def sourceBody868_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_562

def sourceBody868_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_552 sourceBody868_563

def sourceBody868_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 38)

def sourceBody868_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 232#64]))

def sourceBody868_567 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody868_0, 868, 80)) (some 79) ([10, 34, 22]) (some (10, sourceBody868_414, 868, 81))

def sourceBody868_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_567 sourceBody868_6

def sourceBody868_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_568 sourceBody868_0

def sourceBody868_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_413 sourceBody868_569

def sourceBody868_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_566 sourceBody868_570

def sourceBody868_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_565 sourceBody868_571

def sourceBody868_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_564 sourceBody868_572

def sourceBody868_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 118#64)

def sourceBody868_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_574 sourceBody868_431

def sourceBody868_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_575

def sourceBody868_577 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_576 sourceBody868_435

def sourceBody868_578 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) sourceBody868_577 sourceBody868_0

def sourceBody868_579 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_578 sourceBody868_6

def sourceBody868_580 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_579 sourceBody868_0

def sourceBody868_581 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_427 sourceBody868_580

def sourceBody868_582 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_426 sourceBody868_581

def sourceBody868_583 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_422 sourceBody868_582

def sourceBody868_584 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_421 sourceBody868_583

def sourceBody868_585 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_573 sourceBody868_584

def sourceBody868_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody868_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_586 sourceBody868_0

def sourceBody868_588 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_391 sourceBody868_587

def sourceBody868_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_585 sourceBody868_588

def sourceBody868_590 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_420 sourceBody868_589

def sourceBody868_591 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_590

def sourceBody868_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_591

def sourceBody868_593 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_410 sourceBody868_592

def sourceBody868_594 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_387 sourceBody868_593

def sourceBody868_595 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_594

def sourceBody868_596 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_595

def sourceBody868_597 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_380 sourceBody868_596

def sourceBody868_598 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_368 sourceBody868_597

def sourceBody868_599 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_598

def sourceBody868_600 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_599

def sourceBody868_601 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_363 sourceBody868_600

def sourceBody868_602 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_351 sourceBody868_601

def sourceBody868_603 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_602

def sourceBody868_604 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_603

def sourceBody868_605 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_346 sourceBody868_604

def sourceBody868_606 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_334 sourceBody868_605

def sourceBody868_607 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_606

def sourceBody868_608 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_607

def sourceBody868_609 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_329 sourceBody868_608

def sourceBody868_610 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_319 sourceBody868_609

def sourceBody868_611 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_610

def sourceBody868_612 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_611

def sourceBody868_613 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_314 sourceBody868_612

def sourceBody868_614 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_302 sourceBody868_613

def sourceBody868_615 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_614

def sourceBody868_616 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_615

def sourceBody868_617 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_297 sourceBody868_616

def sourceBody868_618 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_285 sourceBody868_617

def sourceBody868_619 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_618

def sourceBody868_620 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_619

def sourceBody868_621 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_280 sourceBody868_620

def sourceBody868_622 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_272 sourceBody868_621

def sourceBody868_623 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_622

def sourceBody868_624 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_623

def sourceBody868_625 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_267 sourceBody868_624

def sourceBody868_626 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_259 sourceBody868_625

def sourceBody868_627 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_626

def sourceBody868_628 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_627

def sourceBody868_629 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_628

def sourceBody868_630 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_629

def sourceBody868_631 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_256 sourceBody868_630

def sourceBody868_632 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_141 sourceBody868_631

def sourceBody868_633 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_632

def sourceBody868_634 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_183 sourceBody868_633

def sourceBody868_635 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_634

def sourceBody868_636 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_182 sourceBody868_635

def sourceBody868_637 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_140 sourceBody868_636

def sourceBody868_638 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_637

def sourceBody868_639 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_139 sourceBody868_638

def sourceBody868_640 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_102 sourceBody868_639

def sourceBody868_641 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_640

def sourceBody868_642 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_641

def sourceBody868_643 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_94 sourceBody868_642

def sourceBody868_644 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_83 sourceBody868_643

def sourceBody868_645 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_644

def sourceBody868_646 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_645

def sourceBody868_647 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_77 sourceBody868_646

def sourceBody868_648 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_66 sourceBody868_647

def sourceBody868_649 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_648

def sourceBody868_650 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_649

def sourceBody868_651 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_58 sourceBody868_650

def sourceBody868_652 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_47 sourceBody868_651

def sourceBody868_653 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_652

def sourceBody868_654 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_653

def sourceBody868_655 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_41 sourceBody868_654

def sourceBody868_656 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_38 sourceBody868_655

def sourceBody868_657 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_656

def sourceBody868_658 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_657

def sourceBody868_659 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_33 sourceBody868_658

def sourceBody868_660 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_2 sourceBody868_659

def sourceBody868_661 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_660

def sourceBody868_662 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_1 sourceBody868_661

def sourceBody868_663 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody868_0 sourceBody868_662

def source868 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (868, 3, sourceBody868_663)
end InitECandidate.Proofs.WordStages
