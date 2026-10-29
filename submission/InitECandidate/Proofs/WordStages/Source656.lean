import InitECandidate.Proofs.WordStages.Source640
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody656_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody656_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
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

def sourceBody656_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6900#64)

def sourceBody656_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody656_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 2)) (some 470) ([10]) (some (10, sourceBody656_3, 656, 3))

def sourceBody656_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody656_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_4 sourceBody656_5

def sourceBody656_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_6 sourceBody656_0

def sourceBody656_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_2 sourceBody656_7

def sourceBody656_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_8

def sourceBody656_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_9

def sourceBody656_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody656_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 4)) (some 68) ([10]) (some (10, sourceBody656_3, 656, 5))

def sourceBody656_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_12 sourceBody656_5

def sourceBody656_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_13 sourceBody656_0

def sourceBody656_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_11 sourceBody656_14

def sourceBody656_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody656_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 58)

def sourceBody656_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def sourceBody656_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 30

def sourceBody656_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_19 sourceBody656_0

def sourceBody656_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_18 sourceBody656_20

def sourceBody656_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_21 sourceBody656_0

def sourceBody656_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_17 sourceBody656_22

def sourceBody656_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_23

def sourceBody656_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_16 sourceBody656_24

def sourceBody656_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_25

def sourceBody656_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody656_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody656_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_28 sourceBody656_22

def sourceBody656_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_29

def sourceBody656_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_27 sourceBody656_30

def sourceBody656_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_31

def sourceBody656_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_26 sourceBody656_32

def sourceBody656_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody656_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody656_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 160#64)

def sourceBody656_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody656_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody656_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 68) sourceBody656_37 sourceBody656_38

def sourceBody656_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_39 sourceBody656_5

def sourceBody656_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 30)

def sourceBody656_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48]

def sourceBody656_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_42 sourceBody656_0

def sourceBody656_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_28 sourceBody656_43

def sourceBody656_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody656_44 sourceBody656_0

def sourceBody656_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_45 sourceBody656_5

def sourceBody656_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_46 sourceBody656_0

def sourceBody656_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_41 sourceBody656_47

def sourceBody656_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_40 sourceBody656_48

def sourceBody656_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_36 sourceBody656_49

def sourceBody656_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_35 sourceBody656_50

def sourceBody656_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody656_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody656_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody656_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 68, 6, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 6)) (some 146) ([26, 64]) (some (26, sourceBody656_55, 656, 7))

def sourceBody656_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_56 sourceBody656_5

def sourceBody656_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_57 sourceBody656_0

def sourceBody656_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_54 sourceBody656_58

def sourceBody656_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_53 sourceBody656_59

def sourceBody656_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody656_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody656_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 64, 16, 54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 8)) (some 146) ([36, 74]) (some (36, sourceBody656_63, 656, 9))

def sourceBody656_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_64 sourceBody656_5

def sourceBody656_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_65 sourceBody656_0

def sourceBody656_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_62 sourceBody656_66

def sourceBody656_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_61 sourceBody656_67

def sourceBody656_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody656_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody656_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 74, 4, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 10)) (some 146) ([24, 62]) (some (24, sourceBody656_71, 656, 11))

def sourceBody656_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_72 sourceBody656_5

def sourceBody656_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_73 sourceBody656_0

def sourceBody656_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_70 sourceBody656_74

def sourceBody656_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_69 sourceBody656_75

def sourceBody656_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody656_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody656_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 62, 14, 52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 12)) (some 146) ([34, 72]) (some (34, sourceBody656_79, 656, 13))

def sourceBody656_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_80 sourceBody656_5

def sourceBody656_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_81 sourceBody656_0

def sourceBody656_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_78 sourceBody656_82

def sourceBody656_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_77 sourceBody656_83

def sourceBody656_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 48)

def sourceBody656_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 30)

def sourceBody656_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 68)

def sourceBody656_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody656_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 44)

def sourceBody656_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody656_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 64)

def sourceBody656_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody656_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 54)

def sourceBody656_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 36)

def sourceBody656_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 74)

def sourceBody656_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody656_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 42)

def sourceBody656_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody656_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 62)

def sourceBody656_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody656_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 52)

def sourceBody656_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def sourceBody656_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody656_0, 656, 14)) (some 655) ([72, 8, 46, 28, 66, 18, 56, 38, 76, 2, 40, 22, 60, 12, 50, 32, 70]) (some (72, sourceBody656_102, 656, 15))

def sourceBody656_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_103 sourceBody656_5

def sourceBody656_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_104 sourceBody656_0

def sourceBody656_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_101 sourceBody656_105

def sourceBody656_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_100 sourceBody656_106

def sourceBody656_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_99 sourceBody656_107

def sourceBody656_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_98 sourceBody656_108

def sourceBody656_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_97 sourceBody656_109

def sourceBody656_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_96 sourceBody656_110

def sourceBody656_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_95 sourceBody656_111

def sourceBody656_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_94 sourceBody656_112

def sourceBody656_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_93 sourceBody656_113

def sourceBody656_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_92 sourceBody656_114

def sourceBody656_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_91 sourceBody656_115

def sourceBody656_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_90 sourceBody656_116

def sourceBody656_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_89 sourceBody656_117

def sourceBody656_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_88 sourceBody656_118

def sourceBody656_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_87 sourceBody656_119

def sourceBody656_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_86 sourceBody656_120

def sourceBody656_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_85 sourceBody656_121

def sourceBody656_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 34)

def sourceBody656_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody656_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody656_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody656_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 46) sourceBody656_125 sourceBody656_126

def sourceBody656_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_127 sourceBody656_5

def sourceBody656_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody656_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody656_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody656_0, 656, 16)) (some 68) ([8]) (some (8, sourceBody656_131, 656, 17))

def sourceBody656_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_132 sourceBody656_5

def sourceBody656_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_133 sourceBody656_0

def sourceBody656_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_130 sourceBody656_134

def sourceBody656_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 72)

def sourceBody656_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody656_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody656_0, 656, 18)) (some 78) ([46, 28]) (some (46, sourceBody656_138, 656, 19))

def sourceBody656_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_139 sourceBody656_5

def sourceBody656_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_140 sourceBody656_0

def sourceBody656_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_137 sourceBody656_141

def sourceBody656_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_136 sourceBody656_142

def sourceBody656_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_143

def sourceBody656_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_144

def sourceBody656_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.const 31#64])

def sourceBody656_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 46 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody656_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_147 sourceBody656_0

def sourceBody656_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_124 sourceBody656_148

def sourceBody656_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_146 sourceBody656_149

def sourceBody656_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_145 sourceBody656_150

def sourceBody656_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody656_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 46)

def sourceBody656_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 28

def sourceBody656_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_154 sourceBody656_0

def sourceBody656_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_153 sourceBody656_155

def sourceBody656_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_156 sourceBody656_0

def sourceBody656_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_136 sourceBody656_157

def sourceBody656_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_158

def sourceBody656_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_152 sourceBody656_159

def sourceBody656_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_160

def sourceBody656_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_151 sourceBody656_161

def sourceBody656_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody656_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody656_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_164 sourceBody656_157

def sourceBody656_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_165

def sourceBody656_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_163 sourceBody656_166

def sourceBody656_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_167

def sourceBody656_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_162 sourceBody656_168

def sourceBody656_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_135 sourceBody656_169

def sourceBody656_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_170

def sourceBody656_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_171

def sourceBody656_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody656_172 sourceBody656_0

def sourceBody656_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_173 sourceBody656_5

def sourceBody656_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_174 sourceBody656_0

def sourceBody656_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_129 sourceBody656_175

def sourceBody656_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_128 sourceBody656_176

def sourceBody656_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_124 sourceBody656_177

def sourceBody656_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_123 sourceBody656_178

def sourceBody656_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody656_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [72]

def sourceBody656_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_181 sourceBody656_0

def sourceBody656_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_180 sourceBody656_182

def sourceBody656_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_179 sourceBody656_183

def sourceBody656_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_122 sourceBody656_184

def sourceBody656_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_185

def sourceBody656_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_186

def sourceBody656_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_84 sourceBody656_187

def sourceBody656_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_188

def sourceBody656_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_189

def sourceBody656_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_190

def sourceBody656_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_191

def sourceBody656_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_192

def sourceBody656_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_193

def sourceBody656_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_194

def sourceBody656_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_195

def sourceBody656_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_76 sourceBody656_196

def sourceBody656_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_197

def sourceBody656_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_198

def sourceBody656_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_199

def sourceBody656_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_200

def sourceBody656_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_201

def sourceBody656_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_202

def sourceBody656_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_203

def sourceBody656_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_204

def sourceBody656_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_68 sourceBody656_205

def sourceBody656_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_206

def sourceBody656_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_207

def sourceBody656_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_208

def sourceBody656_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_209

def sourceBody656_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_210

def sourceBody656_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_211

def sourceBody656_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_212

def sourceBody656_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_213

def sourceBody656_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_60 sourceBody656_214

def sourceBody656_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_215

def sourceBody656_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_216

def sourceBody656_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_217

def sourceBody656_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_218

def sourceBody656_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_219

def sourceBody656_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_220

def sourceBody656_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_221

def sourceBody656_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_222

def sourceBody656_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_52 sourceBody656_223

def sourceBody656_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_224

def sourceBody656_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_51 sourceBody656_225

def sourceBody656_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_34 sourceBody656_226

def sourceBody656_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_227

def sourceBody656_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_33 sourceBody656_228

def sourceBody656_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_15 sourceBody656_229

def sourceBody656_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_230

def sourceBody656_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_231

def sourceBody656_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_10 sourceBody656_232

def sourceBody656_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_1 sourceBody656_233

def sourceBody656_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody656_0 sourceBody656_234

def source656 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (656, 1, sourceBody656_235)
end InitECandidate.Proofs.WordStages
