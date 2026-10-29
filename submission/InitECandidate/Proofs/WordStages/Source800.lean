import InitECandidate.Proofs.WordStages.Source784
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody800_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody800_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody800_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 2)) (some 69) ([]) (some (36, sourceBody800_1, 800, 3))

def sourceBody800_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody800_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_2 sourceBody800_3

def sourceBody800_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_4 sourceBody800_0

def sourceBody800_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody800_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody800_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 4)) (some 68) ([24]) (some (24, sourceBody800_7, 800, 5))

def sourceBody800_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_8 sourceBody800_3

def sourceBody800_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_9 sourceBody800_0

def sourceBody800_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_6 sourceBody800_10

def sourceBody800_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody800_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody800_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody800_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 288#64])

def sourceBody800_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 384#64])

def sourceBody800_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 480#64])

def sourceBody800_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 24)

def sourceBody800_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody800_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody800_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 6)) (some 729) ([38, 28]) (some (38, sourceBody800_20, 800, 7))

def sourceBody800_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_21 sourceBody800_3

def sourceBody800_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_22 sourceBody800_0

def sourceBody800_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_19 sourceBody800_23

def sourceBody800_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_18 sourceBody800_24

def sourceBody800_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_25

def sourceBody800_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_26

def sourceBody800_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody800_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody800_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 50) sourceBody800_31 sourceBody800_32

def sourceBody800_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_33 sourceBody800_3

def sourceBody800_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody800_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def sourceBody800_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 24)

def sourceBody800_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody800_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody800_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 8)) (some 739) ([28, 50, 8]) (some (28, sourceBody800_39, 800, 9))

def sourceBody800_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_40 sourceBody800_3

def sourceBody800_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_41 sourceBody800_0

def sourceBody800_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_38 sourceBody800_42

def sourceBody800_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_37 sourceBody800_43

def sourceBody800_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_36 sourceBody800_44

def sourceBody800_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_45

def sourceBody800_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_46

def sourceBody800_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody800_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 38)

def sourceBody800_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_49 sourceBody800_0

def sourceBody800_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_50 sourceBody800_0

def sourceBody800_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_48 sourceBody800_51

def sourceBody800_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_52

def sourceBody800_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_47 sourceBody800_53

def sourceBody800_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody800_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_54 sourceBody800_55

def sourceBody800_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody800_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody800_56 sourceBody800_57

def sourceBody800_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_58 sourceBody800_3

def sourceBody800_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_59 sourceBody800_0

def sourceBody800_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_35 sourceBody800_60

def sourceBody800_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_34 sourceBody800_61

def sourceBody800_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_30 sourceBody800_62

def sourceBody800_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_29 sourceBody800_63

def sourceBody800_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody800_64 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody800_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_65 sourceBody800_3

def sourceBody800_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_3 sourceBody800_66

def sourceBody800_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 46)

def sourceBody800_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody800_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody800_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 10)) (some 739) ([28, 50, 8]) (some (28, sourceBody800_39, 800, 11))

def sourceBody800_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_71 sourceBody800_3

def sourceBody800_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_72 sourceBody800_0

def sourceBody800_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_70 sourceBody800_73

def sourceBody800_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_69 sourceBody800_74

def sourceBody800_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_68 sourceBody800_75

def sourceBody800_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_76

def sourceBody800_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_77

def sourceBody800_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_67 sourceBody800_78

def sourceBody800_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody800_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 12)) (some 739) ([28, 50, 8]) (some (28, sourceBody800_39, 800, 13))

def sourceBody800_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_81 sourceBody800_3

def sourceBody800_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_82 sourceBody800_0

def sourceBody800_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_38 sourceBody800_83

def sourceBody800_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_37 sourceBody800_84

def sourceBody800_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_80 sourceBody800_85

def sourceBody800_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_86

def sourceBody800_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_87

def sourceBody800_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_79 sourceBody800_88

def sourceBody800_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 46)

def sourceBody800_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody800_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 14)) (some 739) ([28, 50, 8]) (some (28, sourceBody800_39, 800, 15))

def sourceBody800_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_92 sourceBody800_3

def sourceBody800_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_93 sourceBody800_0

def sourceBody800_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_91 sourceBody800_94

def sourceBody800_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_90 sourceBody800_95

def sourceBody800_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_80 sourceBody800_96

def sourceBody800_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_97

def sourceBody800_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_98

def sourceBody800_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_89 sourceBody800_99

def sourceBody800_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody800_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 10)

def sourceBody800_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 1528#64])

def sourceBody800_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody800_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 16)) (some 744) ([28, 50, 8, 30]) (some (28, sourceBody800_39, 800, 17))

def sourceBody800_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_105 sourceBody800_3

def sourceBody800_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_106 sourceBody800_0

def sourceBody800_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_104 sourceBody800_107

def sourceBody800_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_103 sourceBody800_108

def sourceBody800_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_102 sourceBody800_109

def sourceBody800_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_101 sourceBody800_110

def sourceBody800_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_111

def sourceBody800_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_112

def sourceBody800_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_100 sourceBody800_113

def sourceBody800_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 32)

def sourceBody800_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 46)

def sourceBody800_117 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 18)) (some 739) ([28, 50, 8]) (some (28, sourceBody800_39, 800, 19))

def sourceBody800_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_117 sourceBody800_3

def sourceBody800_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_118 sourceBody800_0

def sourceBody800_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_116 sourceBody800_119

def sourceBody800_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_115 sourceBody800_120

def sourceBody800_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_101 sourceBody800_121

def sourceBody800_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_122

def sourceBody800_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_123

def sourceBody800_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_114 sourceBody800_124

def sourceBody800_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 2)

def sourceBody800_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 32)

def sourceBody800_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody800_130 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 20)) (some 729) ([50, 8]) (some (50, sourceBody800_129, 800, 21))

def sourceBody800_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_130 sourceBody800_3

def sourceBody800_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_131 sourceBody800_0

def sourceBody800_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_128 sourceBody800_132

def sourceBody800_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_127 sourceBody800_133

def sourceBody800_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_134

def sourceBody800_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_135

def sourceBody800_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_28 sourceBody800_0

def sourceBody800_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_137 sourceBody800_0

def sourceBody800_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_136 sourceBody800_138

def sourceBody800_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def sourceBody800_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody800_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 8) sourceBody800_142 sourceBody800_143

def sourceBody800_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_144 sourceBody800_3

def sourceBody800_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 50)

def sourceBody800_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody800_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 30 30 50 8))

def sourceBody800_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody800_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 392#64]),
      Flapjack.WordLangExpHOL.const 5216#64, Flapjack.WordLangExpHOL.var 30])

def sourceBody800_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 32)

def sourceBody800_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 22)) (some 739) ([18, 40, 14]) (some (50, sourceBody800_129, 800, 23))

def sourceBody800_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_152 sourceBody800_3

def sourceBody800_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_153 sourceBody800_0

def sourceBody800_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_151 sourceBody800_154

def sourceBody800_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_150 sourceBody800_155

def sourceBody800_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_149 sourceBody800_156

def sourceBody800_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_148 sourceBody800_157

def sourceBody800_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_147 sourceBody800_158

def sourceBody800_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_140 sourceBody800_159

def sourceBody800_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_160

def sourceBody800_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_161

def sourceBody800_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 42)

def sourceBody800_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody800_165 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 24)) (some 740) ([50, 8]) (some (50, sourceBody800_129, 800, 25))

def sourceBody800_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_165 sourceBody800_3

def sourceBody800_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_166 sourceBody800_0

def sourceBody800_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_164 sourceBody800_167

def sourceBody800_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_163 sourceBody800_168

def sourceBody800_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_169

def sourceBody800_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_170

def sourceBody800_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_162 sourceBody800_171

def sourceBody800_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 42)

def sourceBody800_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody800_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 26)) (some 739) ([50, 8, 30]) (some (50, sourceBody800_129, 800, 27))

def sourceBody800_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_175 sourceBody800_3

def sourceBody800_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_176 sourceBody800_0

def sourceBody800_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_174 sourceBody800_177

def sourceBody800_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_173 sourceBody800_178

def sourceBody800_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_163 sourceBody800_179

def sourceBody800_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_180

def sourceBody800_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_181

def sourceBody800_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_172 sourceBody800_182

def sourceBody800_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody800_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 28)) (some 735) ([50, 8, 30]) (some (50, sourceBody800_129, 800, 29))

def sourceBody800_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_185 sourceBody800_3

def sourceBody800_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_186 sourceBody800_0

def sourceBody800_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_184 sourceBody800_187

def sourceBody800_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_173 sourceBody800_188

def sourceBody800_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_163 sourceBody800_189

def sourceBody800_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_190

def sourceBody800_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_191

def sourceBody800_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_183 sourceBody800_192

def sourceBody800_194 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 30)) (some 732) ([50]) (some (50, sourceBody800_129, 800, 31))

def sourceBody800_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_194 sourceBody800_3

def sourceBody800_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_195 sourceBody800_0

def sourceBody800_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_163 sourceBody800_196

def sourceBody800_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_201 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 30) sourceBody800_199 sourceBody800_200

def sourceBody800_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_201 sourceBody800_3

def sourceBody800_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody800_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.reg 14) sourceBody800_205 sourceBody800_203

def sourceBody800_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_206 sourceBody800_3

def sourceBody800_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def sourceBody800_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_212 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 48) sourceBody800_210 sourceBody800_211

def sourceBody800_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_212 sourceBody800_3

def sourceBody800_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody800_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody800_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_217 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 22) sourceBody800_216 sourceBody800_214

def sourceBody800_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_217 sourceBody800_3

def sourceBody800_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.var 34])

def sourceBody800_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody800_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_220 sourceBody800_0

def sourceBody800_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_221 sourceBody800_0

def sourceBody800_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody800_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 20)

def sourceBody800_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody800_226 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 32)) (some 729) ([8, 30]) (some (8, sourceBody800_225, 800, 33))

def sourceBody800_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_226 sourceBody800_3

def sourceBody800_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_227 sourceBody800_0

def sourceBody800_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_224 sourceBody800_228

def sourceBody800_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_223 sourceBody800_229

def sourceBody800_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_230

def sourceBody800_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_231

def sourceBody800_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_222 sourceBody800_232

def sourceBody800_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 0#64) sourceBody800_233 sourceBody800_0

def sourceBody800_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_234 sourceBody800_3

def sourceBody800_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_235 sourceBody800_0

def sourceBody800_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_219 sourceBody800_236

def sourceBody800_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_218 sourceBody800_237

def sourceBody800_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_215 sourceBody800_238

def sourceBody800_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_214 sourceBody800_239

def sourceBody800_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_213 sourceBody800_240

def sourceBody800_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_209 sourceBody800_241

def sourceBody800_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_208 sourceBody800_242

def sourceBody800_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_207 sourceBody800_243

def sourceBody800_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_204 sourceBody800_244

def sourceBody800_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_203 sourceBody800_245

def sourceBody800_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_202 sourceBody800_246

def sourceBody800_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_198 sourceBody800_247

def sourceBody800_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_35 sourceBody800_248

def sourceBody800_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody800_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 50)

def sourceBody800_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_251 sourceBody800_0

def sourceBody800_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_252 sourceBody800_0

def sourceBody800_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_250 sourceBody800_253

def sourceBody800_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_254

def sourceBody800_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_249 sourceBody800_255

def sourceBody800_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_197 sourceBody800_256

def sourceBody800_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_257

def sourceBody800_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_258

def sourceBody800_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_193 sourceBody800_259

def sourceBody800_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_260 sourceBody800_55

def sourceBody800_262 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody800_261 sourceBody800_57

def sourceBody800_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_262 sourceBody800_3

def sourceBody800_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_263 sourceBody800_0

def sourceBody800_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_146 sourceBody800_264

def sourceBody800_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_145 sourceBody800_265

def sourceBody800_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_141 sourceBody800_266

def sourceBody800_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_140 sourceBody800_267

def sourceBody800_269 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody800_268 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody800_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_269 sourceBody800_3

def sourceBody800_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_3 sourceBody800_270

def sourceBody800_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_139 sourceBody800_271

def sourceBody800_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 12)

def sourceBody800_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody800_0, 800, 34)) (some 70) ([50]) (some (50, sourceBody800_129, 800, 35))

def sourceBody800_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_274 sourceBody800_3

def sourceBody800_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_275 sourceBody800_0

def sourceBody800_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_273 sourceBody800_276

def sourceBody800_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_277

def sourceBody800_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_278

def sourceBody800_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_272 sourceBody800_279

def sourceBody800_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 38)

def sourceBody800_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody800_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_282 sourceBody800_0

def sourceBody800_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_281 sourceBody800_283

def sourceBody800_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_280 sourceBody800_284

def sourceBody800_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_126 sourceBody800_285

def sourceBody800_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_286

def sourceBody800_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_125 sourceBody800_287

def sourceBody800_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_28 sourceBody800_288

def sourceBody800_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_289

def sourceBody800_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_27 sourceBody800_290

def sourceBody800_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_17 sourceBody800_291

def sourceBody800_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_292

def sourceBody800_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_16 sourceBody800_293

def sourceBody800_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_294

def sourceBody800_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_15 sourceBody800_295

def sourceBody800_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_296

def sourceBody800_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_14 sourceBody800_297

def sourceBody800_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_298

def sourceBody800_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_13 sourceBody800_299

def sourceBody800_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_300

def sourceBody800_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_12 sourceBody800_301

def sourceBody800_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_302

def sourceBody800_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_11 sourceBody800_303

def sourceBody800_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_304

def sourceBody800_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_305

def sourceBody800_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_5 sourceBody800_306

def sourceBody800_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_307

def sourceBody800_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody800_0 sourceBody800_308

def source800 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (800, 4, sourceBody800_309)
end InitECandidate.Proofs.WordStages
