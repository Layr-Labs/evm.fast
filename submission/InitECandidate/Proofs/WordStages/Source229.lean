import InitECandidate.Proofs.WordStages.Source213
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody229_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody229_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 10)

def sourceBody229_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody229_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody229_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody229_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody229_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 28, 44, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody229_0, 229, 2)) (some 207) ([40, 32, 48, 18]) (some (40, sourceBody229_5, 229, 3))

def sourceBody229_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody229_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_6 sourceBody229_7

def sourceBody229_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_8 sourceBody229_0

def sourceBody229_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_4 sourceBody229_9

def sourceBody229_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_3 sourceBody229_10

def sourceBody229_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_2 sourceBody229_11

def sourceBody229_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_1 sourceBody229_12

def sourceBody229_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody229_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody229_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody229_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody229_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody229_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 32, 48, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody229_0, 229, 4)) (some 207) ([34, 26, 42, 22]) (some (34, sourceBody229_18, 229, 5))

def sourceBody229_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_19 sourceBody229_7

def sourceBody229_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_20 sourceBody229_0

def sourceBody229_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_17 sourceBody229_21

def sourceBody229_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_16 sourceBody229_22

def sourceBody229_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_15 sourceBody229_23

def sourceBody229_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_14 sourceBody229_24

def sourceBody229_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody229_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 32)

def sourceBody229_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody229_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody229_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody229_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody229_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 6)

def sourceBody229_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody229_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 32, 48, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody229_0, 229, 6)) (some 206) ([34, 26, 42, 22, 38, 30, 46, 20]) (some (34, sourceBody229_18, 229, 7))

def sourceBody229_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_34 sourceBody229_7

def sourceBody229_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_35 sourceBody229_0

def sourceBody229_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_33 sourceBody229_36

def sourceBody229_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_32 sourceBody229_37

def sourceBody229_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_31 sourceBody229_38

def sourceBody229_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_30 sourceBody229_39

def sourceBody229_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_29 sourceBody229_40

def sourceBody229_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_28 sourceBody229_41

def sourceBody229_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_27 sourceBody229_42

def sourceBody229_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_26 sourceBody229_43

def sourceBody229_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody229_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody229_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody229_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody229_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 32, 48, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody229_0, 229, 8)) (some 202) ([34, 26, 42, 22, 38, 30, 46, 20]) (some (34, sourceBody229_18, 229, 9))

def sourceBody229_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_49 sourceBody229_7

def sourceBody229_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_50 sourceBody229_0

def sourceBody229_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_48 sourceBody229_51

def sourceBody229_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_47 sourceBody229_52

def sourceBody229_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_46 sourceBody229_53

def sourceBody229_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_45 sourceBody229_54

def sourceBody229_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_29 sourceBody229_55

def sourceBody229_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_28 sourceBody229_56

def sourceBody229_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_27 sourceBody229_57

def sourceBody229_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_26 sourceBody229_58

def sourceBody229_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_44 sourceBody229_59

def sourceBody229_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody229_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody229_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody229_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody229_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody229_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody229_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 48)

def sourceBody229_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody229_69 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 105) ([0, 34, 26, 42, 22, 38, 30, 46, 20]) (none)

def sourceBody229_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_69 sourceBody229_0

def sourceBody229_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_68 sourceBody229_70

def sourceBody229_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_67 sourceBody229_71

def sourceBody229_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_66 sourceBody229_72

def sourceBody229_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_65 sourceBody229_73

def sourceBody229_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_64 sourceBody229_74

def sourceBody229_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_63 sourceBody229_75

def sourceBody229_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_62 sourceBody229_76

def sourceBody229_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_61 sourceBody229_77

def sourceBody229_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_60 sourceBody229_78

def sourceBody229_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_25 sourceBody229_79

def sourceBody229_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_80

def sourceBody229_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_81

def sourceBody229_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_82

def sourceBody229_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_83

def sourceBody229_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_84

def sourceBody229_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_85

def sourceBody229_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_86

def sourceBody229_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_87

def sourceBody229_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_13 sourceBody229_88

def sourceBody229_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_89

def sourceBody229_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_90

def sourceBody229_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_91

def sourceBody229_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_92

def sourceBody229_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_93

def sourceBody229_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_94

def sourceBody229_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_95

def sourceBody229_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody229_0 sourceBody229_96

def source229 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (229, 9, sourceBody229_97)
end InitECandidate.Proofs.WordStages
