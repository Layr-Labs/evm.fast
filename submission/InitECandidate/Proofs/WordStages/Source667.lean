import InitECandidate.Proofs.WordStages.Source651
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody667_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody667_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody667_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody667_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody667_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def sourceBody667_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody667_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 40) sourceBody667_5 sourceBody667_3

def sourceBody667_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_6 sourceBody667_2

def sourceBody667_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody667_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody667_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 48)

def sourceBody667_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_10 sourceBody667_0

def sourceBody667_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_11 sourceBody667_0

def sourceBody667_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_9 sourceBody667_12

def sourceBody667_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_13

def sourceBody667_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 12#64])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody667_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 12#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody667_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 12#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody667_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 12#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody667_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 48)

def sourceBody667_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody667_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 40)

def sourceBody667_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody667_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 82#64)

def sourceBody667_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody667_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 6, 36, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody667_0, 667, 2)) (some 665) ([52, 14, 44, 30, 60]) (some (52, sourceBody667_24, 667, 3))

def sourceBody667_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_25 sourceBody667_2

def sourceBody667_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_26 sourceBody667_0

def sourceBody667_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_23 sourceBody667_27

def sourceBody667_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_22 sourceBody667_28

def sourceBody667_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_21 sourceBody667_29

def sourceBody667_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_20 sourceBody667_30

def sourceBody667_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_19 sourceBody667_31

def sourceBody667_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 48)

def sourceBody667_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody667_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody667_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody667_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 18#64)

def sourceBody667_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody667_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([52, 14, 44, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody667_0, 667, 4)) (some 665) ([60, 4, 34, 20, 50]) (some (60, sourceBody667_38, 667, 5))

def sourceBody667_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_39 sourceBody667_2

def sourceBody667_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_40 sourceBody667_0

def sourceBody667_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_37 sourceBody667_41

def sourceBody667_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_36 sourceBody667_42

def sourceBody667_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_35 sourceBody667_43

def sourceBody667_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_34 sourceBody667_44

def sourceBody667_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_33 sourceBody667_45

def sourceBody667_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody667_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody667_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody667_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody667_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 60)

def sourceBody667_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody667_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody667_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody667_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 56)

def sourceBody667_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody667_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody667_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody667_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody667_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 4, 34, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody667_0, 667, 6)) (some 659) ([50, 12, 42, 28, 58, 8, 38, 24]) (some (50, sourceBody667_59, 667, 7))

def sourceBody667_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_60 sourceBody667_2

def sourceBody667_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_61 sourceBody667_0

def sourceBody667_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_58 sourceBody667_62

def sourceBody667_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_57 sourceBody667_63

def sourceBody667_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_56 sourceBody667_64

def sourceBody667_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_55 sourceBody667_65

def sourceBody667_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_54 sourceBody667_66

def sourceBody667_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_53 sourceBody667_67

def sourceBody667_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_52 sourceBody667_68

def sourceBody667_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_51 sourceBody667_69

def sourceBody667_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody667_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 60)

def sourceBody667_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody667_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody667_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 20)

def sourceBody667_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody667_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 50) 8

def sourceBody667_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_77 sourceBody667_0

def sourceBody667_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_76 sourceBody667_78

def sourceBody667_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 42)

def sourceBody667_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 8#64]) 8

def sourceBody667_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_81 sourceBody667_0

def sourceBody667_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_80 sourceBody667_82

def sourceBody667_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody667_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 16#64])
  8

def sourceBody667_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_85 sourceBody667_0

def sourceBody667_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_84 sourceBody667_86

def sourceBody667_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 58)

def sourceBody667_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 24#64])
  8

def sourceBody667_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_89 sourceBody667_0

def sourceBody667_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_88 sourceBody667_90

def sourceBody667_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_91 sourceBody667_0

def sourceBody667_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_87 sourceBody667_92

def sourceBody667_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_83 sourceBody667_93

def sourceBody667_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_79 sourceBody667_94

def sourceBody667_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_75 sourceBody667_95

def sourceBody667_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_96

def sourceBody667_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_74 sourceBody667_97

def sourceBody667_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_98

def sourceBody667_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_73 sourceBody667_99

def sourceBody667_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_100

def sourceBody667_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_72 sourceBody667_101

def sourceBody667_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_102

def sourceBody667_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_71 sourceBody667_103

def sourceBody667_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_104

def sourceBody667_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_70 sourceBody667_105

def sourceBody667_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 6#64])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody667_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 6#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody667_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 6#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody667_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 6#64])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody667_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 50)

def sourceBody667_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 42)

def sourceBody667_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody667_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 52)

def sourceBody667_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody667_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody667_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 30)

def sourceBody667_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody667_119 : WordLangProgHOL (BitVec 64) :=
.call (some (([50, 12, 42, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody667_0, 667, 8)) (some 658) ([58, 8, 38, 24, 54, 16, 46, 32]) (some (58, sourceBody667_118, 667, 9))

def sourceBody667_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_119 sourceBody667_2

def sourceBody667_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_120 sourceBody667_0

def sourceBody667_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_117 sourceBody667_121

def sourceBody667_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_116 sourceBody667_122

def sourceBody667_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_115 sourceBody667_123

def sourceBody667_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_114 sourceBody667_124

def sourceBody667_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_113 sourceBody667_125

def sourceBody667_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_112 sourceBody667_126

def sourceBody667_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_76 sourceBody667_127

def sourceBody667_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_111 sourceBody667_128

def sourceBody667_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 6#64])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody667_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 50)

def sourceBody667_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody667_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody667_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 28)

def sourceBody667_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody667_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 58) 16

def sourceBody667_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_136 sourceBody667_0

def sourceBody667_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_135 sourceBody667_137

def sourceBody667_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 38)

def sourceBody667_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 8#64])
  16

def sourceBody667_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_140 sourceBody667_0

def sourceBody667_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_139 sourceBody667_141

def sourceBody667_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody667_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 16#64])
  16

def sourceBody667_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_144 sourceBody667_0

def sourceBody667_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_143 sourceBody667_145

def sourceBody667_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 54)

def sourceBody667_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 24#64])
  16

def sourceBody667_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_148 sourceBody667_0

def sourceBody667_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_147 sourceBody667_149

def sourceBody667_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_150 sourceBody667_0

def sourceBody667_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_146 sourceBody667_151

def sourceBody667_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_142 sourceBody667_152

def sourceBody667_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_138 sourceBody667_153

def sourceBody667_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_134 sourceBody667_154

def sourceBody667_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_155

def sourceBody667_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_133 sourceBody667_156

def sourceBody667_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_157

def sourceBody667_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_132 sourceBody667_158

def sourceBody667_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_159

def sourceBody667_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_131 sourceBody667_160

def sourceBody667_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_161

def sourceBody667_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_130 sourceBody667_162

def sourceBody667_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_163

def sourceBody667_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_129 sourceBody667_164

def sourceBody667_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_110 sourceBody667_165

def sourceBody667_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_166

def sourceBody667_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_109 sourceBody667_167

def sourceBody667_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_168

def sourceBody667_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_108 sourceBody667_169

def sourceBody667_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_170

def sourceBody667_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_107 sourceBody667_171

def sourceBody667_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_172

def sourceBody667_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_106 sourceBody667_173

def sourceBody667_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_50 sourceBody667_174

def sourceBody667_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_175

def sourceBody667_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_49 sourceBody667_176

def sourceBody667_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_177

def sourceBody667_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_48 sourceBody667_178

def sourceBody667_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_179

def sourceBody667_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_47 sourceBody667_180

def sourceBody667_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_181

def sourceBody667_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_46 sourceBody667_182

def sourceBody667_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_183

def sourceBody667_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_184

def sourceBody667_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_185

def sourceBody667_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_186

def sourceBody667_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_187

def sourceBody667_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_188

def sourceBody667_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_189

def sourceBody667_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_190

def sourceBody667_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_32 sourceBody667_191

def sourceBody667_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_192

def sourceBody667_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_193

def sourceBody667_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_194

def sourceBody667_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_195

def sourceBody667_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_196

def sourceBody667_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_197

def sourceBody667_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_198

def sourceBody667_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_199

def sourceBody667_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_18 sourceBody667_200

def sourceBody667_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_201

def sourceBody667_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_17 sourceBody667_202

def sourceBody667_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_203

def sourceBody667_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_16 sourceBody667_204

def sourceBody667_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_205

def sourceBody667_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_15 sourceBody667_206

def sourceBody667_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_207

def sourceBody667_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_14 sourceBody667_208

def sourceBody667_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody667_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_209 sourceBody667_210

def sourceBody667_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody667_213 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody667_211 sourceBody667_212

def sourceBody667_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_213 sourceBody667_2

def sourceBody667_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_214 sourceBody667_0

def sourceBody667_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_8 sourceBody667_215

def sourceBody667_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_7 sourceBody667_216

def sourceBody667_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_4 sourceBody667_217

def sourceBody667_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_3 sourceBody667_218

def sourceBody667_220 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln) sourceBody667_219 (Flapjack.Spt.ls PUnit.unit)

def sourceBody667_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_220 sourceBody667_2

def sourceBody667_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_2 sourceBody667_221

def sourceBody667_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody667_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48]

def sourceBody667_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_224 sourceBody667_0

def sourceBody667_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_223 sourceBody667_225

def sourceBody667_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_222 sourceBody667_226

def sourceBody667_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_1 sourceBody667_227

def sourceBody667_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody667_0 sourceBody667_228

def source667 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (667, 2, sourceBody667_229)
end InitECandidate.Proofs.WordStages
