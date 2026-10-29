import InitECandidate.Proofs.WordStages.Source636
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody652_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody652_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 2)

def sourceBody652_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def sourceBody652_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 2)) (some 648) ([76]) (some (76, sourceBody652_2, 652, 3))

def sourceBody652_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody652_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_3 sourceBody652_4

def sourceBody652_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_5 sourceBody652_0

def sourceBody652_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_1 sourceBody652_6

def sourceBody652_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_7

def sourceBody652_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_8

def sourceBody652_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 4)

def sourceBody652_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 6)

def sourceBody652_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 8)

def sourceBody652_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 10)

def sourceBody652_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 4)) (some 138) ([76, 58, 72, 66]) (some (76, sourceBody652_2, 652, 5))

def sourceBody652_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_14 sourceBody652_4

def sourceBody652_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_15 sourceBody652_0

def sourceBody652_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_13 sourceBody652_16

def sourceBody652_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_12 sourceBody652_17

def sourceBody652_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_11 sourceBody652_18

def sourceBody652_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_10 sourceBody652_19

def sourceBody652_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 28)

def sourceBody652_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 30)

def sourceBody652_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 32)

def sourceBody652_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 34)

def sourceBody652_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody652_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 6)) (some 138) ([58, 72, 66, 80]) (some (58, sourceBody652_25, 652, 7))

def sourceBody652_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_26 sourceBody652_4

def sourceBody652_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_27 sourceBody652_0

def sourceBody652_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_24 sourceBody652_28

def sourceBody652_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_23 sourceBody652_29

def sourceBody652_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_22 sourceBody652_30

def sourceBody652_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_21 sourceBody652_31

def sourceBody652_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 62)

def sourceBody652_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 76)

def sourceBody652_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def sourceBody652_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 8)) (some 93) ([72, 66]) (some (72, sourceBody652_35, 652, 9))

def sourceBody652_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_36 sourceBody652_4

def sourceBody652_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_37 sourceBody652_0

def sourceBody652_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_34 sourceBody652_38

def sourceBody652_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_33 sourceBody652_39

def sourceBody652_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody652_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 58)

def sourceBody652_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody652_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 66 (Flapjack.WordRegImm.reg 80) sourceBody652_43 sourceBody652_41

def sourceBody652_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_44 sourceBody652_4

def sourceBody652_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 66)

def sourceBody652_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody652_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 72)

def sourceBody652_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_48 sourceBody652_0

def sourceBody652_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_49 sourceBody652_0

def sourceBody652_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_47 sourceBody652_50

def sourceBody652_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_51

def sourceBody652_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 2)

def sourceBody652_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody652_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 10)) (some 650) ([66]) (some (66, sourceBody652_54, 652, 11))

def sourceBody652_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_55 sourceBody652_4

def sourceBody652_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_56 sourceBody652_0

def sourceBody652_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_53 sourceBody652_57

def sourceBody652_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_58

def sourceBody652_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_59

def sourceBody652_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_52 sourceBody652_60

def sourceBody652_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 4)

def sourceBody652_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 6)

def sourceBody652_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 8)

def sourceBody652_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 10)

def sourceBody652_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 58)

def sourceBody652_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 12)) (some 104) ([66, 80, 52, 68, 60]) (some (66, sourceBody652_54, 652, 13))

def sourceBody652_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_67 sourceBody652_4

def sourceBody652_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_68 sourceBody652_0

def sourceBody652_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_66 sourceBody652_69

def sourceBody652_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_65 sourceBody652_70

def sourceBody652_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_64 sourceBody652_71

def sourceBody652_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_63 sourceBody652_72

def sourceBody652_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_62 sourceBody652_73

def sourceBody652_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 72)

def sourceBody652_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody652_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody652_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody652_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 80 (Flapjack.WordRegImm.reg 52) sourceBody652_77 sourceBody652_78

def sourceBody652_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_79 sourceBody652_4

def sourceBody652_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 80)

def sourceBody652_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 2)

def sourceBody652_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 12)

def sourceBody652_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 14)

def sourceBody652_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 16)

def sourceBody652_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 18)

def sourceBody652_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 20)

def sourceBody652_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 22)

def sourceBody652_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 24)

def sourceBody652_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 26)

def sourceBody652_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def sourceBody652_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 14)) (some 651) ([80, 52, 68, 60, 74, 56, 70, 64, 78]) (some (80, sourceBody652_91, 652, 15))

def sourceBody652_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_92 sourceBody652_4

def sourceBody652_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_93 sourceBody652_0

def sourceBody652_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_90 sourceBody652_94

def sourceBody652_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_89 sourceBody652_95

def sourceBody652_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_88 sourceBody652_96

def sourceBody652_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_87 sourceBody652_97

def sourceBody652_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_86 sourceBody652_98

def sourceBody652_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_85 sourceBody652_99

def sourceBody652_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_84 sourceBody652_100

def sourceBody652_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_83 sourceBody652_101

def sourceBody652_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_82 sourceBody652_102

def sourceBody652_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_103

def sourceBody652_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_104

def sourceBody652_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody652_105 sourceBody652_0

def sourceBody652_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_106 sourceBody652_4

def sourceBody652_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_107 sourceBody652_0

def sourceBody652_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_81 sourceBody652_108

def sourceBody652_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_80 sourceBody652_109

def sourceBody652_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_76 sourceBody652_110

def sourceBody652_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_75 sourceBody652_111

def sourceBody652_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 28)

def sourceBody652_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 30)

def sourceBody652_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 32)

def sourceBody652_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 34)

def sourceBody652_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 58)

def sourceBody652_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 16)) (some 104) ([80, 52, 68, 60, 74]) (some (80, sourceBody652_91, 652, 17))

def sourceBody652_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_118 sourceBody652_4

def sourceBody652_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_119 sourceBody652_0

def sourceBody652_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_117 sourceBody652_120

def sourceBody652_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_116 sourceBody652_121

def sourceBody652_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_115 sourceBody652_122

def sourceBody652_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_114 sourceBody652_123

def sourceBody652_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_113 sourceBody652_124

def sourceBody652_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody652_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody652_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 52 (Flapjack.WordRegImm.reg 68) sourceBody652_76 sourceBody652_127

def sourceBody652_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_128 sourceBody652_4

def sourceBody652_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 52)

def sourceBody652_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 2)

def sourceBody652_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 36)

def sourceBody652_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 38)

def sourceBody652_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 40)

def sourceBody652_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 42)

def sourceBody652_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 44)

def sourceBody652_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 46)

def sourceBody652_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 48)

def sourceBody652_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 50)

def sourceBody652_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody652_141 : WordLangProgHOL (BitVec 64) :=
.call (some (([80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody652_0, 652, 18)) (some 651) ([52, 68, 60, 74, 56, 70, 64, 78, 54]) (some (52, sourceBody652_140, 652, 19))

def sourceBody652_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_141 sourceBody652_4

def sourceBody652_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_142 sourceBody652_0

def sourceBody652_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_139 sourceBody652_143

def sourceBody652_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_138 sourceBody652_144

def sourceBody652_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_137 sourceBody652_145

def sourceBody652_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_136 sourceBody652_146

def sourceBody652_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_135 sourceBody652_147

def sourceBody652_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_134 sourceBody652_148

def sourceBody652_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_133 sourceBody652_149

def sourceBody652_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_132 sourceBody652_150

def sourceBody652_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_131 sourceBody652_151

def sourceBody652_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_152

def sourceBody652_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_153

def sourceBody652_155 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.imm 0#64) sourceBody652_154 sourceBody652_0

def sourceBody652_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_155 sourceBody652_4

def sourceBody652_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_156 sourceBody652_0

def sourceBody652_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_130 sourceBody652_157

def sourceBody652_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_129 sourceBody652_158

def sourceBody652_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_126 sourceBody652_159

def sourceBody652_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_46 sourceBody652_160

def sourceBody652_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_125 sourceBody652_161

def sourceBody652_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_162

def sourceBody652_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_163

def sourceBody652_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_112 sourceBody652_164

def sourceBody652_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_74 sourceBody652_165

def sourceBody652_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_166

def sourceBody652_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_167

def sourceBody652_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_61 sourceBody652_168

def sourceBody652_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody652_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_169 sourceBody652_170

def sourceBody652_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody652_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.imm 0#64) sourceBody652_171 sourceBody652_172

def sourceBody652_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_173 sourceBody652_4

def sourceBody652_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_174 sourceBody652_0

def sourceBody652_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_46 sourceBody652_175

def sourceBody652_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_45 sourceBody652_176

def sourceBody652_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_42 sourceBody652_177

def sourceBody652_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_41 sourceBody652_178

def sourceBody652_180 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody652_179 (Flapjack.Spt.ls PUnit.unit)

def sourceBody652_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_180 sourceBody652_4

def sourceBody652_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_4 sourceBody652_181

def sourceBody652_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody652_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [72]

def sourceBody652_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_184 sourceBody652_0

def sourceBody652_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_183 sourceBody652_185

def sourceBody652_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_182 sourceBody652_186

def sourceBody652_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_40 sourceBody652_187

def sourceBody652_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_188

def sourceBody652_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_189

def sourceBody652_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_32 sourceBody652_190

def sourceBody652_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_191

def sourceBody652_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_192

def sourceBody652_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_20 sourceBody652_193

def sourceBody652_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_194

def sourceBody652_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_0 sourceBody652_195

def sourceBody652_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody652_9 sourceBody652_196

def source652 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (652, 26, sourceBody652_197)
end InitECandidate.Proofs.WordStages
