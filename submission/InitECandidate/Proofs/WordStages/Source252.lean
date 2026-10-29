import InitECandidate.Proofs.WordStages.Source236
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody252_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody252_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody252_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody252_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody252_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody252_0, 252, 2)) (some 94) ([12, 18]) (some (12, sourceBody252_3, 252, 3))

def sourceBody252_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody252_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_4 sourceBody252_5

def sourceBody252_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_6 sourceBody252_0

def sourceBody252_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_2 sourceBody252_7

def sourceBody252_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_1 sourceBody252_8

def sourceBody252_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody252_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody252_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody252_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody252_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 8) sourceBody252_12 sourceBody252_13

def sourceBody252_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_14 sourceBody252_5

def sourceBody252_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody252_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 30#64)

def sourceBody252_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody252_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody252_0, 252, 4)) (some 245) ([18]) (some (18, sourceBody252_18, 252, 5))

def sourceBody252_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_19 sourceBody252_5

def sourceBody252_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_20 sourceBody252_0

def sourceBody252_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_17 sourceBody252_21

def sourceBody252_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_22

def sourceBody252_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_23

def sourceBody252_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody252_24 sourceBody252_0

def sourceBody252_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_25 sourceBody252_5

def sourceBody252_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_26 sourceBody252_0

def sourceBody252_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_16 sourceBody252_27

def sourceBody252_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_15 sourceBody252_28

def sourceBody252_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_11 sourceBody252_29

def sourceBody252_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_10 sourceBody252_30

def sourceBody252_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody252_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody252_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 8) sourceBody252_12 sourceBody252_13

def sourceBody252_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_34 sourceBody252_5

def sourceBody252_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 31#64)

def sourceBody252_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody252_0, 252, 6)) (some 245) ([18]) (some (18, sourceBody252_18, 252, 7))

def sourceBody252_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_37 sourceBody252_5

def sourceBody252_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_38 sourceBody252_0

def sourceBody252_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_36 sourceBody252_39

def sourceBody252_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_40

def sourceBody252_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_41

def sourceBody252_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody252_42 sourceBody252_0

def sourceBody252_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_43 sourceBody252_5

def sourceBody252_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_44 sourceBody252_0

def sourceBody252_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_16 sourceBody252_45

def sourceBody252_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_35 sourceBody252_46

def sourceBody252_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_33 sourceBody252_47

def sourceBody252_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_32 sourceBody252_48

def sourceBody252_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_31 sourceBody252_49

def sourceBody252_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody252_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody252_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_52 sourceBody252_0

def sourceBody252_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_51 sourceBody252_53

def sourceBody252_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_50 sourceBody252_54

def sourceBody252_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_9 sourceBody252_55

def sourceBody252_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_56

def sourceBody252_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_57

def sourceBody252_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_58

def sourceBody252_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody252_0 sourceBody252_59

def source252 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (252, 4, sourceBody252_60)
end InitECandidate.Proofs.WordStages
