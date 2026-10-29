import InitECandidate.Proofs.WordStages.Source643
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody659_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody659_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody659_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody659_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody659_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody659_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody659_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody659_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody659_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody659_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody659_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody659_0, 659, 2)) (some 106) ([26, 40, 22, 36, 28, 42, 18, 30]) (some (26, sourceBody659_9, 659, 3))

def sourceBody659_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody659_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_10 sourceBody659_11

def sourceBody659_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_12 sourceBody659_0

def sourceBody659_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_8 sourceBody659_13

def sourceBody659_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_7 sourceBody659_14

def sourceBody659_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_6 sourceBody659_15

def sourceBody659_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_5 sourceBody659_16

def sourceBody659_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_4 sourceBody659_17

def sourceBody659_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_3 sourceBody659_18

def sourceBody659_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_2 sourceBody659_19

def sourceBody659_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_1 sourceBody659_20

def sourceBody659_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody659_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody659_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody659_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody659_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody659_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody659_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody659_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody659_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody659_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 40, 22, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody659_0, 659, 4)) (some 117) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody659_30, 659, 5))

def sourceBody659_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_31 sourceBody659_11

def sourceBody659_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_32 sourceBody659_0

def sourceBody659_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_29 sourceBody659_33

def sourceBody659_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_28 sourceBody659_34

def sourceBody659_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_27 sourceBody659_35

def sourceBody659_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_26 sourceBody659_36

def sourceBody659_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_25 sourceBody659_37

def sourceBody659_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_24 sourceBody659_38

def sourceBody659_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_23 sourceBody659_39

def sourceBody659_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_22 sourceBody659_40

def sourceBody659_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 32)

def sourceBody659_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody659_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody659_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody659_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 18) sourceBody659_44 sourceBody659_45

def sourceBody659_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_46 sourceBody659_11

def sourceBody659_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody659_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody659_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody659_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody659_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody659_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 4332616871279656263#64)

def sourceBody659_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 10917124144477883021#64)

def sourceBody659_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody659_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody659_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 40, 22, 36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody659_0, 659, 6)) (some 116) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody659_30, 659, 7))

def sourceBody659_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_57 sourceBody659_11

def sourceBody659_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_58 sourceBody659_0

def sourceBody659_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_56 sourceBody659_59

def sourceBody659_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_55 sourceBody659_60

def sourceBody659_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_54 sourceBody659_61

def sourceBody659_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_53 sourceBody659_62

def sourceBody659_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_52 sourceBody659_63

def sourceBody659_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_51 sourceBody659_64

def sourceBody659_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_50 sourceBody659_65

def sourceBody659_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_49 sourceBody659_66

def sourceBody659_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody659_67 sourceBody659_0

def sourceBody659_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_68 sourceBody659_11

def sourceBody659_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_69 sourceBody659_0

def sourceBody659_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_48 sourceBody659_70

def sourceBody659_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_47 sourceBody659_71

def sourceBody659_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_43 sourceBody659_72

def sourceBody659_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_42 sourceBody659_73

def sourceBody659_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 42, 18, 30]

def sourceBody659_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_75 sourceBody659_0

def sourceBody659_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_52 sourceBody659_76

def sourceBody659_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_51 sourceBody659_77

def sourceBody659_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_50 sourceBody659_78

def sourceBody659_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_49 sourceBody659_79

def sourceBody659_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_74 sourceBody659_80

def sourceBody659_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_41 sourceBody659_81

def sourceBody659_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_82

def sourceBody659_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_83

def sourceBody659_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_84

def sourceBody659_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_85

def sourceBody659_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_86

def sourceBody659_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_87

def sourceBody659_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_88

def sourceBody659_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_89

def sourceBody659_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_21 sourceBody659_90

def sourceBody659_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_91

def sourceBody659_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody659_0 sourceBody659_92

def source659 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (659, 9, sourceBody659_93)
end InitECandidate.Proofs.WordStages
