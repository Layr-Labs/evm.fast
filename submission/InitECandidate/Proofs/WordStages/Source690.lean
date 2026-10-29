import InitECandidate.Proofs.WordStages.Source674
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody690_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody690_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody690_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody690_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def sourceBody690_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 40)

def sourceBody690_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody690_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody690_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 52 (Flapjack.WordRegImm.reg 24) sourceBody690_5 sourceBody690_6

def sourceBody690_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_7 sourceBody690_2

def sourceBody690_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody690_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody690_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody690_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody690_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody690_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody690_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 8)

def sourceBody690_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody690_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def sourceBody690_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody690_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 52)

def sourceBody690_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody690_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody690_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody690_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 58, 18, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody690_0, 690, 2)) (some 661) ([28, 50, 22, 44, 34, 56, 20, 42]) (some (28, sourceBody690_22, 690, 3))

def sourceBody690_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_23 sourceBody690_2

def sourceBody690_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_24 sourceBody690_0

def sourceBody690_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_21 sourceBody690_25

def sourceBody690_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_20 sourceBody690_26

def sourceBody690_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_19 sourceBody690_27

def sourceBody690_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_18 sourceBody690_28

def sourceBody690_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_17 sourceBody690_29

def sourceBody690_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_16 sourceBody690_30

def sourceBody690_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_15 sourceBody690_31

def sourceBody690_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_14 sourceBody690_32

def sourceBody690_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 40])
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody690_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 40])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody690_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 40])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody690_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 40])
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody690_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody690_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 50)

def sourceBody690_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody690_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody690_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody690_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 58)

def sourceBody690_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody690_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody690_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody690_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 50, 22, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody690_0, 690, 4)) (some 659) ([34, 56, 20, 42, 32, 54, 26, 48]) (some (34, sourceBody690_46, 690, 5))

def sourceBody690_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_47 sourceBody690_2

def sourceBody690_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_48 sourceBody690_0

def sourceBody690_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_45 sourceBody690_49

def sourceBody690_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_44 sourceBody690_50

def sourceBody690_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_43 sourceBody690_51

def sourceBody690_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_42 sourceBody690_52

def sourceBody690_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_41 sourceBody690_53

def sourceBody690_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_40 sourceBody690_54

def sourceBody690_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_39 sourceBody690_55

def sourceBody690_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_38 sourceBody690_56

def sourceBody690_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 40])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody690_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def sourceBody690_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 50)

def sourceBody690_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)

def sourceBody690_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 44)

def sourceBody690_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 56)

def sourceBody690_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 54

def sourceBody690_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_64 sourceBody690_0

def sourceBody690_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_63 sourceBody690_65

def sourceBody690_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 20)

def sourceBody690_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64])
  54

def sourceBody690_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_68 sourceBody690_0

def sourceBody690_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_67 sourceBody690_69

def sourceBody690_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 42)

def sourceBody690_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 16#64])
  54

def sourceBody690_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_72 sourceBody690_0

def sourceBody690_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_71 sourceBody690_73

def sourceBody690_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 32)

def sourceBody690_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 24#64])
  54

def sourceBody690_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_76 sourceBody690_0

def sourceBody690_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_75 sourceBody690_77

def sourceBody690_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_78 sourceBody690_0

def sourceBody690_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_74 sourceBody690_79

def sourceBody690_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_70 sourceBody690_80

def sourceBody690_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_66 sourceBody690_81

def sourceBody690_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_62 sourceBody690_82

def sourceBody690_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_83

def sourceBody690_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_61 sourceBody690_84

def sourceBody690_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_85

def sourceBody690_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_60 sourceBody690_86

def sourceBody690_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_87

def sourceBody690_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_59 sourceBody690_88

def sourceBody690_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_89

def sourceBody690_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_58 sourceBody690_90

def sourceBody690_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_91

def sourceBody690_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_57 sourceBody690_92

def sourceBody690_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody690_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody690_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_95 sourceBody690_0

def sourceBody690_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_96 sourceBody690_0

def sourceBody690_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_94 sourceBody690_97

def sourceBody690_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_98

def sourceBody690_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_93 sourceBody690_99

def sourceBody690_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_37 sourceBody690_100

def sourceBody690_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_101

def sourceBody690_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_36 sourceBody690_102

def sourceBody690_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_103

def sourceBody690_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_35 sourceBody690_104

def sourceBody690_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_105

def sourceBody690_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_34 sourceBody690_106

def sourceBody690_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_107

def sourceBody690_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_33 sourceBody690_108

def sourceBody690_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_109

def sourceBody690_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_110

def sourceBody690_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_111

def sourceBody690_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_112

def sourceBody690_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_113

def sourceBody690_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_114

def sourceBody690_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_115

def sourceBody690_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_116

def sourceBody690_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_13 sourceBody690_117

def sourceBody690_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_118

def sourceBody690_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_12 sourceBody690_119

def sourceBody690_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_120

def sourceBody690_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_11 sourceBody690_121

def sourceBody690_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_122

def sourceBody690_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_10 sourceBody690_123

def sourceBody690_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_124

def sourceBody690_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody690_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_125 sourceBody690_126

def sourceBody690_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody690_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody690_127 sourceBody690_128

def sourceBody690_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_129 sourceBody690_2

def sourceBody690_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_130 sourceBody690_0

def sourceBody690_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_9 sourceBody690_131

def sourceBody690_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_8 sourceBody690_132

def sourceBody690_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_4 sourceBody690_133

def sourceBody690_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_3 sourceBody690_134

def sourceBody690_136 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody690_135 (Flapjack.Spt.ls PUnit.unit)

def sourceBody690_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_136 sourceBody690_2

def sourceBody690_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_2 sourceBody690_137

def sourceBody690_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody690_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody690_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_140 sourceBody690_0

def sourceBody690_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_139 sourceBody690_141

def sourceBody690_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_138 sourceBody690_142

def sourceBody690_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_1 sourceBody690_143

def sourceBody690_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody690_0 sourceBody690_144

def source690 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (690, 9, sourceBody690_145)
end InitECandidate.Proofs.WordStages
