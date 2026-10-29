import InitECandidate.Proofs.WordStages.Source612
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody628_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody628_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody628_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody628_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody628_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody628_2 sourceBody628_3

def sourceBody628_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody628_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_4 sourceBody628_5

def sourceBody628_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody628_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody628_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody628_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody628_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_9 sourceBody628_10

def sourceBody628_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_8 sourceBody628_11

def sourceBody628_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody628_12 sourceBody628_10

def sourceBody628_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_13 sourceBody628_5

def sourceBody628_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_14 sourceBody628_10

def sourceBody628_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_7 sourceBody628_15

def sourceBody628_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_6 sourceBody628_16

def sourceBody628_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_1 sourceBody628_17

def sourceBody628_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_0 sourceBody628_18

def sourceBody628_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody628_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1518500249#64)

def sourceBody628_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_21 sourceBody628_11

def sourceBody628_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody628_22 sourceBody628_10

def sourceBody628_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_23 sourceBody628_5

def sourceBody628_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_24 sourceBody628_10

def sourceBody628_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_7 sourceBody628_25

def sourceBody628_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_6 sourceBody628_26

def sourceBody628_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_20 sourceBody628_27

def sourceBody628_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_0 sourceBody628_28

def sourceBody628_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_19 sourceBody628_29

def sourceBody628_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody628_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1859775393#64)

def sourceBody628_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_32 sourceBody628_11

def sourceBody628_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody628_33 sourceBody628_10

def sourceBody628_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_34 sourceBody628_5

def sourceBody628_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_35 sourceBody628_10

def sourceBody628_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_7 sourceBody628_36

def sourceBody628_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_6 sourceBody628_37

def sourceBody628_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_31 sourceBody628_38

def sourceBody628_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_0 sourceBody628_39

def sourceBody628_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_30 sourceBody628_40

def sourceBody628_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody628_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2400959708#64)

def sourceBody628_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_43 sourceBody628_11

def sourceBody628_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody628_44 sourceBody628_10

def sourceBody628_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_45 sourceBody628_5

def sourceBody628_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_46 sourceBody628_10

def sourceBody628_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_7 sourceBody628_47

def sourceBody628_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_6 sourceBody628_48

def sourceBody628_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_42 sourceBody628_49

def sourceBody628_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_0 sourceBody628_50

def sourceBody628_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_41 sourceBody628_51

def sourceBody628_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2840853838#64)

def sourceBody628_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_53 sourceBody628_11

def sourceBody628_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody628_52 sourceBody628_54

def source628 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (628, 2, sourceBody628_55)
end InitECandidate.Proofs.WordStages
