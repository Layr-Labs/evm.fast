import InitECandidate.Proofs.WordStages.Source223
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody239_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody239_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody239_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody239_0, 239, 2)) (some 69) ([]) (some (18, sourceBody239_1, 239, 3))

def sourceBody239_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody239_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_2 sourceBody239_3

def sourceBody239_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_4 sourceBody239_0

def sourceBody239_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody239_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody239_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody239_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody239_0, 239, 4)) (some 241) ([22, 8]) (some (22, sourceBody239_8, 239, 5))

def sourceBody239_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_9 sourceBody239_3

def sourceBody239_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_10 sourceBody239_0

def sourceBody239_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_7 sourceBody239_11

def sourceBody239_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_6 sourceBody239_12

def sourceBody239_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody239_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody239_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody239_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody239_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody239_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody239_0, 239, 6)) (some 238) ([8, 16, 12, 20]) (some (8, sourceBody239_18, 239, 7))

def sourceBody239_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_19 sourceBody239_3

def sourceBody239_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_20 sourceBody239_0

def sourceBody239_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_17 sourceBody239_21

def sourceBody239_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_16 sourceBody239_22

def sourceBody239_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_15 sourceBody239_23

def sourceBody239_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_14 sourceBody239_24

def sourceBody239_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_25

def sourceBody239_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_26

def sourceBody239_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody239_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody239_0, 239, 8)) (some 70) ([8]) (some (8, sourceBody239_18, 239, 9))

def sourceBody239_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_29 sourceBody239_3

def sourceBody239_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_30 sourceBody239_0

def sourceBody239_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_28 sourceBody239_31

def sourceBody239_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_32

def sourceBody239_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_33

def sourceBody239_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_27 sourceBody239_34

def sourceBody239_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody239_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody239_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_37 sourceBody239_0

def sourceBody239_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_36 sourceBody239_38

def sourceBody239_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_35 sourceBody239_39

def sourceBody239_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_13 sourceBody239_40

def sourceBody239_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_41

def sourceBody239_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_42

def sourceBody239_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_43

def sourceBody239_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_44

def sourceBody239_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_5 sourceBody239_45

def sourceBody239_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_46

def sourceBody239_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody239_0 sourceBody239_47

def source239 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (239, 4, sourceBody239_48)
end InitECandidate.Proofs.WordStages
