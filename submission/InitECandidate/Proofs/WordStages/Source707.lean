import InitECandidate.Proofs.WordStages.Source691
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody707_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody707_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody707_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody707_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody707_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 32) sourceBody707_2 sourceBody707_3

def sourceBody707_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody707_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_4 sourceBody707_5

def sourceBody707_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody707_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 32) sourceBody707_2 sourceBody707_3

def sourceBody707_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_8 sourceBody707_5

def sourceBody707_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody707_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody707_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody707_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_11 sourceBody707_12

def sourceBody707_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_10 sourceBody707_13

def sourceBody707_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody707_14 sourceBody707_12

def sourceBody707_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_15 sourceBody707_5

def sourceBody707_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_16 sourceBody707_12

def sourceBody707_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_7 sourceBody707_17

def sourceBody707_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_9 sourceBody707_18

def sourceBody707_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_1 sourceBody707_19

def sourceBody707_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_0 sourceBody707_20

def sourceBody707_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody707_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_22 sourceBody707_13

def sourceBody707_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_21 sourceBody707_23

def sourceBody707_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody707_24 sourceBody707_12

def sourceBody707_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_25 sourceBody707_5

def sourceBody707_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_26 sourceBody707_12

def sourceBody707_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_7 sourceBody707_27

def sourceBody707_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_6 sourceBody707_28

def sourceBody707_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_1 sourceBody707_29

def sourceBody707_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_0 sourceBody707_30

def sourceBody707_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody707_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody707_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_33 sourceBody707_19

def sourceBody707_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_32 sourceBody707_34

def sourceBody707_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_35 sourceBody707_23

def sourceBody707_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody707_36 sourceBody707_12

def sourceBody707_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_37 sourceBody707_5

def sourceBody707_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_38 sourceBody707_12

def sourceBody707_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_7 sourceBody707_39

def sourceBody707_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_6 sourceBody707_40

def sourceBody707_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_33 sourceBody707_41

def sourceBody707_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_32 sourceBody707_42

def sourceBody707_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_31 sourceBody707_43

def sourceBody707_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody707_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody707_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_46 sourceBody707_19

def sourceBody707_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_45 sourceBody707_47

def sourceBody707_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_48 sourceBody707_23

def sourceBody707_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody707_49 sourceBody707_12

def sourceBody707_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_50 sourceBody707_5

def sourceBody707_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_51 sourceBody707_12

def sourceBody707_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_7 sourceBody707_52

def sourceBody707_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_6 sourceBody707_53

def sourceBody707_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_46 sourceBody707_54

def sourceBody707_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_45 sourceBody707_55

def sourceBody707_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_44 sourceBody707_56

def sourceBody707_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody707_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody707_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_59 sourceBody707_19

def sourceBody707_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_58 sourceBody707_60

def sourceBody707_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_61 sourceBody707_23

def sourceBody707_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody707_62 sourceBody707_12

def sourceBody707_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_63 sourceBody707_5

def sourceBody707_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_64 sourceBody707_12

def sourceBody707_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_7 sourceBody707_65

def sourceBody707_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_6 sourceBody707_66

def sourceBody707_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_59 sourceBody707_67

def sourceBody707_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_58 sourceBody707_68

def sourceBody707_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_57 sourceBody707_69

def sourceBody707_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody707_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody707_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_72 sourceBody707_19

def sourceBody707_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_71 sourceBody707_73

def sourceBody707_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_74 sourceBody707_23

def sourceBody707_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody707_75 sourceBody707_12

def sourceBody707_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_76 sourceBody707_5

def sourceBody707_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_77 sourceBody707_12

def sourceBody707_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_7 sourceBody707_78

def sourceBody707_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_6 sourceBody707_79

def sourceBody707_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_72 sourceBody707_80

def sourceBody707_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_71 sourceBody707_81

def sourceBody707_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_70 sourceBody707_82

def sourceBody707_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 2)

def sourceBody707_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody707_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_85 sourceBody707_19

def sourceBody707_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_84 sourceBody707_86

def sourceBody707_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_83 sourceBody707_87

def sourceBody707_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody707_88 sourceBody707_23

def source707 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (707, 13, sourceBody707_89)
end InitECandidate.Proofs.WordStages
