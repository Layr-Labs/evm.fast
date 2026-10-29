import InitECandidate.Proofs.WordStages.Source642
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody658_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody658_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody658_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody658_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody658_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody658_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody658_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody658_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def sourceBody658_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody658_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody658_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 26, 40, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody658_0, 658, 2)) (some 116) ([36, 28, 42, 18, 30, 24, 38, 20]) (some (36, sourceBody658_9, 658, 3))

def sourceBody658_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody658_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_10 sourceBody658_11

def sourceBody658_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_12 sourceBody658_0

def sourceBody658_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_8 sourceBody658_13

def sourceBody658_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_7 sourceBody658_14

def sourceBody658_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_6 sourceBody658_15

def sourceBody658_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_5 sourceBody658_16

def sourceBody658_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_4 sourceBody658_17

def sourceBody658_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_3 sourceBody658_18

def sourceBody658_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_2 sourceBody658_19

def sourceBody658_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_1 sourceBody658_20

def sourceBody658_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 32)

def sourceBody658_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody658_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 40)

def sourceBody658_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody658_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 4332616871279656263#64)

def sourceBody658_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 10917124144477883021#64)

def sourceBody658_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody658_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody658_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody658_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody658_0, 658, 4)) (some 106) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody658_30, 658, 5))

def sourceBody658_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_31 sourceBody658_11

def sourceBody658_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_32 sourceBody658_0

def sourceBody658_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_29 sourceBody658_33

def sourceBody658_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_28 sourceBody658_34

def sourceBody658_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_27 sourceBody658_35

def sourceBody658_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_26 sourceBody658_36

def sourceBody658_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_25 sourceBody658_37

def sourceBody658_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_24 sourceBody658_38

def sourceBody658_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_23 sourceBody658_39

def sourceBody658_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_22 sourceBody658_40

def sourceBody658_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody658_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody658_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody658_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody658_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 18) sourceBody658_44 sourceBody658_45

def sourceBody658_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_46 sourceBody658_11

def sourceBody658_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody658_49 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 28, 42, 18, 30, 24, 38, 20, 34]) (none)

def sourceBody658_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_49 sourceBody658_0

def sourceBody658_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_29 sourceBody658_50

def sourceBody658_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_28 sourceBody658_51

def sourceBody658_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_27 sourceBody658_52

def sourceBody658_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_26 sourceBody658_53

def sourceBody658_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_25 sourceBody658_54

def sourceBody658_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_24 sourceBody658_55

def sourceBody658_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_23 sourceBody658_56

def sourceBody658_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_22 sourceBody658_57

def sourceBody658_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody658_58 sourceBody658_0

def sourceBody658_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_59 sourceBody658_11

def sourceBody658_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_60 sourceBody658_0

def sourceBody658_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_48 sourceBody658_61

def sourceBody658_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_47 sourceBody658_62

def sourceBody658_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_43 sourceBody658_63

def sourceBody658_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_42 sourceBody658_64

def sourceBody658_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 42, 18, 30]

def sourceBody658_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_66 sourceBody658_0

def sourceBody658_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_25 sourceBody658_67

def sourceBody658_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_24 sourceBody658_68

def sourceBody658_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_23 sourceBody658_69

def sourceBody658_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_22 sourceBody658_70

def sourceBody658_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_65 sourceBody658_71

def sourceBody658_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_41 sourceBody658_72

def sourceBody658_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_73

def sourceBody658_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_74

def sourceBody658_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_21 sourceBody658_75

def sourceBody658_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_76

def sourceBody658_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_77

def sourceBody658_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_78

def sourceBody658_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_79

def sourceBody658_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_80

def sourceBody658_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_81

def sourceBody658_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_82

def sourceBody658_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody658_0 sourceBody658_83

def source658 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (658, 9, sourceBody658_84)
end InitECandidate.Proofs.WordStages
