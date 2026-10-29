import InitECandidate.Proofs.WordStages.Source758
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody774_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody774_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 14)

def sourceBody774_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody774_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 18)

def sourceBody774_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 20)

def sourceBody774_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 22)

def sourceBody774_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody774_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody774_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 52, 82, 28, 58, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody774_0, 774, 2)) (some 715) ([74, 36, 66, 50, 80, 32]) (some (74, sourceBody774_7, 774, 3))

def sourceBody774_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody774_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_8 sourceBody774_9

def sourceBody774_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_10 sourceBody774_0

def sourceBody774_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_6 sourceBody774_11

def sourceBody774_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_5 sourceBody774_12

def sourceBody774_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_4 sourceBody774_13

def sourceBody774_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_3 sourceBody774_14

def sourceBody774_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_2 sourceBody774_15

def sourceBody774_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_1 sourceBody774_16

def sourceBody774_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 2)

def sourceBody774_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 4)

def sourceBody774_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 6)

def sourceBody774_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody774_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 10)

def sourceBody774_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody774_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody774_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 36, 66, 50, 80, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody774_0, 774, 4)) (some 715) ([62, 46, 76, 38, 70, 54]) (some (62, sourceBody774_24, 774, 5))

def sourceBody774_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_25 sourceBody774_9

def sourceBody774_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_26 sourceBody774_0

def sourceBody774_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_23 sourceBody774_27

def sourceBody774_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_22 sourceBody774_28

def sourceBody774_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_21 sourceBody774_29

def sourceBody774_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_20 sourceBody774_30

def sourceBody774_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_19 sourceBody774_31

def sourceBody774_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_18 sourceBody774_32

def sourceBody774_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 74)

def sourceBody774_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 36)

def sourceBody774_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 66)

def sourceBody774_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 50)

def sourceBody774_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 80)

def sourceBody774_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 32)

def sourceBody774_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 2)

def sourceBody774_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody774_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 6)

def sourceBody774_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def sourceBody774_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 10)

def sourceBody774_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody774_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 36, 66, 50, 80, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody774_0, 774, 6)) (some 714) ([62, 46, 76, 38, 70, 54, 84, 26, 56, 40, 72, 34]) (some (62, sourceBody774_24, 774, 7))

def sourceBody774_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_46 sourceBody774_9

def sourceBody774_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_47 sourceBody774_0

def sourceBody774_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_45 sourceBody774_48

def sourceBody774_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_44 sourceBody774_49

def sourceBody774_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_43 sourceBody774_50

def sourceBody774_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_42 sourceBody774_51

def sourceBody774_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_41 sourceBody774_52

def sourceBody774_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_40 sourceBody774_53

def sourceBody774_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_39 sourceBody774_54

def sourceBody774_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_38 sourceBody774_55

def sourceBody774_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_37 sourceBody774_56

def sourceBody774_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_36 sourceBody774_57

def sourceBody774_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_35 sourceBody774_58

def sourceBody774_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_34 sourceBody774_59

def sourceBody774_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 240#64]))

def sourceBody774_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
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
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 240#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody774_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
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
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 240#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody774_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
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
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 240#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody774_65 : WordLangProgHOL (BitVec 64) :=
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
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 240#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody774_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
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
                  Flapjack.WordLangExpHOL.const 392#64]),
            Flapjack.WordLangExpHOL.const 240#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody774_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 74)

def sourceBody774_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def sourceBody774_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 66)

def sourceBody774_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 50)

def sourceBody774_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 80)

def sourceBody774_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody774_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 62)

def sourceBody774_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 46)

def sourceBody774_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 76)

def sourceBody774_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 38)

def sourceBody774_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 70)

def sourceBody774_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 54)

def sourceBody774_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def sourceBody774_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 36, 66, 50, 80, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody774_0, 774, 8)) (some 710) ([84, 26, 56, 40, 72, 34, 64, 48, 78, 30, 60, 44]) (some (84, sourceBody774_79, 774, 9))

def sourceBody774_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_80 sourceBody774_9

def sourceBody774_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_81 sourceBody774_0

def sourceBody774_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_78 sourceBody774_82

def sourceBody774_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_77 sourceBody774_83

def sourceBody774_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_76 sourceBody774_84

def sourceBody774_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_75 sourceBody774_85

def sourceBody774_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_74 sourceBody774_86

def sourceBody774_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_73 sourceBody774_87

def sourceBody774_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_72 sourceBody774_88

def sourceBody774_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_71 sourceBody774_89

def sourceBody774_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_70 sourceBody774_90

def sourceBody774_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_69 sourceBody774_91

def sourceBody774_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_68 sourceBody774_92

def sourceBody774_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_67 sourceBody774_93

def sourceBody774_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 68)

def sourceBody774_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 52)

def sourceBody774_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 82)

def sourceBody774_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody774_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 58)

def sourceBody774_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 42)

def sourceBody774_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 74)

def sourceBody774_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 36)

def sourceBody774_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 66)

def sourceBody774_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 50)

def sourceBody774_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 80)

def sourceBody774_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 32)

def sourceBody774_107 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 706) ([0, 84, 26, 56, 40, 72, 34, 64, 48, 78, 30, 60, 44]) (none)

def sourceBody774_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_107 sourceBody774_0

def sourceBody774_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_106 sourceBody774_108

def sourceBody774_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_105 sourceBody774_109

def sourceBody774_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_104 sourceBody774_110

def sourceBody774_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_103 sourceBody774_111

def sourceBody774_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_102 sourceBody774_112

def sourceBody774_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_101 sourceBody774_113

def sourceBody774_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_100 sourceBody774_114

def sourceBody774_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_99 sourceBody774_115

def sourceBody774_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_98 sourceBody774_116

def sourceBody774_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_97 sourceBody774_117

def sourceBody774_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_96 sourceBody774_118

def sourceBody774_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_95 sourceBody774_119

def sourceBody774_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_94 sourceBody774_120

def sourceBody774_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_66 sourceBody774_121

def sourceBody774_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_122

def sourceBody774_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_65 sourceBody774_123

def sourceBody774_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_124

def sourceBody774_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_64 sourceBody774_125

def sourceBody774_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_126

def sourceBody774_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_63 sourceBody774_127

def sourceBody774_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_128

def sourceBody774_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_62 sourceBody774_129

def sourceBody774_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_130

def sourceBody774_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_61 sourceBody774_131

def sourceBody774_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_132

def sourceBody774_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_60 sourceBody774_133

def sourceBody774_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_33 sourceBody774_134

def sourceBody774_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_135

def sourceBody774_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_136

def sourceBody774_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_137

def sourceBody774_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_138

def sourceBody774_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_139

def sourceBody774_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_140

def sourceBody774_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_141

def sourceBody774_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_142

def sourceBody774_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_143

def sourceBody774_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_144

def sourceBody774_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_145

def sourceBody774_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_146

def sourceBody774_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_17 sourceBody774_147

def sourceBody774_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_148

def sourceBody774_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_149

def sourceBody774_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_150

def sourceBody774_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_151

def sourceBody774_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_152

def sourceBody774_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_153

def sourceBody774_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_154

def sourceBody774_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_155

def sourceBody774_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_156

def sourceBody774_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_157

def sourceBody774_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_158

def sourceBody774_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody774_0 sourceBody774_159

def source774 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (774, 13, sourceBody774_160)
end InitECandidate.Proofs.WordStages
