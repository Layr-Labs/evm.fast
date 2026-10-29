import InitECandidate.Proofs.WordStages.Source382
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody398_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody398_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody398_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody398_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16, 6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody398_0, 398, 2)) (some 397) ([14]) (some (14, sourceBody398_2, 398, 3))

def sourceBody398_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody398_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_3 sourceBody398_4

def sourceBody398_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_5 sourceBody398_0

def sourceBody398_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_1 sourceBody398_6

def sourceBody398_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody398_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody398_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody398_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody398_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 18) sourceBody398_10 sourceBody398_11

def sourceBody398_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_12 sourceBody398_4

def sourceBody398_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody398_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody398_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody398_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_16 sourceBody398_0

def sourceBody398_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_15 sourceBody398_17

def sourceBody398_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody398_18 sourceBody398_0

def sourceBody398_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_19 sourceBody398_4

def sourceBody398_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_20 sourceBody398_0

def sourceBody398_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_14 sourceBody398_21

def sourceBody398_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_13 sourceBody398_22

def sourceBody398_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_9 sourceBody398_23

def sourceBody398_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_8 sourceBody398_24

def sourceBody398_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody398_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody398_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody398_0, 398, 4)) (some 68) ([10]) (some (10, sourceBody398_27, 398, 5))

def sourceBody398_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_28 sourceBody398_4

def sourceBody398_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_29 sourceBody398_0

def sourceBody398_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_26 sourceBody398_30

def sourceBody398_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody398_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody398_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody398_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody398_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody398_0, 398, 6)) (some 333) ([18, 4, 12]) (some (18, sourceBody398_35, 398, 7))

def sourceBody398_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_36 sourceBody398_4

def sourceBody398_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_37 sourceBody398_0

def sourceBody398_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_34 sourceBody398_38

def sourceBody398_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_33 sourceBody398_39

def sourceBody398_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_32 sourceBody398_40

def sourceBody398_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_41

def sourceBody398_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_42

def sourceBody398_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody398_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody398_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_45 sourceBody398_0

def sourceBody398_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_44 sourceBody398_46

def sourceBody398_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_43 sourceBody398_47

def sourceBody398_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_31 sourceBody398_48

def sourceBody398_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_49

def sourceBody398_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_50

def sourceBody398_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_25 sourceBody398_51

def sourceBody398_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_7 sourceBody398_52

def sourceBody398_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_53

def sourceBody398_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_54

def sourceBody398_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_55

def sourceBody398_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_56

def sourceBody398_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_57

def sourceBody398_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody398_0 sourceBody398_58

def source398 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (398, 2, sourceBody398_59)
end InitECandidate.Proofs.WordStages
