import InitECandidate.Proofs.WordStages.Source787
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody803_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody803_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody803_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 2)) (some 69) ([]) (some (8, sourceBody803_1, 803, 3))

def sourceBody803_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody803_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_2 sourceBody803_3

def sourceBody803_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_4 sourceBody803_0

def sourceBody803_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 288#64)

def sourceBody803_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody803_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 4)) (some 68) ([20]) (some (20, sourceBody803_7, 803, 5))

def sourceBody803_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_8 sourceBody803_3

def sourceBody803_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_9 sourceBody803_0

def sourceBody803_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_6 sourceBody803_10

def sourceBody803_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody803_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody803_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 6)) (some 68) ([14]) (some (14, sourceBody803_13, 803, 7))

def sourceBody803_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_14 sourceBody803_3

def sourceBody803_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_15 sourceBody803_0

def sourceBody803_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_12 sourceBody803_16

def sourceBody803_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody803_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody803_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody803_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody803_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody803_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody803_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 8)) (some 729) ([12, 26]) (some (12, sourceBody803_23, 803, 9))

def sourceBody803_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_24 sourceBody803_3

def sourceBody803_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_25 sourceBody803_0

def sourceBody803_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_22 sourceBody803_26

def sourceBody803_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_21 sourceBody803_27

def sourceBody803_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_28

def sourceBody803_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_29

def sourceBody803_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody803_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 10)) (some 740) ([12, 26]) (some (12, sourceBody803_23, 803, 11))

def sourceBody803_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_32 sourceBody803_3

def sourceBody803_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_33 sourceBody803_0

def sourceBody803_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_22 sourceBody803_34

def sourceBody803_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_31 sourceBody803_35

def sourceBody803_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_36

def sourceBody803_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_37

def sourceBody803_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_30 sourceBody803_38

def sourceBody803_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody803_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody803_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody803_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 12)) (some 739) ([12, 26, 10]) (some (12, sourceBody803_23, 803, 13))

def sourceBody803_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_43 sourceBody803_3

def sourceBody803_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_44 sourceBody803_0

def sourceBody803_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_42 sourceBody803_45

def sourceBody803_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_41 sourceBody803_46

def sourceBody803_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_40 sourceBody803_47

def sourceBody803_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_48

def sourceBody803_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_49

def sourceBody803_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_39 sourceBody803_50

def sourceBody803_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody803_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 5600#64])

def sourceBody803_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody803_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody803_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody803_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 14)) (some 802) ([12, 26, 10, 22, 16]) (some (12, sourceBody803_23, 803, 15))

def sourceBody803_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_57 sourceBody803_3

def sourceBody803_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_58 sourceBody803_0

def sourceBody803_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_56 sourceBody803_59

def sourceBody803_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_55 sourceBody803_60

def sourceBody803_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_54 sourceBody803_61

def sourceBody803_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_53 sourceBody803_62

def sourceBody803_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_52 sourceBody803_63

def sourceBody803_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_64

def sourceBody803_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_65

def sourceBody803_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_51 sourceBody803_66

def sourceBody803_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody803_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 5984#64])

def sourceBody803_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 16)) (some 802) ([12, 26, 10, 22, 16]) (some (12, sourceBody803_23, 803, 17))

def sourceBody803_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_70 sourceBody803_3

def sourceBody803_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_71 sourceBody803_0

def sourceBody803_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_56 sourceBody803_72

def sourceBody803_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_55 sourceBody803_73

def sourceBody803_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_54 sourceBody803_74

def sourceBody803_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_69 sourceBody803_75

def sourceBody803_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_68 sourceBody803_76

def sourceBody803_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_77

def sourceBody803_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_78

def sourceBody803_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_67 sourceBody803_79

def sourceBody803_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody803_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 6368#64])

def sourceBody803_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 18)) (some 802) ([12, 26, 10, 22, 16]) (some (12, sourceBody803_23, 803, 19))

def sourceBody803_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_83 sourceBody803_3

def sourceBody803_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_84 sourceBody803_0

def sourceBody803_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_56 sourceBody803_85

def sourceBody803_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_55 sourceBody803_86

def sourceBody803_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_54 sourceBody803_87

def sourceBody803_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_82 sourceBody803_88

def sourceBody803_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_81 sourceBody803_89

def sourceBody803_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_90

def sourceBody803_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_91

def sourceBody803_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_80 sourceBody803_92

def sourceBody803_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody803_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 6752#64])

def sourceBody803_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 20)) (some 802) ([12, 26, 10, 22, 16]) (some (12, sourceBody803_23, 803, 21))

def sourceBody803_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_96 sourceBody803_3

def sourceBody803_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_97 sourceBody803_0

def sourceBody803_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_56 sourceBody803_98

def sourceBody803_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_55 sourceBody803_99

def sourceBody803_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_54 sourceBody803_100

def sourceBody803_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_95 sourceBody803_101

def sourceBody803_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_94 sourceBody803_102

def sourceBody803_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_103

def sourceBody803_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_104

def sourceBody803_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_93 sourceBody803_105

def sourceBody803_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody803_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody803_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 22)) (some 739) ([12, 26, 10]) (some (12, sourceBody803_23, 803, 23))

def sourceBody803_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_109 sourceBody803_3

def sourceBody803_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_110 sourceBody803_0

def sourceBody803_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_108 sourceBody803_111

def sourceBody803_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_107 sourceBody803_112

def sourceBody803_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_81 sourceBody803_113

def sourceBody803_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_114

def sourceBody803_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_115

def sourceBody803_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_106 sourceBody803_116

def sourceBody803_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody803_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 24)) (some 739) ([12, 26, 10]) (some (12, sourceBody803_23, 803, 25))

def sourceBody803_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_119 sourceBody803_3

def sourceBody803_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_120 sourceBody803_0

def sourceBody803_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_42 sourceBody803_121

def sourceBody803_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_118 sourceBody803_122

def sourceBody803_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_94 sourceBody803_123

def sourceBody803_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_124

def sourceBody803_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_125

def sourceBody803_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_117 sourceBody803_126

def sourceBody803_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody803_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody803_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 26)) (some 739) ([12, 26, 10]) (some (12, sourceBody803_23, 803, 27))

def sourceBody803_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_130 sourceBody803_3

def sourceBody803_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_131 sourceBody803_0

def sourceBody803_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_129 sourceBody803_132

def sourceBody803_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_128 sourceBody803_133

def sourceBody803_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_21 sourceBody803_134

def sourceBody803_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_135

def sourceBody803_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_136

def sourceBody803_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_127 sourceBody803_137

def sourceBody803_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody803_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody803_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 28)) (some 739) ([12, 26, 10]) (some (12, sourceBody803_23, 803, 29))

def sourceBody803_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_141 sourceBody803_3

def sourceBody803_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_142 sourceBody803_0

def sourceBody803_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_140 sourceBody803_143

def sourceBody803_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_139 sourceBody803_144

def sourceBody803_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_31 sourceBody803_145

def sourceBody803_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_146

def sourceBody803_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_147

def sourceBody803_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_138 sourceBody803_148

def sourceBody803_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 30)) (some 739) ([12, 26, 10]) (some (12, sourceBody803_23, 803, 31))

def sourceBody803_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_150 sourceBody803_3

def sourceBody803_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_151 sourceBody803_0

def sourceBody803_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_129 sourceBody803_152

def sourceBody803_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_139 sourceBody803_153

def sourceBody803_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_40 sourceBody803_154

def sourceBody803_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_155

def sourceBody803_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_156

def sourceBody803_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_149 sourceBody803_157

def sourceBody803_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody803_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody803_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody803_0, 803, 32)) (some 780) ([12, 26]) (some (12, sourceBody803_23, 803, 33))

def sourceBody803_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_161 sourceBody803_3

def sourceBody803_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_162 sourceBody803_0

def sourceBody803_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_160 sourceBody803_163

def sourceBody803_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_159 sourceBody803_164

def sourceBody803_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_165

def sourceBody803_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_166

def sourceBody803_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_158 sourceBody803_167

def sourceBody803_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody803_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody803_0, 803, 34)) (some 70) ([12]) (some (12, sourceBody803_23, 803, 35))

def sourceBody803_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_170 sourceBody803_3

def sourceBody803_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_171 sourceBody803_0

def sourceBody803_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_169 sourceBody803_172

def sourceBody803_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_173

def sourceBody803_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_174

def sourceBody803_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_168 sourceBody803_175

def sourceBody803_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody803_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody803_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_178 sourceBody803_0

def sourceBody803_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_177 sourceBody803_179

def sourceBody803_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_176 sourceBody803_180

def sourceBody803_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_20 sourceBody803_181

def sourceBody803_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_182

def sourceBody803_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_19 sourceBody803_183

def sourceBody803_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_184

def sourceBody803_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_18 sourceBody803_185

def sourceBody803_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_186

def sourceBody803_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_17 sourceBody803_187

def sourceBody803_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_188

def sourceBody803_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_189

def sourceBody803_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_11 sourceBody803_190

def sourceBody803_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_191

def sourceBody803_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_192

def sourceBody803_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_5 sourceBody803_193

def sourceBody803_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_194

def sourceBody803_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody803_0 sourceBody803_195

def source803 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (803, 3, sourceBody803_196)
end InitECandidate.Proofs.WordStages
