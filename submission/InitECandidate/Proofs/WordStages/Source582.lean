import InitECandidate.Proofs.WordStages.Source566
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody582_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody582_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody582_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody582_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody582_0, 582, 2)) (some 470) ([16]) (some (16, sourceBody582_2, 582, 3))

def sourceBody582_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody582_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_3 sourceBody582_4

def sourceBody582_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_5 sourceBody582_0

def sourceBody582_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_1 sourceBody582_6

def sourceBody582_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_7

def sourceBody582_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_8

def sourceBody582_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody582_0, 582, 4)) (some 572) ([]) (some (16, sourceBody582_2, 582, 5))

def sourceBody582_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_10 sourceBody582_4

def sourceBody582_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_11 sourceBody582_0

def sourceBody582_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody582_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody582_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody582_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 4, 14, 10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody582_0, 582, 6)) (some 146) ([20, 2]) (some (20, sourceBody582_15, 582, 7))

def sourceBody582_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_16 sourceBody582_4

def sourceBody582_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_17 sourceBody582_0

def sourceBody582_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_14 sourceBody582_18

def sourceBody582_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_13 sourceBody582_19

def sourceBody582_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody582_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody582_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody582_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody582_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody582_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody582_0, 582, 8)) (some 476) ([2, 12, 8, 18]) (some (2, sourceBody582_25, 582, 9))

def sourceBody582_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_26 sourceBody582_4

def sourceBody582_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_27 sourceBody582_0

def sourceBody582_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_24 sourceBody582_28

def sourceBody582_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_23 sourceBody582_29

def sourceBody582_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_22 sourceBody582_30

def sourceBody582_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_21 sourceBody582_31

def sourceBody582_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_32

def sourceBody582_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_33

def sourceBody582_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody582_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody582_0, 582, 10)) (some 490) ([2]) (some (2, sourceBody582_25, 582, 11))

def sourceBody582_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_36 sourceBody582_4

def sourceBody582_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_37 sourceBody582_0

def sourceBody582_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_35 sourceBody582_38

def sourceBody582_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_39

def sourceBody582_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_40

def sourceBody582_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_34 sourceBody582_41

def sourceBody582_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody582_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody582_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_44 sourceBody582_0

def sourceBody582_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_43 sourceBody582_45

def sourceBody582_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_42 sourceBody582_46

def sourceBody582_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_20 sourceBody582_47

def sourceBody582_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_48

def sourceBody582_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_49

def sourceBody582_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_50

def sourceBody582_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_51

def sourceBody582_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_52

def sourceBody582_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_53

def sourceBody582_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_54

def sourceBody582_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_55

def sourceBody582_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_12 sourceBody582_56

def sourceBody582_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_57

def sourceBody582_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_0 sourceBody582_58

def sourceBody582_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody582_9 sourceBody582_59

def source582 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (582, 1, sourceBody582_60)
end InitECandidate.Proofs.WordStages
