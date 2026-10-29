import InitECandidate.Proofs.WordStages.Source655
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody671_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody671_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody671_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody671_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody671_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 12) sourceBody671_2 sourceBody671_3

def sourceBody671_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody671_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_4 sourceBody671_5

def sourceBody671_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody671_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody671_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody671_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody671_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody671_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody671_8, 671, 2)) (some 669) ([14, 12]) (some (14, sourceBody671_11, 671, 3))

def sourceBody671_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_12 sourceBody671_5

def sourceBody671_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_13 sourceBody671_8

def sourceBody671_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_10 sourceBody671_14

def sourceBody671_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_9 sourceBody671_15

def sourceBody671_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_8 sourceBody671_16

def sourceBody671_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_8 sourceBody671_17

def sourceBody671_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody671_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody671_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_20 sourceBody671_8

def sourceBody671_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_19 sourceBody671_21

def sourceBody671_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_18 sourceBody671_22

def sourceBody671_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody671_23 sourceBody671_8

def sourceBody671_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_24 sourceBody671_5

def sourceBody671_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_25 sourceBody671_8

def sourceBody671_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_7 sourceBody671_26

def sourceBody671_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_6 sourceBody671_27

def sourceBody671_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_1 sourceBody671_28

def sourceBody671_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_0 sourceBody671_29

def sourceBody671_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody671_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody671_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody671_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody671_8, 671, 4)) (some 670) ([14, 12, 16, 8]) (some (14, sourceBody671_11, 671, 5))

def sourceBody671_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_34 sourceBody671_5

def sourceBody671_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_35 sourceBody671_8

def sourceBody671_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_33 sourceBody671_36

def sourceBody671_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_32 sourceBody671_37

def sourceBody671_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_31 sourceBody671_38

def sourceBody671_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_0 sourceBody671_39

def sourceBody671_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_8 sourceBody671_40

def sourceBody671_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_8 sourceBody671_41

def sourceBody671_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_30 sourceBody671_42

def sourceBody671_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody671_43 sourceBody671_22

def source671 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (671, 4, sourceBody671_44)
end InitECandidate.Proofs.WordStages
