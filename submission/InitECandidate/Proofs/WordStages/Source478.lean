import InitECandidate.Proofs.WordStages.Source462
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody478_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody478_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody478_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody478_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody478_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 4) sourceBody478_2 sourceBody478_3

def sourceBody478_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody478_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_4 sourceBody478_5

def sourceBody478_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody478_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody478_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody478_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody478_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody478_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody478_8, 478, 2)) (some 476) ([12, 4, 10, 8]) (some (12, sourceBody478_11, 478, 3))

def sourceBody478_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_12 sourceBody478_5

def sourceBody478_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_13 sourceBody478_8

def sourceBody478_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_10 sourceBody478_14

def sourceBody478_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_9 sourceBody478_15

def sourceBody478_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_1 sourceBody478_16

def sourceBody478_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_2 sourceBody478_17

def sourceBody478_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_8 sourceBody478_18

def sourceBody478_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_8 sourceBody478_19

def sourceBody478_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody478_8, 478, 4)) (some 476) ([12, 4, 10, 8]) (some (12, sourceBody478_11, 478, 5))

def sourceBody478_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_21 sourceBody478_5

def sourceBody478_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_22 sourceBody478_8

def sourceBody478_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_10 sourceBody478_23

def sourceBody478_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_9 sourceBody478_24

def sourceBody478_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_1 sourceBody478_25

def sourceBody478_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_3 sourceBody478_26

def sourceBody478_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_8 sourceBody478_27

def sourceBody478_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_8 sourceBody478_28

def sourceBody478_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody478_20 sourceBody478_29

def sourceBody478_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_30 sourceBody478_5

def sourceBody478_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_31 sourceBody478_8

def sourceBody478_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_7 sourceBody478_32

def sourceBody478_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_6 sourceBody478_33

def sourceBody478_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_1 sourceBody478_34

def sourceBody478_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_0 sourceBody478_35

def sourceBody478_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody478_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody478_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_38 sourceBody478_8

def sourceBody478_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_37 sourceBody478_39

def sourceBody478_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody478_36 sourceBody478_40

def source478 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (478, 2, sourceBody478_41)
end InitECandidate.Proofs.WordStages
