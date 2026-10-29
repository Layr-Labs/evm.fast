import InitECandidate.Proofs.WordStages.Source149
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody165_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody165_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody165_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody165_0, 165, 2)) (some 75) ([]) (some (6, sourceBody165_1, 165, 3))

def sourceBody165_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody165_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_2 sourceBody165_3

def sourceBody165_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_4 sourceBody165_0

def sourceBody165_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody165_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody165_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody165_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody165_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_9 sourceBody165_0

def sourceBody165_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_10 sourceBody165_0

def sourceBody165_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody165_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody165_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody165_0, 165, 5)) (some 76) ([14]) (some (14, sourceBody165_13, 165, 6))

def sourceBody165_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_14 sourceBody165_3

def sourceBody165_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_15 sourceBody165_0

def sourceBody165_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_12 sourceBody165_16

def sourceBody165_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_17

def sourceBody165_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_18

def sourceBody165_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody165_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody165_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_21 sourceBody165_0

def sourceBody165_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_22 sourceBody165_0

def sourceBody165_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_20 sourceBody165_23

def sourceBody165_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_24

def sourceBody165_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody165_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_26 sourceBody165_8

def sourceBody165_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_25 sourceBody165_27

def sourceBody165_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_19 sourceBody165_28

def sourceBody165_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_11 sourceBody165_29

def sourceBody165_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_3 sourceBody165_30

def sourceBody165_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 1#64) sourceBody165_8 sourceBody165_31

def sourceBody165_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_32 sourceBody165_3

def sourceBody165_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody165_0, 165, 4)) (some 164) ([8, 14]) (some (8, sourceBody165_33, 165, 7))

def sourceBody165_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_34 sourceBody165_3

def sourceBody165_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_35 sourceBody165_0

def sourceBody165_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_7 sourceBody165_36

def sourceBody165_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_6 sourceBody165_37

def sourceBody165_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_38

def sourceBody165_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_39

def sourceBody165_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody165_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody165_0, 165, 8)) (some 76) ([8]) (some (8, sourceBody165_8, 165, 9))

def sourceBody165_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_42 sourceBody165_3

def sourceBody165_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_43 sourceBody165_0

def sourceBody165_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_41 sourceBody165_44

def sourceBody165_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_45

def sourceBody165_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_46

def sourceBody165_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_40 sourceBody165_47

def sourceBody165_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody165_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody165_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_50 sourceBody165_0

def sourceBody165_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_49 sourceBody165_51

def sourceBody165_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_48 sourceBody165_52

def sourceBody165_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_53

def sourceBody165_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_54

def sourceBody165_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_5 sourceBody165_55

def sourceBody165_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_56

def sourceBody165_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody165_0 sourceBody165_57

def source165 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (165, 3, sourceBody165_58)
end InitECandidate.Proofs.WordStages
