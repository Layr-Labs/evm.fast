import InitECandidate.Proofs.WordStages.Source288
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody304_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody304_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody304_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody304_0, 304, 2)) (some 75) ([]) (some (18, sourceBody304_1, 304, 3))

def sourceBody304_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody304_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_2 sourceBody304_3

def sourceBody304_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_4 sourceBody304_0

def sourceBody304_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody304_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody304_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody304_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody304_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody304_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody304_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_11 sourceBody304_0

def sourceBody304_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_12 sourceBody304_0

def sourceBody304_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody304_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody304_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody304_0, 304, 5)) (some 76) ([8]) (some (8, sourceBody304_15, 304, 6))

def sourceBody304_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_16 sourceBody304_3

def sourceBody304_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_17 sourceBody304_0

def sourceBody304_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_14 sourceBody304_18

def sourceBody304_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_19

def sourceBody304_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_20

def sourceBody304_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody304_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody304_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_23 sourceBody304_0

def sourceBody304_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_24 sourceBody304_0

def sourceBody304_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_22 sourceBody304_25

def sourceBody304_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_26

def sourceBody304_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody304_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_28 sourceBody304_10

def sourceBody304_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_27 sourceBody304_29

def sourceBody304_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_21 sourceBody304_30

def sourceBody304_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_13 sourceBody304_31

def sourceBody304_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_3 sourceBody304_32

def sourceBody304_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 1#64) sourceBody304_10 sourceBody304_33

def sourceBody304_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_34 sourceBody304_3

def sourceBody304_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody304_0, 304, 4)) (some 303) ([20, 8, 16, 12]) (some (20, sourceBody304_35, 304, 7))

def sourceBody304_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_36 sourceBody304_3

def sourceBody304_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_37 sourceBody304_0

def sourceBody304_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_9 sourceBody304_38

def sourceBody304_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_8 sourceBody304_39

def sourceBody304_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_7 sourceBody304_40

def sourceBody304_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_6 sourceBody304_41

def sourceBody304_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody304_0, 304, 8)) (some 76) ([8]) (some (8, sourceBody304_15, 304, 9))

def sourceBody304_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_43 sourceBody304_3

def sourceBody304_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_44 sourceBody304_0

def sourceBody304_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_14 sourceBody304_45

def sourceBody304_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_46

def sourceBody304_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_47

def sourceBody304_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_42 sourceBody304_48

def sourceBody304_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody304_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody304_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_51 sourceBody304_0

def sourceBody304_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_50 sourceBody304_52

def sourceBody304_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_49 sourceBody304_53

def sourceBody304_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_54

def sourceBody304_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_55

def sourceBody304_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_56

def sourceBody304_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_57

def sourceBody304_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_5 sourceBody304_58

def sourceBody304_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_59

def sourceBody304_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody304_0 sourceBody304_60

def source304 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (304, 4, sourceBody304_61)
end InitECandidate.Proofs.WordStages
