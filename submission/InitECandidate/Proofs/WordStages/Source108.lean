import InitECandidate.Proofs.WordStages.Source92
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody108_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody108_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody108_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody108_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody108_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 24) sourceBody108_2 sourceBody108_3

def sourceBody108_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody108_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_4 sourceBody108_5

def sourceBody108_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody108_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 24) sourceBody108_2 sourceBody108_3

def sourceBody108_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_8 sourceBody108_5

def sourceBody108_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody108_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody108_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody108_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_11 sourceBody108_12

def sourceBody108_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_10 sourceBody108_13

def sourceBody108_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody108_14 sourceBody108_12

def sourceBody108_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_15 sourceBody108_5

def sourceBody108_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_16 sourceBody108_12

def sourceBody108_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_7 sourceBody108_17

def sourceBody108_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_9 sourceBody108_18

def sourceBody108_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_1 sourceBody108_19

def sourceBody108_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_0 sourceBody108_20

def sourceBody108_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody108_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_22 sourceBody108_13

def sourceBody108_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_21 sourceBody108_23

def sourceBody108_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody108_24 sourceBody108_12

def sourceBody108_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_25 sourceBody108_5

def sourceBody108_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_26 sourceBody108_12

def sourceBody108_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_7 sourceBody108_27

def sourceBody108_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_6 sourceBody108_28

def sourceBody108_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_1 sourceBody108_29

def sourceBody108_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_0 sourceBody108_30

def sourceBody108_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody108_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody108_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 24) sourceBody108_2 sourceBody108_3

def sourceBody108_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_34 sourceBody108_5

def sourceBody108_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_35 sourceBody108_18

def sourceBody108_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_33 sourceBody108_36

def sourceBody108_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_32 sourceBody108_37

def sourceBody108_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_38 sourceBody108_23

def sourceBody108_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody108_39 sourceBody108_12

def sourceBody108_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_40 sourceBody108_5

def sourceBody108_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_41 sourceBody108_12

def sourceBody108_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_7 sourceBody108_42

def sourceBody108_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_6 sourceBody108_43

def sourceBody108_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_33 sourceBody108_44

def sourceBody108_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_32 sourceBody108_45

def sourceBody108_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_31 sourceBody108_46

def sourceBody108_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody108_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody108_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_49 sourceBody108_36

def sourceBody108_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_48 sourceBody108_50

def sourceBody108_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_51 sourceBody108_23

def sourceBody108_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody108_52 sourceBody108_12

def sourceBody108_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_53 sourceBody108_5

def sourceBody108_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_54 sourceBody108_12

def sourceBody108_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_7 sourceBody108_55

def sourceBody108_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_6 sourceBody108_56

def sourceBody108_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_49 sourceBody108_57

def sourceBody108_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_48 sourceBody108_58

def sourceBody108_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_47 sourceBody108_59

def sourceBody108_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody108_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody108_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_62 sourceBody108_36

def sourceBody108_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_61 sourceBody108_63

def sourceBody108_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_60 sourceBody108_64

def sourceBody108_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody108_65 sourceBody108_23

def source108 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (108, 9, sourceBody108_66)
end InitECandidate.Proofs.WordStages
