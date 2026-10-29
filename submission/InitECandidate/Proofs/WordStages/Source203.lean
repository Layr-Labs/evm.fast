import InitECandidate.Proofs.WordStages.Source187
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody203_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody203_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody203_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 4)

def sourceBody203_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody203_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 8)

def sourceBody203_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody203_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody203_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody203_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody203_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody203_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody203_0, 203, 2)) (some 106) ([26, 40, 22, 36, 28, 42, 18, 30]) (some (26, sourceBody203_9, 203, 3))

def sourceBody203_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody203_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_10 sourceBody203_11

def sourceBody203_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_12 sourceBody203_0

def sourceBody203_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_8 sourceBody203_13

def sourceBody203_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_7 sourceBody203_14

def sourceBody203_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_6 sourceBody203_15

def sourceBody203_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_5 sourceBody203_16

def sourceBody203_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_4 sourceBody203_17

def sourceBody203_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_3 sourceBody203_18

def sourceBody203_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_2 sourceBody203_19

def sourceBody203_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_1 sourceBody203_20

def sourceBody203_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody203_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 4)

def sourceBody203_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody203_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody203_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody203_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody203_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody203_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody203_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody203_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 40, 22, 36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody203_0, 203, 4)) (some 117) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody203_30, 203, 5))

def sourceBody203_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_31 sourceBody203_11

def sourceBody203_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_32 sourceBody203_0

def sourceBody203_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_29 sourceBody203_33

def sourceBody203_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_28 sourceBody203_34

def sourceBody203_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_27 sourceBody203_35

def sourceBody203_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_26 sourceBody203_36

def sourceBody203_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_25 sourceBody203_37

def sourceBody203_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_24 sourceBody203_38

def sourceBody203_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_23 sourceBody203_39

def sourceBody203_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_22 sourceBody203_40

def sourceBody203_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 32)

def sourceBody203_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody203_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody203_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody203_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 18) sourceBody203_44 sourceBody203_45

def sourceBody203_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_46 sourceBody203_11

def sourceBody203_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody203_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 26)

def sourceBody203_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 40)

def sourceBody203_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody203_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 36)

def sourceBody203_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 18446744069414583343#64)

def sourceBody203_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody203_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody203_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody203_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 40, 22, 36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody203_0, 203, 6)) (some 116) ([28, 42, 18, 30, 24, 38, 20, 34]) (some (28, sourceBody203_30, 203, 7))

def sourceBody203_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_57 sourceBody203_11

def sourceBody203_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_58 sourceBody203_0

def sourceBody203_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_56 sourceBody203_59

def sourceBody203_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_55 sourceBody203_60

def sourceBody203_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_54 sourceBody203_61

def sourceBody203_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_53 sourceBody203_62

def sourceBody203_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_52 sourceBody203_63

def sourceBody203_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_51 sourceBody203_64

def sourceBody203_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_50 sourceBody203_65

def sourceBody203_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_49 sourceBody203_66

def sourceBody203_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody203_67 sourceBody203_0

def sourceBody203_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_68 sourceBody203_11

def sourceBody203_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_69 sourceBody203_0

def sourceBody203_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_48 sourceBody203_70

def sourceBody203_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_47 sourceBody203_71

def sourceBody203_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_43 sourceBody203_72

def sourceBody203_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_42 sourceBody203_73

def sourceBody203_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28, 42, 18, 30]

def sourceBody203_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_75 sourceBody203_0

def sourceBody203_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_52 sourceBody203_76

def sourceBody203_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_51 sourceBody203_77

def sourceBody203_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_50 sourceBody203_78

def sourceBody203_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_49 sourceBody203_79

def sourceBody203_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_74 sourceBody203_80

def sourceBody203_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_41 sourceBody203_81

def sourceBody203_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_82

def sourceBody203_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_83

def sourceBody203_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_84

def sourceBody203_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_85

def sourceBody203_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_86

def sourceBody203_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_87

def sourceBody203_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_88

def sourceBody203_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_89

def sourceBody203_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_21 sourceBody203_90

def sourceBody203_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_91

def sourceBody203_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody203_0 sourceBody203_92

def source203 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (203, 9, sourceBody203_93)
end InitECandidate.Proofs.WordStages
