import InitECandidate.Proofs.WordStages.Source413
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody429_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody429_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody429_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody429_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody429_0, 429, 2)) (some 407) ([24]) (some (24, sourceBody429_2, 429, 3))

def sourceBody429_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody429_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_3 sourceBody429_4

def sourceBody429_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_5 sourceBody429_0

def sourceBody429_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_1 sourceBody429_6

def sourceBody429_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody429_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody429_0, 429, 4)) (some 395) ([24]) (some (24, sourceBody429_2, 429, 5))

def sourceBody429_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_9 sourceBody429_4

def sourceBody429_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_10 sourceBody429_0

def sourceBody429_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_8 sourceBody429_11

def sourceBody429_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody429_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody429_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody429_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody429_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody429_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody429_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 14

def sourceBody429_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_19 sourceBody429_0

def sourceBody429_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_18 sourceBody429_20

def sourceBody429_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody429_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 8#64])
  14

def sourceBody429_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_23 sourceBody429_0

def sourceBody429_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_22 sourceBody429_24

def sourceBody429_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody429_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 16#64])
  14

def sourceBody429_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_27 sourceBody429_0

def sourceBody429_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_26 sourceBody429_28

def sourceBody429_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody429_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 24#64])
  14

def sourceBody429_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_31 sourceBody429_0

def sourceBody429_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_30 sourceBody429_32

def sourceBody429_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_33 sourceBody429_0

def sourceBody429_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_29 sourceBody429_34

def sourceBody429_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_25 sourceBody429_35

def sourceBody429_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_21 sourceBody429_36

def sourceBody429_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_17 sourceBody429_37

def sourceBody429_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_38

def sourceBody429_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_16 sourceBody429_39

def sourceBody429_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_40

def sourceBody429_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_15 sourceBody429_41

def sourceBody429_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_42

def sourceBody429_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_14 sourceBody429_43

def sourceBody429_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_44

def sourceBody429_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_13 sourceBody429_45

def sourceBody429_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_46

def sourceBody429_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_12 sourceBody429_47

def sourceBody429_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody429_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody429_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody429_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody429_0, 429, 6)) (some 423) ([12, 20]) (some (12, sourceBody429_51, 429, 7))

def sourceBody429_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_52 sourceBody429_4

def sourceBody429_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_53 sourceBody429_0

def sourceBody429_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_50 sourceBody429_54

def sourceBody429_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_49 sourceBody429_55

def sourceBody429_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_56

def sourceBody429_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_57

def sourceBody429_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_48 sourceBody429_58

def sourceBody429_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody429_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody429_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_61 sourceBody429_0

def sourceBody429_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_60 sourceBody429_62

def sourceBody429_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_59 sourceBody429_63

def sourceBody429_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_7 sourceBody429_64

def sourceBody429_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_65

def sourceBody429_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody429_0 sourceBody429_66

def source429 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (429, 6, sourceBody429_67)
end InitECandidate.Proofs.WordStages
