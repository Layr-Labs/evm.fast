import InitECandidate.Proofs.WordStages.Source407
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody423_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody423_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody423_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody423_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody423_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody423_0, 423, 2)) (some 419) ([6, 10]) (some (6, sourceBody423_3, 423, 3))

def sourceBody423_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody423_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_4 sourceBody423_5

def sourceBody423_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_6 sourceBody423_0

def sourceBody423_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_2 sourceBody423_7

def sourceBody423_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_1 sourceBody423_8

def sourceBody423_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_0 sourceBody423_9

def sourceBody423_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_0 sourceBody423_10

def sourceBody423_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody423_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody423_0, 423, 4)) (some 416) ([6]) (some (6, sourceBody423_3, 423, 5))

def sourceBody423_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_13 sourceBody423_5

def sourceBody423_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_14 sourceBody423_0

def sourceBody423_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_12 sourceBody423_15

def sourceBody423_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody423_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody423_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody423_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody423_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody423_19 sourceBody423_20

def sourceBody423_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_21 sourceBody423_5

def sourceBody423_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody423_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody423_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody423_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody423_0, 423, 6)) (some 422) ([10]) (some (10, sourceBody423_25, 423, 7))

def sourceBody423_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_26 sourceBody423_5

def sourceBody423_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_27 sourceBody423_0

def sourceBody423_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_24 sourceBody423_28

def sourceBody423_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_0 sourceBody423_29

def sourceBody423_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_0 sourceBody423_30

def sourceBody423_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody423_31 sourceBody423_0

def sourceBody423_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_32 sourceBody423_5

def sourceBody423_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_33 sourceBody423_0

def sourceBody423_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_23 sourceBody423_34

def sourceBody423_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_22 sourceBody423_35

def sourceBody423_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_18 sourceBody423_36

def sourceBody423_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_17 sourceBody423_37

def sourceBody423_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody423_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody423_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_40 sourceBody423_0

def sourceBody423_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_39 sourceBody423_41

def sourceBody423_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_38 sourceBody423_42

def sourceBody423_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_16 sourceBody423_43

def sourceBody423_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_0 sourceBody423_44

def sourceBody423_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_0 sourceBody423_45

def sourceBody423_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody423_11 sourceBody423_46

def source423 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (423, 3, sourceBody423_47)
end InitECandidate.Proofs.WordStages
