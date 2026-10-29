import InitECandidate.Proofs.WordStages.Source94
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody110_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody110_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody110_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 4)

def sourceBody110_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody110_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def sourceBody110_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody110_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody110_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody110_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody110_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody110_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody110_0, 110, 2)) (some 106) ([24, 34, 20, 32, 26, 36, 18, 28]) (some (24, sourceBody110_9, 110, 3))

def sourceBody110_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody110_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_10 sourceBody110_11

def sourceBody110_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_12 sourceBody110_0

def sourceBody110_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_8 sourceBody110_13

def sourceBody110_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_7 sourceBody110_14

def sourceBody110_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_6 sourceBody110_15

def sourceBody110_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_5 sourceBody110_16

def sourceBody110_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_4 sourceBody110_17

def sourceBody110_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_3 sourceBody110_18

def sourceBody110_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_2 sourceBody110_19

def sourceBody110_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_1 sourceBody110_20

def sourceBody110_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody110_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody110_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody110_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody110_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 20) sourceBody110_24 sourceBody110_25

def sourceBody110_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_26 sourceBody110_11

def sourceBody110_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 34)

def sourceBody110_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody110_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody110_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_30 sourceBody110_0

def sourceBody110_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_29 sourceBody110_31

def sourceBody110_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody110_32 sourceBody110_0

def sourceBody110_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_33 sourceBody110_11

def sourceBody110_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_34 sourceBody110_0

def sourceBody110_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_28 sourceBody110_35

def sourceBody110_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_27 sourceBody110_36

def sourceBody110_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_23 sourceBody110_37

def sourceBody110_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_22 sourceBody110_38

def sourceBody110_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody110_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody110_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody110_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody110_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody110_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody110_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody110_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody110_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody110_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody110_0, 110, 4)) (some 105) ([34, 20, 32, 26, 36, 18, 28, 22]) (some (34, sourceBody110_48, 110, 5))

def sourceBody110_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_49 sourceBody110_11

def sourceBody110_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_50 sourceBody110_0

def sourceBody110_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_47 sourceBody110_51

def sourceBody110_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_46 sourceBody110_52

def sourceBody110_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_45 sourceBody110_53

def sourceBody110_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_44 sourceBody110_54

def sourceBody110_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_43 sourceBody110_55

def sourceBody110_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_42 sourceBody110_56

def sourceBody110_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_41 sourceBody110_57

def sourceBody110_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_40 sourceBody110_58

def sourceBody110_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody110_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody110_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody110_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 32) sourceBody110_23 sourceBody110_62

def sourceBody110_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_63 sourceBody110_11

def sourceBody110_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody110_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody110_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_66 sourceBody110_0

def sourceBody110_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_24 sourceBody110_67

def sourceBody110_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody110_68 sourceBody110_0

def sourceBody110_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_69 sourceBody110_11

def sourceBody110_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_70 sourceBody110_0

def sourceBody110_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_65 sourceBody110_71

def sourceBody110_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_64 sourceBody110_72

def sourceBody110_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_61 sourceBody110_73

def sourceBody110_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_60 sourceBody110_74

def sourceBody110_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody110_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_76 sourceBody110_67

def sourceBody110_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_75 sourceBody110_77

def sourceBody110_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_59 sourceBody110_78

def sourceBody110_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_0 sourceBody110_79

def sourceBody110_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_0 sourceBody110_80

def sourceBody110_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_39 sourceBody110_81

def sourceBody110_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_21 sourceBody110_82

def sourceBody110_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_0 sourceBody110_83

def sourceBody110_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody110_0 sourceBody110_84

def source110 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (110, 9, sourceBody110_85)
end InitECandidate.Proofs.WordStages
