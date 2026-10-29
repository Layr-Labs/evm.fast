import InitECandidate.Proofs.WordStages.Source499
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody515_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody515_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody515_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 22, 4, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody515_0, 515, 2)) (some 475) ([]) (some (12, sourceBody515_1, 515, 3))

def sourceBody515_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody515_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_2 sourceBody515_3

def sourceBody515_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_4 sourceBody515_0

def sourceBody515_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody515_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 26, 2, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody515_0, 515, 4)) (some 475) ([]) (some (10, sourceBody515_6, 515, 5))

def sourceBody515_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_7 sourceBody515_3

def sourceBody515_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_8 sourceBody515_0

def sourceBody515_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody515_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody515_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody515_0, 515, 6)) (some 470) ([24]) (some (24, sourceBody515_11, 515, 7))

def sourceBody515_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_12 sourceBody515_3

def sourceBody515_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_13 sourceBody515_0

def sourceBody515_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_10 sourceBody515_14

def sourceBody515_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_15

def sourceBody515_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_16

def sourceBody515_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 12])

def sourceBody515_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 26])

def sourceBody515_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 2])

def sourceBody515_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 16])

def sourceBody515_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody515_0, 515, 8)) (some 476) ([24, 6, 20, 14]) (some (24, sourceBody515_11, 515, 9))

def sourceBody515_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_22 sourceBody515_3

def sourceBody515_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_23 sourceBody515_0

def sourceBody515_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_21 sourceBody515_24

def sourceBody515_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_20 sourceBody515_25

def sourceBody515_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_19 sourceBody515_26

def sourceBody515_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_18 sourceBody515_27

def sourceBody515_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_28

def sourceBody515_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_29

def sourceBody515_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_17 sourceBody515_30

def sourceBody515_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody515_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody515_0, 515, 10)) (some 490) ([24]) (some (24, sourceBody515_11, 515, 11))

def sourceBody515_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_33 sourceBody515_3

def sourceBody515_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_34 sourceBody515_0

def sourceBody515_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_32 sourceBody515_35

def sourceBody515_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_36

def sourceBody515_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_37

def sourceBody515_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_31 sourceBody515_38

def sourceBody515_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody515_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody515_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_41 sourceBody515_0

def sourceBody515_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_40 sourceBody515_42

def sourceBody515_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_39 sourceBody515_43

def sourceBody515_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_9 sourceBody515_44

def sourceBody515_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_45

def sourceBody515_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_46

def sourceBody515_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_47

def sourceBody515_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_48

def sourceBody515_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_49

def sourceBody515_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_50

def sourceBody515_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_51

def sourceBody515_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_52

def sourceBody515_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_5 sourceBody515_53

def sourceBody515_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_54

def sourceBody515_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_55

def sourceBody515_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_56

def sourceBody515_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_57

def sourceBody515_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_58

def sourceBody515_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_59

def sourceBody515_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_60

def sourceBody515_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody515_0 sourceBody515_61

def source515 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (515, 1, sourceBody515_62)
end InitECandidate.Proofs.WordStages
