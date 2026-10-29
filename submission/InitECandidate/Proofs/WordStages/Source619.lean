import InitECandidate.Proofs.WordStages.Source603
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody619_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody619_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody619_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 48)

def sourceBody619_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody619_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody619_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody619_0, 619, 2)) (some 613) ([60, 82]) (some (60, sourceBody619_4, 619, 3))

def sourceBody619_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody619_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_5 sourceBody619_6

def sourceBody619_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_7 sourceBody619_0

def sourceBody619_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_3 sourceBody619_8

def sourceBody619_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_2 sourceBody619_9

def sourceBody619_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_10

def sourceBody619_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_11

def sourceBody619_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
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
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody619_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody619_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.const 128#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody619_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody619_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 82 (Flapjack.WordRegImm.reg 44) sourceBody619_16 sourceBody619_3

def sourceBody619_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_17 sourceBody619_6

def sourceBody619_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 82)

def sourceBody619_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody619_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
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
      Flapjack.WordLangExpHOL.var 2])

def sourceBody619_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 82)

def sourceBody619_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 60) 44

def sourceBody619_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_23 sourceBody619_0

def sourceBody619_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_22 sourceBody619_24

def sourceBody619_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_25 sourceBody619_0

def sourceBody619_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_21 sourceBody619_26

def sourceBody619_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_27

def sourceBody619_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_20 sourceBody619_28

def sourceBody619_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_29

def sourceBody619_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def sourceBody619_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
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
            Flapjack.WordLangExpHOL.const 72#64]),
      Flapjack.WordLangExpHOL.var 4])

def sourceBody619_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_32 sourceBody619_26

def sourceBody619_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_33

def sourceBody619_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_31 sourceBody619_34

def sourceBody619_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_35

def sourceBody619_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_30 sourceBody619_36

def sourceBody619_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 38)

def sourceBody619_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody619_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 82 (Flapjack.WordRegImm.reg 44) sourceBody619_16 sourceBody619_3

def sourceBody619_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_40 sourceBody619_6

def sourceBody619_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody619_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 82

def sourceBody619_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody619_0, 619, 4)) (some 472) ([82]) (some (82, sourceBody619_43, 619, 5))

def sourceBody619_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_44 sourceBody619_6

def sourceBody619_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_45 sourceBody619_0

def sourceBody619_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_42 sourceBody619_46

def sourceBody619_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_47

def sourceBody619_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_48

def sourceBody619_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody619_49 sourceBody619_0

def sourceBody619_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_50 sourceBody619_6

def sourceBody619_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_51 sourceBody619_0

def sourceBody619_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_19 sourceBody619_52

def sourceBody619_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_41 sourceBody619_53

def sourceBody619_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_39 sourceBody619_54

def sourceBody619_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_38 sourceBody619_55

def sourceBody619_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_37 sourceBody619_56

def sourceBody619_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody619_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody619_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody619_0, 619, 6)) (some 476) ([82, 44, 68, 56]) (some (82, sourceBody619_43, 619, 7))

def sourceBody619_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_60 sourceBody619_6

def sourceBody619_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_61 sourceBody619_0

def sourceBody619_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_59 sourceBody619_62

def sourceBody619_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_58 sourceBody619_63

def sourceBody619_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_39 sourceBody619_64

def sourceBody619_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_3 sourceBody619_65

def sourceBody619_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_66

def sourceBody619_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_67

def sourceBody619_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_57 sourceBody619_68

def sourceBody619_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody619_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [60]

def sourceBody619_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_71 sourceBody619_0

def sourceBody619_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_70 sourceBody619_72

def sourceBody619_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_69 sourceBody619_73

def sourceBody619_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody619_74 sourceBody619_0

def sourceBody619_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_75 sourceBody619_6

def sourceBody619_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_76 sourceBody619_0

def sourceBody619_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_19 sourceBody619_77

def sourceBody619_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_18 sourceBody619_78

def sourceBody619_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_15 sourceBody619_79

def sourceBody619_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_14 sourceBody619_80

def sourceBody619_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
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
      Flapjack.WordLangExpHOL.var 24])

def sourceBody619_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody619_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody619_0, 619, 8)) (some 75) ([]) (some (44, sourceBody619_83, 619, 9))

def sourceBody619_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_84 sourceBody619_6

def sourceBody619_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_85 sourceBody619_0

def sourceBody619_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody619_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody619_0, 619, 10)) (some 72) ([]) (some (68, sourceBody619_87, 619, 11))

def sourceBody619_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_88 sourceBody619_6

def sourceBody619_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_89 sourceBody619_0

def sourceBody619_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 14)

def sourceBody619_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 16)

def sourceBody619_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def sourceBody619_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 2)

def sourceBody619_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 4)

def sourceBody619_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 6)

def sourceBody619_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def sourceBody619_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 10)

def sourceBody619_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 12)

def sourceBody619_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 60)

def sourceBody619_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 26)

def sourceBody619_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 18)

def sourceBody619_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 32)

def sourceBody619_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 34)

def sourceBody619_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 20)

def sourceBody619_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 22)

def sourceBody619_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 36)

def sourceBody619_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody619_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody619_0, 619, 12)) (some 612) ([56, 78, 50, 74, 62, 84, 40, 64, 52, 76, 46, 70, 58, 80, 42, 66, 54]) (some (56, sourceBody619_108, 619, 13))

def sourceBody619_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_109 sourceBody619_6

def sourceBody619_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_110 sourceBody619_0

def sourceBody619_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_107 sourceBody619_111

def sourceBody619_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_106 sourceBody619_112

def sourceBody619_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_105 sourceBody619_113

def sourceBody619_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_104 sourceBody619_114

def sourceBody619_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_103 sourceBody619_115

def sourceBody619_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_102 sourceBody619_116

def sourceBody619_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_101 sourceBody619_117

def sourceBody619_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_100 sourceBody619_118

def sourceBody619_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_99 sourceBody619_119

def sourceBody619_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_98 sourceBody619_120

def sourceBody619_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_97 sourceBody619_121

def sourceBody619_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_96 sourceBody619_122

def sourceBody619_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_95 sourceBody619_123

def sourceBody619_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_94 sourceBody619_124

def sourceBody619_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_93 sourceBody619_125

def sourceBody619_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_92 sourceBody619_126

def sourceBody619_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_91 sourceBody619_127

def sourceBody619_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 68)

def sourceBody619_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody619_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 82)

def sourceBody619_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 44)

def sourceBody619_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 38)

def sourceBody619_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody619_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 30)

def sourceBody619_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody619_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def sourceBody619_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody619_0, 619, 14)) (some 603) ([78, 50, 74, 62, 84, 40, 64, 52]) (some (78, sourceBody619_137, 619, 15))

def sourceBody619_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_138 sourceBody619_6

def sourceBody619_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_139 sourceBody619_0

def sourceBody619_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_136 sourceBody619_140

def sourceBody619_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_135 sourceBody619_141

def sourceBody619_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_134 sourceBody619_142

def sourceBody619_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_133 sourceBody619_143

def sourceBody619_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_132 sourceBody619_144

def sourceBody619_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_131 sourceBody619_145

def sourceBody619_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_130 sourceBody619_146

def sourceBody619_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_129 sourceBody619_147

def sourceBody619_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_148

def sourceBody619_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_149

def sourceBody619_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody619_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [56]

def sourceBody619_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_152 sourceBody619_0

def sourceBody619_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_151 sourceBody619_153

def sourceBody619_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_150 sourceBody619_154

def sourceBody619_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_128 sourceBody619_155

def sourceBody619_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_156

def sourceBody619_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_157

def sourceBody619_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_90 sourceBody619_158

def sourceBody619_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_159

def sourceBody619_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_160

def sourceBody619_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_86 sourceBody619_161

def sourceBody619_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_162

def sourceBody619_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_163

def sourceBody619_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_82 sourceBody619_164

def sourceBody619_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_165

def sourceBody619_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_81 sourceBody619_166

def sourceBody619_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_13 sourceBody619_167

def sourceBody619_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_168

def sourceBody619_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_12 sourceBody619_169

def sourceBody619_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_1 sourceBody619_170

def sourceBody619_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody619_0 sourceBody619_171

def source619 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (619, 20, sourceBody619_172)
end InitECandidate.Proofs.WordStages
