import InitECandidate.Proofs.WordStages.Source196
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody212_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody212_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody212_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody212_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody212_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def sourceBody212_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody212_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody212_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def sourceBody212_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody212_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody212_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody212_0, 212, 2)) (some 106) ([36, 50, 26, 38, 32, 46, 30, 42]) (some (36, sourceBody212_9, 212, 3))

def sourceBody212_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody212_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_10 sourceBody212_11

def sourceBody212_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_12 sourceBody212_0

def sourceBody212_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_8 sourceBody212_13

def sourceBody212_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_7 sourceBody212_14

def sourceBody212_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_6 sourceBody212_15

def sourceBody212_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_5 sourceBody212_16

def sourceBody212_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_4 sourceBody212_17

def sourceBody212_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_3 sourceBody212_18

def sourceBody212_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_2 sourceBody212_19

def sourceBody212_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_1 sourceBody212_20

def sourceBody212_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody212_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 4)

def sourceBody212_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody212_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 8)

def sourceBody212_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody212_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 12)

def sourceBody212_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody212_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 16)

def sourceBody212_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody212_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 50, 26, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody212_0, 212, 4)) (some 117) ([32, 46, 30, 42, 34, 48, 28, 40]) (some (32, sourceBody212_30, 212, 5))

def sourceBody212_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_31 sourceBody212_11

def sourceBody212_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_32 sourceBody212_0

def sourceBody212_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_29 sourceBody212_33

def sourceBody212_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_28 sourceBody212_34

def sourceBody212_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_27 sourceBody212_35

def sourceBody212_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_26 sourceBody212_36

def sourceBody212_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_25 sourceBody212_37

def sourceBody212_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_24 sourceBody212_38

def sourceBody212_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_23 sourceBody212_39

def sourceBody212_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_22 sourceBody212_40

def sourceBody212_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody212_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody212_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody212_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody212_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 30) sourceBody212_44 sourceBody212_45

def sourceBody212_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_46 sourceBody212_11

def sourceBody212_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody212_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 36)

def sourceBody212_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 50)

def sourceBody212_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody212_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 38)

def sourceBody212_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody212_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 20)

def sourceBody212_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody212_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 24)

def sourceBody212_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 50, 26, 38]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody212_0, 212, 6)) (some 116) ([32, 46, 30, 42, 34, 48, 28, 40]) (some (32, sourceBody212_30, 212, 7))

def sourceBody212_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_57 sourceBody212_11

def sourceBody212_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_58 sourceBody212_0

def sourceBody212_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_56 sourceBody212_59

def sourceBody212_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_55 sourceBody212_60

def sourceBody212_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_54 sourceBody212_61

def sourceBody212_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_53 sourceBody212_62

def sourceBody212_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_52 sourceBody212_63

def sourceBody212_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_51 sourceBody212_64

def sourceBody212_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_50 sourceBody212_65

def sourceBody212_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_49 sourceBody212_66

def sourceBody212_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.imm 0#64) sourceBody212_67 sourceBody212_0

def sourceBody212_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_68 sourceBody212_11

def sourceBody212_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_69 sourceBody212_0

def sourceBody212_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_48 sourceBody212_70

def sourceBody212_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_47 sourceBody212_71

def sourceBody212_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_43 sourceBody212_72

def sourceBody212_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_42 sourceBody212_73

def sourceBody212_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32, 46, 30, 42]

def sourceBody212_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_75 sourceBody212_0

def sourceBody212_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_52 sourceBody212_76

def sourceBody212_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_51 sourceBody212_77

def sourceBody212_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_50 sourceBody212_78

def sourceBody212_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_49 sourceBody212_79

def sourceBody212_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_74 sourceBody212_80

def sourceBody212_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_41 sourceBody212_81

def sourceBody212_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_82

def sourceBody212_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_83

def sourceBody212_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_84

def sourceBody212_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_85

def sourceBody212_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_86

def sourceBody212_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_87

def sourceBody212_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_88

def sourceBody212_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_89

def sourceBody212_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_21 sourceBody212_90

def sourceBody212_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_91

def sourceBody212_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody212_0 sourceBody212_92

def source212 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (212, 13, sourceBody212_93)
end InitECandidate.Proofs.WordStages
