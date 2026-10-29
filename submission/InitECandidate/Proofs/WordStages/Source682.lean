import InitECandidate.Proofs.WordStages.Source666
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody682_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody682_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody682_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody682_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 2)) (some 69) ([]) (some (22, sourceBody682_2, 682, 3))

def sourceBody682_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody682_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_3 sourceBody682_4

def sourceBody682_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_5 sourceBody682_0

def sourceBody682_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody682_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 12])

def sourceBody682_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody682_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody682_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 4)) (some 68) ([20]) (some (20, sourceBody682_11, 682, 5))

def sourceBody682_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_12 sourceBody682_4

def sourceBody682_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_13 sourceBody682_0

def sourceBody682_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_10 sourceBody682_14

def sourceBody682_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody682_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 6)) (some 68) ([36]) (some (36, sourceBody682_17, 682, 7))

def sourceBody682_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_18 sourceBody682_4

def sourceBody682_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_19 sourceBody682_0

def sourceBody682_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_16 sourceBody682_20

def sourceBody682_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody682_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 8)) (some 68) ([16]) (some (16, sourceBody682_23, 682, 9))

def sourceBody682_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_24 sourceBody682_4

def sourceBody682_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_25 sourceBody682_0

def sourceBody682_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_22 sourceBody682_26

def sourceBody682_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody682_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 10)) (some 68) ([32]) (some (32, sourceBody682_29, 682, 11))

def sourceBody682_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_30 sourceBody682_4

def sourceBody682_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_31 sourceBody682_0

def sourceBody682_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_28 sourceBody682_32

def sourceBody682_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody682_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 12)) (some 68) ([24]) (some (24, sourceBody682_35, 682, 13))

def sourceBody682_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_36 sourceBody682_4

def sourceBody682_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_37 sourceBody682_0

def sourceBody682_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_34 sourceBody682_38

def sourceBody682_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody682_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 14)) (some 68) ([40]) (some (40, sourceBody682_41, 682, 15))

def sourceBody682_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_42 sourceBody682_4

def sourceBody682_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_43 sourceBody682_0

def sourceBody682_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_40 sourceBody682_44

def sourceBody682_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody682_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 16)) (some 68) ([8]) (some (8, sourceBody682_47, 682, 17))

def sourceBody682_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_48 sourceBody682_4

def sourceBody682_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_49 sourceBody682_0

def sourceBody682_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_46 sourceBody682_50

def sourceBody682_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody682_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody682_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody682_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody682_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 18)) (some 671) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 19))

def sourceBody682_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_56 sourceBody682_4

def sourceBody682_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_57 sourceBody682_0

def sourceBody682_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_54 sourceBody682_58

def sourceBody682_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_53 sourceBody682_59

def sourceBody682_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_60

def sourceBody682_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_61

def sourceBody682_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_62

def sourceBody682_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody682_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 24)

def sourceBody682_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody682_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 20)) (some 675) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 21))

def sourceBody682_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_67 sourceBody682_4

def sourceBody682_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_68 sourceBody682_0

def sourceBody682_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_66 sourceBody682_69

def sourceBody682_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_65 sourceBody682_70

def sourceBody682_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_64 sourceBody682_71

def sourceBody682_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_72

def sourceBody682_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_73

def sourceBody682_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_74

def sourceBody682_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_63 sourceBody682_75

def sourceBody682_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody682_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody682_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody682_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 22)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 23))

def sourceBody682_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_80 sourceBody682_4

def sourceBody682_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_81 sourceBody682_0

def sourceBody682_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_79 sourceBody682_82

def sourceBody682_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_78 sourceBody682_83

def sourceBody682_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_77 sourceBody682_84

def sourceBody682_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_85

def sourceBody682_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_86

def sourceBody682_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_87

def sourceBody682_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_76 sourceBody682_88

def sourceBody682_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 38)

def sourceBody682_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 24)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 25))

def sourceBody682_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_91 sourceBody682_4

def sourceBody682_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_92 sourceBody682_0

def sourceBody682_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_90 sourceBody682_93

def sourceBody682_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_54 sourceBody682_94

def sourceBody682_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_53 sourceBody682_95

def sourceBody682_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_96

def sourceBody682_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_97

def sourceBody682_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_98

def sourceBody682_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_89 sourceBody682_99

def sourceBody682_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def sourceBody682_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody682_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 26)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 27))

def sourceBody682_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_103 sourceBody682_4

def sourceBody682_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_104 sourceBody682_0

def sourceBody682_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_102 sourceBody682_105

def sourceBody682_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_65 sourceBody682_106

def sourceBody682_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_101 sourceBody682_107

def sourceBody682_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_108

def sourceBody682_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_109

def sourceBody682_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_110

def sourceBody682_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_100 sourceBody682_111

def sourceBody682_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody682_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 28)) (some 671) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 29))

def sourceBody682_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_114 sourceBody682_4

def sourceBody682_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_115 sourceBody682_0

def sourceBody682_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_113 sourceBody682_116

def sourceBody682_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_53 sourceBody682_117

def sourceBody682_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_118

def sourceBody682_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_119

def sourceBody682_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_120

def sourceBody682_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_112 sourceBody682_121

def sourceBody682_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 40)

def sourceBody682_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody682_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody682_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 30)) (some 675) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 31))

def sourceBody682_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_126 sourceBody682_4

def sourceBody682_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_127 sourceBody682_0

def sourceBody682_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_125 sourceBody682_128

def sourceBody682_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_124 sourceBody682_129

def sourceBody682_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_123 sourceBody682_130

def sourceBody682_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_131

def sourceBody682_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_132

def sourceBody682_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_133

def sourceBody682_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_122 sourceBody682_134

def sourceBody682_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody682_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 40)

def sourceBody682_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 32)) (some 673) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 33))

def sourceBody682_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_138 sourceBody682_4

def sourceBody682_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_139 sourceBody682_0

def sourceBody682_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_137 sourceBody682_140

def sourceBody682_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_65 sourceBody682_141

def sourceBody682_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_136 sourceBody682_142

def sourceBody682_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_143

def sourceBody682_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_144

def sourceBody682_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_145

def sourceBody682_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_135 sourceBody682_146

def sourceBody682_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 32)

def sourceBody682_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 20)

def sourceBody682_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 34)) (some 671) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 35))

def sourceBody682_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_150 sourceBody682_4

def sourceBody682_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_151 sourceBody682_0

def sourceBody682_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_149 sourceBody682_152

def sourceBody682_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_148 sourceBody682_153

def sourceBody682_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_154

def sourceBody682_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_155

def sourceBody682_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_156

def sourceBody682_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_147 sourceBody682_157

def sourceBody682_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody682_160 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 36)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 37))

def sourceBody682_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_160 sourceBody682_4

def sourceBody682_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_161 sourceBody682_0

def sourceBody682_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_102 sourceBody682_162

def sourceBody682_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_159 sourceBody682_163

def sourceBody682_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_53 sourceBody682_164

def sourceBody682_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_165

def sourceBody682_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_166

def sourceBody682_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_167

def sourceBody682_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_158 sourceBody682_168

def sourceBody682_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody682_171 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 38)) (some 675) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 39))

def sourceBody682_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_171 sourceBody682_4

def sourceBody682_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_172 sourceBody682_0

def sourceBody682_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_170 sourceBody682_173

def sourceBody682_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_65 sourceBody682_174

def sourceBody682_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_53 sourceBody682_175

def sourceBody682_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_176

def sourceBody682_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_177

def sourceBody682_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_178

def sourceBody682_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_169 sourceBody682_179

def sourceBody682_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody682_182 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 40)) (some 675) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 41))

def sourceBody682_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_182 sourceBody682_4

def sourceBody682_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_183 sourceBody682_0

def sourceBody682_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_181 sourceBody682_184

def sourceBody682_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_124 sourceBody682_185

def sourceBody682_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_123 sourceBody682_186

def sourceBody682_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_187

def sourceBody682_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_188

def sourceBody682_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_189

def sourceBody682_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_180 sourceBody682_190

def sourceBody682_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody682_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody682_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 42)) (some 673) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 43))

def sourceBody682_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_194 sourceBody682_4

def sourceBody682_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_195 sourceBody682_0

def sourceBody682_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_193 sourceBody682_196

def sourceBody682_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_192 sourceBody682_197

def sourceBody682_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_123 sourceBody682_198

def sourceBody682_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_199

def sourceBody682_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_200

def sourceBody682_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_201

def sourceBody682_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_191 sourceBody682_202

def sourceBody682_204 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 44)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 45))

def sourceBody682_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_204 sourceBody682_4

def sourceBody682_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_205 sourceBody682_0

def sourceBody682_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_137 sourceBody682_206

def sourceBody682_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_113 sourceBody682_207

def sourceBody682_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_123 sourceBody682_208

def sourceBody682_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_209

def sourceBody682_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_210

def sourceBody682_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_211

def sourceBody682_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_203 sourceBody682_212

def sourceBody682_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 46)) (some 671) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 47))

def sourceBody682_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_214 sourceBody682_4

def sourceBody682_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_215 sourceBody682_0

def sourceBody682_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_78 sourceBody682_216

def sourceBody682_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_64 sourceBody682_217

def sourceBody682_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_218

def sourceBody682_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_219

def sourceBody682_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_220

def sourceBody682_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_213 sourceBody682_221

def sourceBody682_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 32)

def sourceBody682_224 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 48)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 49))

def sourceBody682_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_224 sourceBody682_4

def sourceBody682_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_225 sourceBody682_0

def sourceBody682_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_223 sourceBody682_226

def sourceBody682_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_113 sourceBody682_227

def sourceBody682_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_64 sourceBody682_228

def sourceBody682_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_229

def sourceBody682_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_230

def sourceBody682_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_231

def sourceBody682_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_222 sourceBody682_232

def sourceBody682_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 50)) (some 675) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 51))

def sourceBody682_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_234 sourceBody682_4

def sourceBody682_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_235 sourceBody682_0

def sourceBody682_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_125 sourceBody682_236

def sourceBody682_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_113 sourceBody682_237

def sourceBody682_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_64 sourceBody682_238

def sourceBody682_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_239

def sourceBody682_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_240

def sourceBody682_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_241

def sourceBody682_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_233 sourceBody682_242

def sourceBody682_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody682_245 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 52)) (some 673) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 53))

def sourceBody682_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_245 sourceBody682_4

def sourceBody682_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_246 sourceBody682_0

def sourceBody682_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_244 sourceBody682_247

def sourceBody682_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_192 sourceBody682_248

def sourceBody682_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_123 sourceBody682_249

def sourceBody682_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_250

def sourceBody682_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_251

def sourceBody682_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_252

def sourceBody682_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_243 sourceBody682_253

def sourceBody682_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 54)) (some 670) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 55))

def sourceBody682_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_255 sourceBody682_4

def sourceBody682_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_256 sourceBody682_0

def sourceBody682_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_223 sourceBody682_257

def sourceBody682_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_149 sourceBody682_258

def sourceBody682_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_77 sourceBody682_259

def sourceBody682_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_260

def sourceBody682_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_261

def sourceBody682_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_262

def sourceBody682_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_254 sourceBody682_263

def sourceBody682_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 56)) (some 675) ([26, 18, 34, 14]) (some (26, sourceBody682_55, 682, 57))

def sourceBody682_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_265 sourceBody682_4

def sourceBody682_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_266 sourceBody682_0

def sourceBody682_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_125 sourceBody682_267

def sourceBody682_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_149 sourceBody682_268

def sourceBody682_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_77 sourceBody682_269

def sourceBody682_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_52 sourceBody682_270

def sourceBody682_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_271

def sourceBody682_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_272

def sourceBody682_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_264 sourceBody682_273

def sourceBody682_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody682_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 12)

def sourceBody682_277 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 58)) (some 77) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 59))

def sourceBody682_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_277 sourceBody682_4

def sourceBody682_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_278 sourceBody682_0

def sourceBody682_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_276 sourceBody682_279

def sourceBody682_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_53 sourceBody682_280

def sourceBody682_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_275 sourceBody682_281

def sourceBody682_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_282

def sourceBody682_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_283

def sourceBody682_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_274 sourceBody682_284

def sourceBody682_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12])

def sourceBody682_287 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 60)) (some 77) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 61))

def sourceBody682_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_287 sourceBody682_4

def sourceBody682_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_288 sourceBody682_0

def sourceBody682_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_276 sourceBody682_289

def sourceBody682_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_123 sourceBody682_290

def sourceBody682_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_286 sourceBody682_291

def sourceBody682_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_292

def sourceBody682_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_293

def sourceBody682_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_285 sourceBody682_294

def sourceBody682_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody682_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody682_0, 682, 62)) (some 77) ([26, 18, 34]) (some (26, sourceBody682_55, 682, 63))

def sourceBody682_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_297 sourceBody682_4

def sourceBody682_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_298 sourceBody682_0

def sourceBody682_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_276 sourceBody682_299

def sourceBody682_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_77 sourceBody682_300

def sourceBody682_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_296 sourceBody682_301

def sourceBody682_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_302

def sourceBody682_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_303

def sourceBody682_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_295 sourceBody682_304

def sourceBody682_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody682_307 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody682_0, 682, 64)) (some 70) ([26]) (some (26, sourceBody682_55, 682, 65))

def sourceBody682_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_307 sourceBody682_4

def sourceBody682_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_308 sourceBody682_0

def sourceBody682_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_306 sourceBody682_309

def sourceBody682_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_310

def sourceBody682_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_311

def sourceBody682_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_305 sourceBody682_312

def sourceBody682_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody682_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody682_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_315 sourceBody682_0

def sourceBody682_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_314 sourceBody682_316

def sourceBody682_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_313 sourceBody682_317

def sourceBody682_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_51 sourceBody682_318

def sourceBody682_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_319

def sourceBody682_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_320

def sourceBody682_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_45 sourceBody682_321

def sourceBody682_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_322

def sourceBody682_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_323

def sourceBody682_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_39 sourceBody682_324

def sourceBody682_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_325

def sourceBody682_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_326

def sourceBody682_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_33 sourceBody682_327

def sourceBody682_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_328

def sourceBody682_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_329

def sourceBody682_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_27 sourceBody682_330

def sourceBody682_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_331

def sourceBody682_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_332

def sourceBody682_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_21 sourceBody682_333

def sourceBody682_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_334

def sourceBody682_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_335

def sourceBody682_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_15 sourceBody682_336

def sourceBody682_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_337

def sourceBody682_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_338

def sourceBody682_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_9 sourceBody682_339

def sourceBody682_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_340

def sourceBody682_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_8 sourceBody682_341

def sourceBody682_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_342

def sourceBody682_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_7 sourceBody682_343

def sourceBody682_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_344

def sourceBody682_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_6 sourceBody682_345

def sourceBody682_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_346

def sourceBody682_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_347

def sourceBody682_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_1 sourceBody682_348

def sourceBody682_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody682_0 sourceBody682_349

def source682 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (682, 4, sourceBody682_350)
end InitECandidate.Proofs.WordStages
