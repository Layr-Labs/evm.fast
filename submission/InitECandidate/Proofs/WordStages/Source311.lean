import InitECandidate.Proofs.WordStages.Source295
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody311_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody311_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody311_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody311_0, 311, 2)) (some 69) ([]) (some (20, sourceBody311_1, 311, 3))

def sourceBody311_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody311_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_2 sourceBody311_3

def sourceBody311_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_4 sourceBody311_0

def sourceBody311_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody311_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody311_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody311_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody311_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody311_0, 311, 4)) (some 310) ([24, 8, 18]) (some (24, sourceBody311_9, 311, 5))

def sourceBody311_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_10 sourceBody311_3

def sourceBody311_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_11 sourceBody311_0

def sourceBody311_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_8 sourceBody311_12

def sourceBody311_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_7 sourceBody311_13

def sourceBody311_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_6 sourceBody311_14

def sourceBody311_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody311_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody311_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody311_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody311_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 8, 18]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody311_0, 311, 6)) (some 306) ([14, 22, 12]) (some (14, sourceBody311_19, 311, 7))

def sourceBody311_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_20 sourceBody311_3

def sourceBody311_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_21 sourceBody311_0

def sourceBody311_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_18 sourceBody311_22

def sourceBody311_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_17 sourceBody311_23

def sourceBody311_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_16 sourceBody311_24

def sourceBody311_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody311_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody311_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody311_0, 311, 8)) (some 70) ([22]) (some (22, sourceBody311_27, 311, 9))

def sourceBody311_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_28 sourceBody311_3

def sourceBody311_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_29 sourceBody311_0

def sourceBody311_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_26 sourceBody311_30

def sourceBody311_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_31

def sourceBody311_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_32

def sourceBody311_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody311_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody311_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody311_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 22, 12]

def sourceBody311_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_37 sourceBody311_0

def sourceBody311_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_36 sourceBody311_38

def sourceBody311_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_35 sourceBody311_39

def sourceBody311_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_34 sourceBody311_40

def sourceBody311_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_33 sourceBody311_41

def sourceBody311_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_25 sourceBody311_42

def sourceBody311_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_43

def sourceBody311_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_44

def sourceBody311_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_45

def sourceBody311_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_46

def sourceBody311_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_47

def sourceBody311_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_48

def sourceBody311_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_15 sourceBody311_49

def sourceBody311_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_50

def sourceBody311_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_51

def sourceBody311_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_52

def sourceBody311_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_53

def sourceBody311_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_5 sourceBody311_54

def sourceBody311_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_55

def sourceBody311_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody311_0 sourceBody311_56

def source311 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (311, 4, sourceBody311_57)
end InitECandidate.Proofs.WordStages
