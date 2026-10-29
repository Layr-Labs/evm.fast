import InitECandidate.Proofs.WordStages.Source613
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody629_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody629_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody629_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody629_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody629_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 4) sourceBody629_2 sourceBody629_3

def sourceBody629_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody629_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_4 sourceBody629_5

def sourceBody629_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody629_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1352829926#64)

def sourceBody629_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody629_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody629_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_9 sourceBody629_10

def sourceBody629_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_8 sourceBody629_11

def sourceBody629_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody629_12 sourceBody629_10

def sourceBody629_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_13 sourceBody629_5

def sourceBody629_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_14 sourceBody629_10

def sourceBody629_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_7 sourceBody629_15

def sourceBody629_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_6 sourceBody629_16

def sourceBody629_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_1 sourceBody629_17

def sourceBody629_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_0 sourceBody629_18

def sourceBody629_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody629_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1548603684#64)

def sourceBody629_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_21 sourceBody629_11

def sourceBody629_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody629_22 sourceBody629_10

def sourceBody629_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_23 sourceBody629_5

def sourceBody629_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_24 sourceBody629_10

def sourceBody629_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_7 sourceBody629_25

def sourceBody629_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_6 sourceBody629_26

def sourceBody629_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_20 sourceBody629_27

def sourceBody629_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_0 sourceBody629_28

def sourceBody629_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_19 sourceBody629_29

def sourceBody629_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 48#64)

def sourceBody629_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1836072691#64)

def sourceBody629_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_32 sourceBody629_11

def sourceBody629_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody629_33 sourceBody629_10

def sourceBody629_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_34 sourceBody629_5

def sourceBody629_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_35 sourceBody629_10

def sourceBody629_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_7 sourceBody629_36

def sourceBody629_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_6 sourceBody629_37

def sourceBody629_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_31 sourceBody629_38

def sourceBody629_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_0 sourceBody629_39

def sourceBody629_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_30 sourceBody629_40

def sourceBody629_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody629_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2053994217#64)

def sourceBody629_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_43 sourceBody629_11

def sourceBody629_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody629_44 sourceBody629_10

def sourceBody629_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_45 sourceBody629_5

def sourceBody629_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_46 sourceBody629_10

def sourceBody629_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_7 sourceBody629_47

def sourceBody629_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_6 sourceBody629_48

def sourceBody629_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_42 sourceBody629_49

def sourceBody629_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_0 sourceBody629_50

def sourceBody629_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_41 sourceBody629_51

def sourceBody629_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody629_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_53 sourceBody629_11

def sourceBody629_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody629_52 sourceBody629_54

def source629 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (629, 2, sourceBody629_55)
end InitECandidate.Proofs.WordStages
