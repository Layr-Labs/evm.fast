import InitECandidate.Proofs.WordStages.Source498
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody514_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody514_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody514_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 22, 4, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody514_0, 514, 2)) (some 475) ([]) (some (12, sourceBody514_1, 514, 3))

def sourceBody514_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody514_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_2 sourceBody514_3

def sourceBody514_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_4 sourceBody514_0

def sourceBody514_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody514_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 26, 2, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody514_0, 514, 4)) (some 475) ([]) (some (10, sourceBody514_6, 514, 5))

def sourceBody514_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_7 sourceBody514_3

def sourceBody514_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_8 sourceBody514_0

def sourceBody514_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody514_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody514_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody514_0, 514, 6)) (some 470) ([24]) (some (24, sourceBody514_11, 514, 7))

def sourceBody514_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_12 sourceBody514_3

def sourceBody514_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_13 sourceBody514_0

def sourceBody514_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_10 sourceBody514_14

def sourceBody514_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_15

def sourceBody514_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_16

def sourceBody514_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12])

def sourceBody514_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 26])

def sourceBody514_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 2])

def sourceBody514_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 16])

def sourceBody514_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody514_0, 514, 8)) (some 476) ([24, 6, 20, 14]) (some (24, sourceBody514_11, 514, 9))

def sourceBody514_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_22 sourceBody514_3

def sourceBody514_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_23 sourceBody514_0

def sourceBody514_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_21 sourceBody514_24

def sourceBody514_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_20 sourceBody514_25

def sourceBody514_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_19 sourceBody514_26

def sourceBody514_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_18 sourceBody514_27

def sourceBody514_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_28

def sourceBody514_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_29

def sourceBody514_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_17 sourceBody514_30

def sourceBody514_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody514_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody514_0, 514, 10)) (some 490) ([24]) (some (24, sourceBody514_11, 514, 11))

def sourceBody514_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_33 sourceBody514_3

def sourceBody514_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_34 sourceBody514_0

def sourceBody514_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_32 sourceBody514_35

def sourceBody514_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_36

def sourceBody514_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_37

def sourceBody514_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_31 sourceBody514_38

def sourceBody514_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody514_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody514_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_41 sourceBody514_0

def sourceBody514_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_40 sourceBody514_42

def sourceBody514_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_39 sourceBody514_43

def sourceBody514_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_9 sourceBody514_44

def sourceBody514_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_45

def sourceBody514_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_46

def sourceBody514_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_47

def sourceBody514_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_48

def sourceBody514_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_49

def sourceBody514_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_50

def sourceBody514_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_51

def sourceBody514_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_52

def sourceBody514_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_5 sourceBody514_53

def sourceBody514_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_54

def sourceBody514_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_55

def sourceBody514_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_56

def sourceBody514_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_57

def sourceBody514_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_58

def sourceBody514_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_59

def sourceBody514_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_60

def sourceBody514_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody514_0 sourceBody514_61

def source514 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (514, 1, sourceBody514_62)
end InitECandidate.Proofs.WordStages
