import InitECandidate.Proofs.WordStages.Source736
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody752_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody752_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody752_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 2)) (some 69) ([]) (some (18, sourceBody752_1, 752, 3))

def sourceBody752_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody752_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_2 sourceBody752_3

def sourceBody752_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_4 sourceBody752_0

def sourceBody752_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 960#64)

def sourceBody752_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody752_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 4)) (some 68) ([14]) (some (14, sourceBody752_7, 752, 5))

def sourceBody752_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_8 sourceBody752_3

def sourceBody752_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_9 sourceBody752_0

def sourceBody752_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_6 sourceBody752_10

def sourceBody752_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody752_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody752_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody752_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody752_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 6)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 7))

def sourceBody752_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_16 sourceBody752_3

def sourceBody752_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_17 sourceBody752_0

def sourceBody752_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_14 sourceBody752_18

def sourceBody752_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_13 sourceBody752_19

def sourceBody752_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_12 sourceBody752_20

def sourceBody752_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_21

def sourceBody752_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_22

def sourceBody752_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody752_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody752_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 8)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 9))

def sourceBody752_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_26 sourceBody752_3

def sourceBody752_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_27 sourceBody752_0

def sourceBody752_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_25 sourceBody752_28

def sourceBody752_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_13 sourceBody752_29

def sourceBody752_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_24 sourceBody752_30

def sourceBody752_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_31

def sourceBody752_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_32

def sourceBody752_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_23 sourceBody752_33

def sourceBody752_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody752_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody752_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 10)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 11))

def sourceBody752_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_37 sourceBody752_3

def sourceBody752_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_38 sourceBody752_0

def sourceBody752_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_36 sourceBody752_39

def sourceBody752_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_13 sourceBody752_40

def sourceBody752_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_35 sourceBody752_41

def sourceBody752_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_42

def sourceBody752_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_43

def sourceBody752_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_34 sourceBody752_44

def sourceBody752_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody752_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody752_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 12)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 13))

def sourceBody752_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_48 sourceBody752_3

def sourceBody752_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_49 sourceBody752_0

def sourceBody752_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_14 sourceBody752_50

def sourceBody752_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_47 sourceBody752_51

def sourceBody752_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_46 sourceBody752_52

def sourceBody752_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_53

def sourceBody752_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_54

def sourceBody752_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_45 sourceBody752_55

def sourceBody752_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody752_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 14)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 15))

def sourceBody752_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_58 sourceBody752_3

def sourceBody752_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_59 sourceBody752_0

def sourceBody752_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_25 sourceBody752_60

def sourceBody752_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_47 sourceBody752_61

def sourceBody752_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_57 sourceBody752_62

def sourceBody752_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_63

def sourceBody752_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_64

def sourceBody752_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_56 sourceBody752_65

def sourceBody752_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody752_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 16)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 17))

def sourceBody752_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_68 sourceBody752_3

def sourceBody752_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_69 sourceBody752_0

def sourceBody752_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_36 sourceBody752_70

def sourceBody752_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_47 sourceBody752_71

def sourceBody752_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_67 sourceBody752_72

def sourceBody752_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_73

def sourceBody752_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_74

def sourceBody752_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_66 sourceBody752_75

def sourceBody752_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 576#64])

def sourceBody752_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody752_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 18)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 19))

def sourceBody752_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_79 sourceBody752_3

def sourceBody752_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_80 sourceBody752_0

def sourceBody752_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_14 sourceBody752_81

def sourceBody752_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_78 sourceBody752_82

def sourceBody752_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_77 sourceBody752_83

def sourceBody752_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_84

def sourceBody752_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_85

def sourceBody752_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_76 sourceBody752_86

def sourceBody752_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 672#64])

def sourceBody752_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 20)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 21))

def sourceBody752_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_89 sourceBody752_3

def sourceBody752_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_90 sourceBody752_0

def sourceBody752_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_25 sourceBody752_91

def sourceBody752_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_78 sourceBody752_92

def sourceBody752_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_88 sourceBody752_93

def sourceBody752_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_94

def sourceBody752_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_95

def sourceBody752_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_87 sourceBody752_96

def sourceBody752_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 768#64])

def sourceBody752_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 22)) (some 739) ([20, 8, 16]) (some (20, sourceBody752_15, 752, 23))

def sourceBody752_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_99 sourceBody752_3

def sourceBody752_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_100 sourceBody752_0

def sourceBody752_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_36 sourceBody752_101

def sourceBody752_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_78 sourceBody752_102

def sourceBody752_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_98 sourceBody752_103

def sourceBody752_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_104

def sourceBody752_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_105

def sourceBody752_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_97 sourceBody752_106

def sourceBody752_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 864#64])

def sourceBody752_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody752_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody752_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 672#64])

def sourceBody752_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody752_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 24)) (some 734) ([8, 16, 12]) (some (8, sourceBody752_112, 752, 25))

def sourceBody752_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_113 sourceBody752_3

def sourceBody752_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_114 sourceBody752_0

def sourceBody752_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_111 sourceBody752_115

def sourceBody752_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_110 sourceBody752_116

def sourceBody752_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_109 sourceBody752_117

def sourceBody752_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_118

def sourceBody752_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_119

def sourceBody752_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody752_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 26)) (some 741) ([8, 16]) (some (8, sourceBody752_112, 752, 27))

def sourceBody752_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_122 sourceBody752_3

def sourceBody752_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_123 sourceBody752_0

def sourceBody752_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_121 sourceBody752_124

def sourceBody752_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_109 sourceBody752_125

def sourceBody752_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_126

def sourceBody752_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_127

def sourceBody752_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_120 sourceBody752_128

def sourceBody752_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody752_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody752_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody752_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 28)) (some 734) ([8, 16, 12]) (some (8, sourceBody752_112, 752, 29))

def sourceBody752_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_133 sourceBody752_3

def sourceBody752_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_134 sourceBody752_0

def sourceBody752_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_132 sourceBody752_135

def sourceBody752_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_131 sourceBody752_136

def sourceBody752_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_130 sourceBody752_137

def sourceBody752_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_138

def sourceBody752_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_139

def sourceBody752_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_129 sourceBody752_140

def sourceBody752_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 768#64])

def sourceBody752_143 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 30)) (some 741) ([8, 16]) (some (8, sourceBody752_112, 752, 31))

def sourceBody752_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_143 sourceBody752_3

def sourceBody752_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_144 sourceBody752_0

def sourceBody752_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_142 sourceBody752_145

def sourceBody752_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_109 sourceBody752_146

def sourceBody752_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_147

def sourceBody752_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_148

def sourceBody752_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_141 sourceBody752_149

def sourceBody752_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody752_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 32)) (some 734) ([8, 16, 12]) (some (8, sourceBody752_112, 752, 33))

def sourceBody752_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_152 sourceBody752_3

def sourceBody752_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_153 sourceBody752_0

def sourceBody752_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_151 sourceBody752_154

def sourceBody752_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_121 sourceBody752_155

def sourceBody752_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_109 sourceBody752_156

def sourceBody752_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_157

def sourceBody752_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_158

def sourceBody752_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_150 sourceBody752_159

def sourceBody752_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody752_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody752_163 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 34)) (some 734) ([8, 16, 12]) (some (8, sourceBody752_112, 752, 35))

def sourceBody752_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_163 sourceBody752_3

def sourceBody752_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_164 sourceBody752_0

def sourceBody752_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_162 sourceBody752_165

def sourceBody752_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_121 sourceBody752_166

def sourceBody752_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_161 sourceBody752_167

def sourceBody752_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_168

def sourceBody752_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_169

def sourceBody752_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_160 sourceBody752_170

def sourceBody752_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody752_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody752_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 36)) (some 734) ([8, 16, 12]) (some (8, sourceBody752_112, 752, 37))

def sourceBody752_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_174 sourceBody752_3

def sourceBody752_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_175 sourceBody752_0

def sourceBody752_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_173 sourceBody752_176

def sourceBody752_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_172 sourceBody752_177

def sourceBody752_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_109 sourceBody752_178

def sourceBody752_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_179

def sourceBody752_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_180

def sourceBody752_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_171 sourceBody752_181

def sourceBody752_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody752_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 576#64])

def sourceBody752_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody752_0, 752, 38)) (some 734) ([8, 16, 12]) (some (8, sourceBody752_112, 752, 39))

def sourceBody752_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_185 sourceBody752_3

def sourceBody752_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_186 sourceBody752_0

def sourceBody752_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_184 sourceBody752_187

def sourceBody752_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_121 sourceBody752_188

def sourceBody752_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_183 sourceBody752_189

def sourceBody752_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_190

def sourceBody752_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_191

def sourceBody752_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_182 sourceBody752_192

def sourceBody752_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody752_195 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody752_0, 752, 40)) (some 70) ([8]) (some (8, sourceBody752_112, 752, 41))

def sourceBody752_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_195 sourceBody752_3

def sourceBody752_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_196 sourceBody752_0

def sourceBody752_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_194 sourceBody752_197

def sourceBody752_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_198

def sourceBody752_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_199

def sourceBody752_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_193 sourceBody752_200

def sourceBody752_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody752_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody752_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_203 sourceBody752_0

def sourceBody752_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_202 sourceBody752_204

def sourceBody752_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_201 sourceBody752_205

def sourceBody752_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_108 sourceBody752_206

def sourceBody752_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_207

def sourceBody752_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_107 sourceBody752_208

def sourceBody752_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_11 sourceBody752_209

def sourceBody752_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_210

def sourceBody752_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_211

def sourceBody752_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_5 sourceBody752_212

def sourceBody752_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_213

def sourceBody752_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody752_0 sourceBody752_214

def source752 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (752, 4, sourceBody752_215)
end InitECandidate.Proofs.WordStages
