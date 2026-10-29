import InitECandidate.Proofs.WordStages.Source710
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody726_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody726_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody726_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody726_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody726_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody726_0, 726, 2)) (some 89) ([20, 18]) (some (20, sourceBody726_3, 726, 3))

def sourceBody726_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody726_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_4 sourceBody726_5

def sourceBody726_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_6 sourceBody726_0

def sourceBody726_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_2 sourceBody726_7

def sourceBody726_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_1 sourceBody726_8

def sourceBody726_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_9

def sourceBody726_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_10

def sourceBody726_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody726_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody726_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody726_0, 726, 4)) (some 89) ([20, 18]) (some (20, sourceBody726_3, 726, 5))

def sourceBody726_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_14 sourceBody726_5

def sourceBody726_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_15 sourceBody726_0

def sourceBody726_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_13 sourceBody726_16

def sourceBody726_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_12 sourceBody726_17

def sourceBody726_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_18

def sourceBody726_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_19

def sourceBody726_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_11 sourceBody726_20

def sourceBody726_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody726_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody726_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody726_0, 726, 6)) (some 89) ([20, 18]) (some (20, sourceBody726_3, 726, 7))

def sourceBody726_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_24 sourceBody726_5

def sourceBody726_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_25 sourceBody726_0

def sourceBody726_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_23 sourceBody726_26

def sourceBody726_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_22 sourceBody726_27

def sourceBody726_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_28

def sourceBody726_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_29

def sourceBody726_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_21 sourceBody726_30

def sourceBody726_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody726_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody726_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody726_0, 726, 8)) (some 89) ([20, 18]) (some (20, sourceBody726_3, 726, 9))

def sourceBody726_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_34 sourceBody726_5

def sourceBody726_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_35 sourceBody726_0

def sourceBody726_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_33 sourceBody726_36

def sourceBody726_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_32 sourceBody726_37

def sourceBody726_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_38

def sourceBody726_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_39

def sourceBody726_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_31 sourceBody726_40

def sourceBody726_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody726_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody726_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody726_0, 726, 10)) (some 89) ([20, 18]) (some (20, sourceBody726_3, 726, 11))

def sourceBody726_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_44 sourceBody726_5

def sourceBody726_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_45 sourceBody726_0

def sourceBody726_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_43 sourceBody726_46

def sourceBody726_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_42 sourceBody726_47

def sourceBody726_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_48

def sourceBody726_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_49

def sourceBody726_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_41 sourceBody726_50

def sourceBody726_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody726_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody726_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody726_0, 726, 12)) (some 89) ([20, 18]) (some (20, sourceBody726_3, 726, 13))

def sourceBody726_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_54 sourceBody726_5

def sourceBody726_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_55 sourceBody726_0

def sourceBody726_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_53 sourceBody726_56

def sourceBody726_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_52 sourceBody726_57

def sourceBody726_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_58

def sourceBody726_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_0 sourceBody726_59

def sourceBody726_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_51 sourceBody726_60

def sourceBody726_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody726_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody726_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_63 sourceBody726_0

def sourceBody726_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_62 sourceBody726_64

def sourceBody726_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody726_61 sourceBody726_65

def source726 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (726, 8, sourceBody726_66)
end InitECandidate.Proofs.WordStages
