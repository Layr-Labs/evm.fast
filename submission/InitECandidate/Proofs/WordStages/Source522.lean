import InitECandidate.Proofs.WordStages.Source506
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody522_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody522_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody522_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 16, 4, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody522_0, 522, 2)) (some 475) ([]) (some (10, sourceBody522_1, 522, 3))

def sourceBody522_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody522_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_2 sourceBody522_3

def sourceBody522_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_4 sourceBody522_0

def sourceBody522_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody522_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody522_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody522_0, 522, 4)) (some 470) ([18]) (some (18, sourceBody522_7, 522, 5))

def sourceBody522_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_8 sourceBody522_3

def sourceBody522_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_9 sourceBody522_0

def sourceBody522_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_6 sourceBody522_10

def sourceBody522_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_11

def sourceBody522_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_12

def sourceBody522_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody522_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody522_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody522_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody522_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody522_0, 522, 6)) (some 138) ([18, 2, 12, 8]) (some (18, sourceBody522_7, 522, 7))

def sourceBody522_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_18 sourceBody522_3

def sourceBody522_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_19 sourceBody522_0

def sourceBody522_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_17 sourceBody522_20

def sourceBody522_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_16 sourceBody522_21

def sourceBody522_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_15 sourceBody522_22

def sourceBody522_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_14 sourceBody522_23

def sourceBody522_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 256#64, Flapjack.WordLangExpHOL.var 10])

def sourceBody522_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody522_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody522_0, 522, 8)) (some 477) ([2]) (some (2, sourceBody522_26, 522, 9))

def sourceBody522_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_27 sourceBody522_3

def sourceBody522_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_28 sourceBody522_0

def sourceBody522_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_25 sourceBody522_29

def sourceBody522_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_30

def sourceBody522_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_31

def sourceBody522_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody522_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody522_0, 522, 10)) (some 490) ([2]) (some (2, sourceBody522_26, 522, 11))

def sourceBody522_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_34 sourceBody522_3

def sourceBody522_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_35 sourceBody522_0

def sourceBody522_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_33 sourceBody522_36

def sourceBody522_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_37

def sourceBody522_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_38

def sourceBody522_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_32 sourceBody522_39

def sourceBody522_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody522_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody522_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_42 sourceBody522_0

def sourceBody522_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_41 sourceBody522_43

def sourceBody522_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_40 sourceBody522_44

def sourceBody522_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_24 sourceBody522_45

def sourceBody522_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_46

def sourceBody522_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_47

def sourceBody522_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_13 sourceBody522_48

def sourceBody522_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_5 sourceBody522_49

def sourceBody522_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_50

def sourceBody522_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_51

def sourceBody522_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_52

def sourceBody522_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_53

def sourceBody522_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_54

def sourceBody522_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_55

def sourceBody522_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_56

def sourceBody522_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody522_0 sourceBody522_57

def source522 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (522, 1, sourceBody522_58)
end InitECandidate.Proofs.WordStages
