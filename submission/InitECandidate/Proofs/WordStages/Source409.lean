import InitECandidate.Proofs.WordStages.Source393
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody409_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody409_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody409_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody409_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody409_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody409_0, 409, 2)) (some 186) ([12, 18]) (some (12, sourceBody409_3, 409, 3))

def sourceBody409_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody409_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_4 sourceBody409_5

def sourceBody409_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_6 sourceBody409_0

def sourceBody409_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_2 sourceBody409_7

def sourceBody409_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_1 sourceBody409_8

def sourceBody409_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody409_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody409_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody409_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody409_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 8) sourceBody409_12 sourceBody409_13

def sourceBody409_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_14 sourceBody409_5

def sourceBody409_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody409_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody409_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 18]

def sourceBody409_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_18 sourceBody409_0

def sourceBody409_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_13 sourceBody409_19

def sourceBody409_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_17 sourceBody409_20

def sourceBody409_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody409_21 sourceBody409_0

def sourceBody409_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_22 sourceBody409_5

def sourceBody409_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_23 sourceBody409_0

def sourceBody409_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_16 sourceBody409_24

def sourceBody409_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_15 sourceBody409_25

def sourceBody409_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_11 sourceBody409_26

def sourceBody409_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_10 sourceBody409_27

def sourceBody409_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody409_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody409_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody409_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody409_0, 409, 4)) (some 186) ([8, 14]) (some (8, sourceBody409_31, 409, 5))

def sourceBody409_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_32 sourceBody409_5

def sourceBody409_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_33 sourceBody409_0

def sourceBody409_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_30 sourceBody409_34

def sourceBody409_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_29 sourceBody409_35

def sourceBody409_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody409_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 14]

def sourceBody409_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_38 sourceBody409_0

def sourceBody409_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_16 sourceBody409_39

def sourceBody409_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_37 sourceBody409_40

def sourceBody409_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_36 sourceBody409_41

def sourceBody409_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_42

def sourceBody409_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_43

def sourceBody409_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_44

def sourceBody409_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_45

def sourceBody409_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_28 sourceBody409_46

def sourceBody409_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_9 sourceBody409_47

def sourceBody409_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_48

def sourceBody409_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_49

def sourceBody409_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_50

def sourceBody409_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody409_0 sourceBody409_51

def source409 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (409, 4, sourceBody409_52)
end InitECandidate.Proofs.WordStages
