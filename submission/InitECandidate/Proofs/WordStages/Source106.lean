import InitECandidate.Proofs.WordStages.Source90
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody106_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody106_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody106_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody106_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody106_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 24) sourceBody106_2 sourceBody106_3

def sourceBody106_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody106_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_4 sourceBody106_5

def sourceBody106_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody106_8 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 24) sourceBody106_2 sourceBody106_3

def sourceBody106_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_8 sourceBody106_5

def sourceBody106_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody106_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody106_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody106_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_11 sourceBody106_12

def sourceBody106_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_10 sourceBody106_13

def sourceBody106_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody106_14 sourceBody106_12

def sourceBody106_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_15 sourceBody106_5

def sourceBody106_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_16 sourceBody106_12

def sourceBody106_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_7 sourceBody106_17

def sourceBody106_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_9 sourceBody106_18

def sourceBody106_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_1 sourceBody106_19

def sourceBody106_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_0 sourceBody106_20

def sourceBody106_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody106_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_22 sourceBody106_13

def sourceBody106_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_21 sourceBody106_23

def sourceBody106_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody106_24 sourceBody106_12

def sourceBody106_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_25 sourceBody106_5

def sourceBody106_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_26 sourceBody106_12

def sourceBody106_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_7 sourceBody106_27

def sourceBody106_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_6 sourceBody106_28

def sourceBody106_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_1 sourceBody106_29

def sourceBody106_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_0 sourceBody106_30

def sourceBody106_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody106_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody106_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_33 sourceBody106_19

def sourceBody106_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_32 sourceBody106_34

def sourceBody106_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_35 sourceBody106_23

def sourceBody106_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody106_36 sourceBody106_12

def sourceBody106_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_37 sourceBody106_5

def sourceBody106_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_38 sourceBody106_12

def sourceBody106_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_7 sourceBody106_39

def sourceBody106_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_6 sourceBody106_40

def sourceBody106_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_33 sourceBody106_41

def sourceBody106_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_32 sourceBody106_42

def sourceBody106_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_31 sourceBody106_43

def sourceBody106_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody106_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody106_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_46 sourceBody106_19

def sourceBody106_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_45 sourceBody106_47

def sourceBody106_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_48 sourceBody106_23

def sourceBody106_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody106_49 sourceBody106_12

def sourceBody106_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_50 sourceBody106_5

def sourceBody106_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_51 sourceBody106_12

def sourceBody106_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_7 sourceBody106_52

def sourceBody106_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_6 sourceBody106_53

def sourceBody106_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_46 sourceBody106_54

def sourceBody106_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_45 sourceBody106_55

def sourceBody106_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_44 sourceBody106_56

def sourceBody106_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody106_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody106_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_59 sourceBody106_19

def sourceBody106_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_58 sourceBody106_60

def sourceBody106_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_57 sourceBody106_61

def sourceBody106_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody106_62 sourceBody106_23

def source106 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (106, 9, sourceBody106_63)
end InitECandidate.Proofs.WordStages
