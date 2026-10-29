import InitECandidate.Proofs.WordStages.Source684
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody700_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody700_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody700_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 2)) (some 657) ([]) (some (12, sourceBody700_1, 700, 3))

def sourceBody700_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody700_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_2 sourceBody700_3

def sourceBody700_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_4 sourceBody700_0

def sourceBody700_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_5

def sourceBody700_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_6

def sourceBody700_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 4)) (some 69) ([]) (some (12, sourceBody700_1, 700, 5))

def sourceBody700_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_8 sourceBody700_3

def sourceBody700_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_9 sourceBody700_0

def sourceBody700_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody700_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody700_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 6)) (some 68) ([40]) (some (40, sourceBody700_12, 700, 7))

def sourceBody700_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_13 sourceBody700_3

def sourceBody700_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_14 sourceBody700_0

def sourceBody700_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_11 sourceBody700_15

def sourceBody700_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody700_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody700_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 8)) (some 68) ([26]) (some (26, sourceBody700_18, 700, 9))

def sourceBody700_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_19 sourceBody700_3

def sourceBody700_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_20 sourceBody700_0

def sourceBody700_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_17 sourceBody700_21

def sourceBody700_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody700_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody700_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 10)) (some 68) ([56]) (some (56, sourceBody700_24, 700, 11))

def sourceBody700_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_25 sourceBody700_3

def sourceBody700_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_26 sourceBody700_0

def sourceBody700_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_23 sourceBody700_27

def sourceBody700_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody700_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody700_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 12)) (some 68) ([8]) (some (8, sourceBody700_30, 700, 13))

def sourceBody700_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_31 sourceBody700_3

def sourceBody700_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_32 sourceBody700_0

def sourceBody700_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_29 sourceBody700_33

def sourceBody700_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody700_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody700_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 14)) (some 68) ([36]) (some (36, sourceBody700_36, 700, 15))

def sourceBody700_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_37 sourceBody700_3

def sourceBody700_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_38 sourceBody700_0

def sourceBody700_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_35 sourceBody700_39

def sourceBody700_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1152#64)

def sourceBody700_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody700_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 16)) (some 68) ([22]) (some (22, sourceBody700_42, 700, 17))

def sourceBody700_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_43 sourceBody700_3

def sourceBody700_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_44 sourceBody700_0

def sourceBody700_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_41 sourceBody700_45

def sourceBody700_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody700_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody700_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 18)) (some 68) ([52]) (some (52, sourceBody700_48, 700, 19))

def sourceBody700_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_49 sourceBody700_3

def sourceBody700_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_50 sourceBody700_0

def sourceBody700_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_47 sourceBody700_51

def sourceBody700_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody700_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody700_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 20)) (some 68) ([16]) (some (16, sourceBody700_54, 700, 21))

def sourceBody700_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_55 sourceBody700_3

def sourceBody700_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_56 sourceBody700_0

def sourceBody700_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_53 sourceBody700_57

def sourceBody700_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody700_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody700_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 22)) (some 68) ([44]) (some (44, sourceBody700_60, 700, 23))

def sourceBody700_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_61 sourceBody700_3

def sourceBody700_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_62 sourceBody700_0

def sourceBody700_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_59 sourceBody700_63

def sourceBody700_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody700_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody700_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 24)) (some 68) ([30]) (some (30, sourceBody700_66, 700, 25))

def sourceBody700_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_67 sourceBody700_3

def sourceBody700_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_68 sourceBody700_0

def sourceBody700_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_65 sourceBody700_69

def sourceBody700_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody700_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody700_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 26)) (some 68) ([60]) (some (60, sourceBody700_72, 700, 27))

def sourceBody700_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_73 sourceBody700_3

def sourceBody700_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_74 sourceBody700_0

def sourceBody700_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_71 sourceBody700_75

def sourceBody700_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody700_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody700_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody700_80 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 28)) (some 679) ([6, 34]) (some (6, sourceBody700_79, 700, 29))

def sourceBody700_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_80 sourceBody700_3

def sourceBody700_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_81 sourceBody700_0

def sourceBody700_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_78 sourceBody700_82

def sourceBody700_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_77 sourceBody700_83

def sourceBody700_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_84

def sourceBody700_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_85

def sourceBody700_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 44)

def sourceBody700_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 30)) (some 679) ([6, 34]) (some (6, sourceBody700_79, 700, 31))

def sourceBody700_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_88 sourceBody700_3

def sourceBody700_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_89 sourceBody700_0

def sourceBody700_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_87 sourceBody700_90

def sourceBody700_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_77 sourceBody700_91

def sourceBody700_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_92

def sourceBody700_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_93

def sourceBody700_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_86 sourceBody700_94

def sourceBody700_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody700_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody700_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 50) sourceBody700_100 sourceBody700_101

def sourceBody700_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_102 sourceBody700_3

def sourceBody700_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody700_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody700_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody700_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 50 50 34 20))

def sourceBody700_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_107 sourceBody700_0

def sourceBody700_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_106 sourceBody700_108

def sourceBody700_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_105 sourceBody700_109

def sourceBody700_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 50])

def sourceBody700_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody700_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 12)

def sourceBody700_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody700_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 32)) (some 695) ([28, 58]) (some (28, sourceBody700_114, 700, 33))

def sourceBody700_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_115 sourceBody700_3

def sourceBody700_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_116 sourceBody700_0

def sourceBody700_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_113 sourceBody700_117

def sourceBody700_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_112 sourceBody700_118

def sourceBody700_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 42)

def sourceBody700_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.reg 10) sourceBody700_122 sourceBody700_123

def sourceBody700_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_124 sourceBody700_3

def sourceBody700_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 58)

def sourceBody700_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 48)

def sourceBody700_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody700_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody700_0, 700, 34)) (some 70) ([58]) (some (58, sourceBody700_128, 700, 35))

def sourceBody700_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_129 sourceBody700_3

def sourceBody700_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_130 sourceBody700_0

def sourceBody700_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_127 sourceBody700_131

def sourceBody700_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_132

def sourceBody700_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_133

def sourceBody700_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody700_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody700_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_136 sourceBody700_0

def sourceBody700_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_135 sourceBody700_137

def sourceBody700_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_134 sourceBody700_138

def sourceBody700_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody700_139 sourceBody700_0

def sourceBody700_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_140 sourceBody700_3

def sourceBody700_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_141 sourceBody700_0

def sourceBody700_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_126 sourceBody700_142

def sourceBody700_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_125 sourceBody700_143

def sourceBody700_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_121 sourceBody700_144

def sourceBody700_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_120 sourceBody700_145

def sourceBody700_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody700_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 40)

def sourceBody700_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 36)) (some 696) ([58, 10]) (some (58, sourceBody700_128, 700, 37))

def sourceBody700_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_149 sourceBody700_3

def sourceBody700_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_150 sourceBody700_0

def sourceBody700_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_148 sourceBody700_151

def sourceBody700_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_147 sourceBody700_152

def sourceBody700_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody700_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 38) sourceBody700_156 sourceBody700_121

def sourceBody700_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_157 sourceBody700_3

def sourceBody700_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody700_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def sourceBody700_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody700_162 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody700_0, 700, 38)) (some 70) ([10]) (some (10, sourceBody700_161, 700, 39))

def sourceBody700_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_162 sourceBody700_3

def sourceBody700_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_163 sourceBody700_0

def sourceBody700_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_160 sourceBody700_164

def sourceBody700_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_165

def sourceBody700_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_166

def sourceBody700_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody700_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [58]

def sourceBody700_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_169 sourceBody700_0

def sourceBody700_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_168 sourceBody700_170

def sourceBody700_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_167 sourceBody700_171

def sourceBody700_173 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody700_172 sourceBody700_0

def sourceBody700_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_173 sourceBody700_3

def sourceBody700_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_174 sourceBody700_0

def sourceBody700_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_159 sourceBody700_175

def sourceBody700_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_158 sourceBody700_176

def sourceBody700_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_155 sourceBody700_177

def sourceBody700_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_154 sourceBody700_178

def sourceBody700_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 26)

def sourceBody700_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody700_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 4891460686036598785#64)

def sourceBody700_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 2896914383306846353#64)

def sourceBody700_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody700_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody700_186 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 40)) (some 684) ([10, 38, 24, 54, 18, 46, 32]) (some (10, sourceBody700_161, 700, 41))

def sourceBody700_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_186 sourceBody700_3

def sourceBody700_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_187 sourceBody700_0

def sourceBody700_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_185 sourceBody700_188

def sourceBody700_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_184 sourceBody700_189

def sourceBody700_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_183 sourceBody700_190

def sourceBody700_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_182 sourceBody700_191

def sourceBody700_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_181 sourceBody700_192

def sourceBody700_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_180 sourceBody700_193

def sourceBody700_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_156 sourceBody700_194

def sourceBody700_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_195

def sourceBody700_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_196

def sourceBody700_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_179 sourceBody700_197

def sourceBody700_199 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 42)) (some 681) ([10, 38]) (some (10, sourceBody700_161, 700, 43))

def sourceBody700_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_199 sourceBody700_3

def sourceBody700_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_200 sourceBody700_0

def sourceBody700_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_180 sourceBody700_201

def sourceBody700_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_156 sourceBody700_202

def sourceBody700_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 24) sourceBody700_205 sourceBody700_155

def sourceBody700_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_206 sourceBody700_3

def sourceBody700_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def sourceBody700_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 48)

def sourceBody700_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody700_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody700_0, 700, 44)) (some 70) ([38]) (some (38, sourceBody700_210, 700, 45))

def sourceBody700_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_211 sourceBody700_3

def sourceBody700_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_212 sourceBody700_0

def sourceBody700_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_209 sourceBody700_213

def sourceBody700_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_214

def sourceBody700_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_215

def sourceBody700_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody700_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody700_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_218 sourceBody700_0

def sourceBody700_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_217 sourceBody700_219

def sourceBody700_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_216 sourceBody700_220

def sourceBody700_222 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody700_221 sourceBody700_0

def sourceBody700_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_222 sourceBody700_3

def sourceBody700_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_223 sourceBody700_0

def sourceBody700_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_208 sourceBody700_224

def sourceBody700_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_207 sourceBody700_225

def sourceBody700_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_204 sourceBody700_226

def sourceBody700_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_126 sourceBody700_227

def sourceBody700_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody700_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 56)

def sourceBody700_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody700_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4891460686036598785#64)

def sourceBody700_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 2896914383306846353#64)

def sourceBody700_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody700_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody700_236 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 46)) (some 684) ([38, 24, 54, 18, 46, 32, 62]) (some (38, sourceBody700_210, 700, 47))

def sourceBody700_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_236 sourceBody700_3

def sourceBody700_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_237 sourceBody700_0

def sourceBody700_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_235 sourceBody700_238

def sourceBody700_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_234 sourceBody700_239

def sourceBody700_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_233 sourceBody700_240

def sourceBody700_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_232 sourceBody700_241

def sourceBody700_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_231 sourceBody700_242

def sourceBody700_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_230 sourceBody700_243

def sourceBody700_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_229 sourceBody700_244

def sourceBody700_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_245

def sourceBody700_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_246

def sourceBody700_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_228 sourceBody700_247

def sourceBody700_249 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 48)) (some 681) ([38, 24]) (some (38, sourceBody700_210, 700, 49))

def sourceBody700_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_249 sourceBody700_3

def sourceBody700_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_250 sourceBody700_0

def sourceBody700_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_230 sourceBody700_251

def sourceBody700_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_229 sourceBody700_252

def sourceBody700_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_256 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 54) sourceBody700_255 sourceBody700_204

def sourceBody700_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_256 sourceBody700_3

def sourceBody700_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody700_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 48)

def sourceBody700_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody700_261 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody700_0, 700, 50)) (some 70) ([24]) (some (24, sourceBody700_260, 700, 51))

def sourceBody700_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_261 sourceBody700_3

def sourceBody700_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_262 sourceBody700_0

def sourceBody700_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_259 sourceBody700_263

def sourceBody700_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_264

def sourceBody700_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_265

def sourceBody700_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody700_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_267 sourceBody700_0

def sourceBody700_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_229 sourceBody700_268

def sourceBody700_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_266 sourceBody700_269

def sourceBody700_271 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody700_270 sourceBody700_0

def sourceBody700_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_271 sourceBody700_3

def sourceBody700_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_272 sourceBody700_0

def sourceBody700_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_258 sourceBody700_273

def sourceBody700_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_257 sourceBody700_274

def sourceBody700_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_254 sourceBody700_275

def sourceBody700_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_159 sourceBody700_276

def sourceBody700_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def sourceBody700_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 52)) (some 681) ([24, 54]) (some (24, sourceBody700_260, 700, 53))

def sourceBody700_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_279 sourceBody700_3

def sourceBody700_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_280 sourceBody700_0

def sourceBody700_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_278 sourceBody700_281

def sourceBody700_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_255 sourceBody700_282

def sourceBody700_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody700_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 40)

def sourceBody700_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody700_287 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 54)) (some 681) ([54, 18]) (some (54, sourceBody700_286, 700, 55))

def sourceBody700_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_287 sourceBody700_3

def sourceBody700_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_288 sourceBody700_0

def sourceBody700_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_285 sourceBody700_289

def sourceBody700_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_284 sourceBody700_290

def sourceBody700_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 24])

def sourceBody700_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_296 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 46) sourceBody700_294 sourceBody700_295

def sourceBody700_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_296 sourceBody700_3

def sourceBody700_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody700_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody700_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 40)

def sourceBody700_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody700_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 56)) (some 686) ([18, 46]) (some (18, sourceBody700_301, 700, 57))

def sourceBody700_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_302 sourceBody700_3

def sourceBody700_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_303 sourceBody700_0

def sourceBody700_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_300 sourceBody700_304

def sourceBody700_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_299 sourceBody700_305

def sourceBody700_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_306

def sourceBody700_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_307

def sourceBody700_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def sourceBody700_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody700_311 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 58)) (some 687) ([18, 46]) (some (18, sourceBody700_301, 700, 59))

def sourceBody700_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_311 sourceBody700_3

def sourceBody700_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_312 sourceBody700_0

def sourceBody700_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_310 sourceBody700_313

def sourceBody700_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_309 sourceBody700_314

def sourceBody700_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_315

def sourceBody700_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_316

def sourceBody700_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_308 sourceBody700_317

def sourceBody700_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody700_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody700_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody700_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 36)

def sourceBody700_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 60)) (some 693) ([18, 46, 32, 62]) (some (18, sourceBody700_301, 700, 61))

def sourceBody700_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_323 sourceBody700_3

def sourceBody700_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_324 sourceBody700_0

def sourceBody700_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_322 sourceBody700_325

def sourceBody700_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_321 sourceBody700_326

def sourceBody700_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_320 sourceBody700_327

def sourceBody700_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_319 sourceBody700_328

def sourceBody700_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_329

def sourceBody700_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_330

def sourceBody700_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_318 sourceBody700_331

def sourceBody700_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody700_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 16)

def sourceBody700_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody700_336 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 62)) (some 668) ([18, 46, 32]) (some (18, sourceBody700_301, 700, 63))

def sourceBody700_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_336 sourceBody700_3

def sourceBody700_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_337 sourceBody700_0

def sourceBody700_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_335 sourceBody700_338

def sourceBody700_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_334 sourceBody700_339

def sourceBody700_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_333 sourceBody700_340

def sourceBody700_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_341

def sourceBody700_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_342

def sourceBody700_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_332 sourceBody700_343

def sourceBody700_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 44)

def sourceBody700_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody700_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 52)

def sourceBody700_348 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 64)) (some 668) ([18, 46, 32]) (some (18, sourceBody700_301, 700, 65))

def sourceBody700_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_348 sourceBody700_3

def sourceBody700_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_349 sourceBody700_0

def sourceBody700_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_347 sourceBody700_350

def sourceBody700_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_346 sourceBody700_351

def sourceBody700_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_345 sourceBody700_352

def sourceBody700_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_353

def sourceBody700_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_354

def sourceBody700_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_344 sourceBody700_355

def sourceBody700_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_357 sourceBody700_0

def sourceBody700_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_358 sourceBody700_0

def sourceBody700_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_356 sourceBody700_359

def sourceBody700_361 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody700_360 sourceBody700_0

def sourceBody700_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_361 sourceBody700_3

def sourceBody700_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_362 sourceBody700_0

def sourceBody700_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_298 sourceBody700_363

def sourceBody700_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_297 sourceBody700_364

def sourceBody700_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_293 sourceBody700_365

def sourceBody700_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_292 sourceBody700_366

def sourceBody700_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody700_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 54)

def sourceBody700_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_369 sourceBody700_0

def sourceBody700_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_370 sourceBody700_0

def sourceBody700_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_368 sourceBody700_371

def sourceBody700_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_372

def sourceBody700_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_367 sourceBody700_373

def sourceBody700_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_291 sourceBody700_374

def sourceBody700_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_375

def sourceBody700_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_376

def sourceBody700_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_283 sourceBody700_377

def sourceBody700_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_378

def sourceBody700_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_379

def sourceBody700_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_277 sourceBody700_380

def sourceBody700_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_253 sourceBody700_381

def sourceBody700_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_382

def sourceBody700_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_383

def sourceBody700_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_248 sourceBody700_384

def sourceBody700_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_203 sourceBody700_385

def sourceBody700_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_386

def sourceBody700_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_387

def sourceBody700_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_198 sourceBody700_388

def sourceBody700_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_153 sourceBody700_389

def sourceBody700_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_390

def sourceBody700_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_391

def sourceBody700_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_146 sourceBody700_392

def sourceBody700_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_119 sourceBody700_393

def sourceBody700_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_394

def sourceBody700_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_395

def sourceBody700_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_111 sourceBody700_396

def sourceBody700_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_110 sourceBody700_397

def sourceBody700_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody700_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_398 sourceBody700_399

def sourceBody700_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody700_402 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody700_400 sourceBody700_401

def sourceBody700_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_402 sourceBody700_3

def sourceBody700_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_403 sourceBody700_0

def sourceBody700_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_104 sourceBody700_404

def sourceBody700_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_103 sourceBody700_405

def sourceBody700_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_99 sourceBody700_406

def sourceBody700_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_98 sourceBody700_407

def sourceBody700_409 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) sourceBody700_408 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody700_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_409 sourceBody700_3

def sourceBody700_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_3 sourceBody700_410

def sourceBody700_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 60)

def sourceBody700_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody700_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody700_417 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 50 (Flapjack.WordRegImm.reg 14) sourceBody700_415 sourceBody700_416

def sourceBody700_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_417 sourceBody700_3

def sourceBody700_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 50)

def sourceBody700_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def sourceBody700_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 44)

def sourceBody700_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody700_423 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 66)) (some 691) ([50, 14]) (some (50, sourceBody700_422, 700, 67))

def sourceBody700_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_423 sourceBody700_3

def sourceBody700_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_424 sourceBody700_0

def sourceBody700_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_421 sourceBody700_425

def sourceBody700_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_420 sourceBody700_426

def sourceBody700_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_427

def sourceBody700_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_428

def sourceBody700_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def sourceBody700_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody700_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody700_433 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 68)) (some 668) ([50, 14, 42]) (some (50, sourceBody700_422, 700, 69))

def sourceBody700_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_433 sourceBody700_3

def sourceBody700_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_434 sourceBody700_0

def sourceBody700_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_432 sourceBody700_435

def sourceBody700_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_431 sourceBody700_436

def sourceBody700_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_430 sourceBody700_437

def sourceBody700_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_438

def sourceBody700_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_439

def sourceBody700_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_429 sourceBody700_440

def sourceBody700_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 30)

def sourceBody700_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 384#64]))

def sourceBody700_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody700_445 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 70)) (some 692) ([50, 14, 42, 28]) (some (50, sourceBody700_422, 700, 71))

def sourceBody700_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_445 sourceBody700_3

def sourceBody700_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_446 sourceBody700_0

def sourceBody700_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_444 sourceBody700_447

def sourceBody700_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_443 sourceBody700_448

def sourceBody700_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_431 sourceBody700_449

def sourceBody700_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_442 sourceBody700_450

def sourceBody700_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_451

def sourceBody700_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_452

def sourceBody700_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_441 sourceBody700_453

def sourceBody700_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 22)

def sourceBody700_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 384#64)

def sourceBody700_457 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 72)) (some 78) ([50, 14]) (some (50, sourceBody700_422, 700, 73))

def sourceBody700_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_457 sourceBody700_3

def sourceBody700_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_458 sourceBody700_0

def sourceBody700_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_456 sourceBody700_459

def sourceBody700_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_455 sourceBody700_460

def sourceBody700_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_461

def sourceBody700_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_462

def sourceBody700_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_454 sourceBody700_463

def sourceBody700_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody700_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 15230403791020821917#64)

def sourceBody700_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 754611498739239741#64)

def sourceBody700_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 7381016538464732716#64)

def sourceBody700_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1011752739694698287#64)

def sourceBody700_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 50)

def sourceBody700_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 58

def sourceBody700_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_471 sourceBody700_0

def sourceBody700_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_470 sourceBody700_472

def sourceBody700_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 14)

def sourceBody700_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64])
  58

def sourceBody700_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_475 sourceBody700_0

def sourceBody700_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_474 sourceBody700_476

def sourceBody700_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 16#64])
  58

def sourceBody700_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_478 sourceBody700_0

def sourceBody700_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_120 sourceBody700_479

def sourceBody700_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 28)

def sourceBody700_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 24#64])
  58

def sourceBody700_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_482 sourceBody700_0

def sourceBody700_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_481 sourceBody700_483

def sourceBody700_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_484 sourceBody700_0

def sourceBody700_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_480 sourceBody700_485

def sourceBody700_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_477 sourceBody700_486

def sourceBody700_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_473 sourceBody700_487

def sourceBody700_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_469 sourceBody700_488

def sourceBody700_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_489

def sourceBody700_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_468 sourceBody700_490

def sourceBody700_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_491

def sourceBody700_493 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_467 sourceBody700_492

def sourceBody700_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_493

def sourceBody700_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_466 sourceBody700_494

def sourceBody700_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_495

def sourceBody700_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_465 sourceBody700_496

def sourceBody700_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_497

def sourceBody700_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_464 sourceBody700_498

def sourceBody700_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def sourceBody700_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody700_502 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 74)) (some 79) ([20, 50, 14]) (some (20, sourceBody700_501, 700, 75))

def sourceBody700_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_502 sourceBody700_3

def sourceBody700_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_503 sourceBody700_0

def sourceBody700_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_456 sourceBody700_504

def sourceBody700_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_455 sourceBody700_505

def sourceBody700_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_500 sourceBody700_506

def sourceBody700_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_499 sourceBody700_507

def sourceBody700_509 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody700_508 sourceBody700_0

def sourceBody700_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_509 sourceBody700_3

def sourceBody700_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_510 sourceBody700_0

def sourceBody700_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_419 sourceBody700_511

def sourceBody700_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_418 sourceBody700_512

def sourceBody700_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_414 sourceBody700_513

def sourceBody700_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_413 sourceBody700_514

def sourceBody700_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 48)

def sourceBody700_517 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody700_0, 700, 76)) (some 70) ([50]) (some (50, sourceBody700_422, 700, 77))

def sourceBody700_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_517 sourceBody700_3

def sourceBody700_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_518 sourceBody700_0

def sourceBody700_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_516 sourceBody700_519

def sourceBody700_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_520

def sourceBody700_522 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_521

def sourceBody700_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_515 sourceBody700_522

def sourceBody700_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody700_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody700_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_525 sourceBody700_0

def sourceBody700_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_524 sourceBody700_526

def sourceBody700_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_523 sourceBody700_527

def sourceBody700_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_412 sourceBody700_528

def sourceBody700_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_529

def sourceBody700_531 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_411 sourceBody700_530

def sourceBody700_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_97 sourceBody700_531

def sourceBody700_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_532

def sourceBody700_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_96 sourceBody700_533

def sourceBody700_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_534

def sourceBody700_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_95 sourceBody700_535

def sourceBody700_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_76 sourceBody700_536

def sourceBody700_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_537

def sourceBody700_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_538

def sourceBody700_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_70 sourceBody700_539

def sourceBody700_541 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_540

def sourceBody700_542 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_541

def sourceBody700_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_64 sourceBody700_542

def sourceBody700_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_543

def sourceBody700_545 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_544

def sourceBody700_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_58 sourceBody700_545

def sourceBody700_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_546

def sourceBody700_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_547

def sourceBody700_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_52 sourceBody700_548

def sourceBody700_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_549

def sourceBody700_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_550

def sourceBody700_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_46 sourceBody700_551

def sourceBody700_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_552

def sourceBody700_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_553

def sourceBody700_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_40 sourceBody700_554

def sourceBody700_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_555

def sourceBody700_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_556

def sourceBody700_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_34 sourceBody700_557

def sourceBody700_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_558

def sourceBody700_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_559

def sourceBody700_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_28 sourceBody700_560

def sourceBody700_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_561

def sourceBody700_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_562

def sourceBody700_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_22 sourceBody700_563

def sourceBody700_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_564

def sourceBody700_566 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_565

def sourceBody700_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_16 sourceBody700_566

def sourceBody700_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_567

def sourceBody700_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_568

def sourceBody700_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_10 sourceBody700_569

def sourceBody700_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_570

def sourceBody700_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_0 sourceBody700_571

def sourceBody700_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody700_7 sourceBody700_572

def source700 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (700, 3, sourceBody700_573)
end InitECandidate.Proofs.WordStages
