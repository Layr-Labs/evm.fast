import InitECandidate.Proofs.WordStages.Source402
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody418_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody418_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody418_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody418_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody418_0, 418, 2)) (some 406) ([12]) (some (12, sourceBody418_2, 418, 3))

def sourceBody418_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody418_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_3 sourceBody418_4

def sourceBody418_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_5 sourceBody418_0

def sourceBody418_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_1 sourceBody418_6

def sourceBody418_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody418_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody418_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody418_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody418_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody418_10 sourceBody418_11

def sourceBody418_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_12 sourceBody418_4

def sourceBody418_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody418_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody418_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody418_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_16 sourceBody418_0

def sourceBody418_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_15 sourceBody418_17

def sourceBody418_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody418_18 sourceBody418_0

def sourceBody418_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_19 sourceBody418_4

def sourceBody418_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_20 sourceBody418_0

def sourceBody418_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_14 sourceBody418_21

def sourceBody418_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_13 sourceBody418_22

def sourceBody418_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_9 sourceBody418_23

def sourceBody418_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_8 sourceBody418_24

def sourceBody418_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody418_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody418_0, 418, 4)) (some 416) ([4]) (some (4, sourceBody418_26, 418, 5))

def sourceBody418_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_27 sourceBody418_4

def sourceBody418_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_28 sourceBody418_0

def sourceBody418_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_8 sourceBody418_29

def sourceBody418_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody418_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody418_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody418_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody418_9 sourceBody418_33

def sourceBody418_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_34 sourceBody418_4

def sourceBody418_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody418_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody418_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_37 sourceBody418_0

def sourceBody418_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_11 sourceBody418_38

def sourceBody418_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody418_39 sourceBody418_0

def sourceBody418_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_40 sourceBody418_4

def sourceBody418_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_41 sourceBody418_0

def sourceBody418_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_36 sourceBody418_42

def sourceBody418_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_35 sourceBody418_43

def sourceBody418_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_32 sourceBody418_44

def sourceBody418_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_31 sourceBody418_45

def sourceBody418_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_10 sourceBody418_38

def sourceBody418_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_46 sourceBody418_47

def sourceBody418_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_30 sourceBody418_48

def sourceBody418_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_0 sourceBody418_49

def sourceBody418_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_0 sourceBody418_50

def sourceBody418_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_25 sourceBody418_51

def sourceBody418_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_7 sourceBody418_52

def sourceBody418_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_0 sourceBody418_53

def sourceBody418_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody418_0 sourceBody418_54

def source418 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (418, 2, sourceBody418_55)
end InitECandidate.Proofs.WordStages
