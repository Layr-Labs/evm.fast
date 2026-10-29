import InitECandidate.Proofs.WordStages.Source559
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody575_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody575_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody575_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody575_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody575_0, 575, 2)) (some 470) ([16]) (some (16, sourceBody575_2, 575, 3))

def sourceBody575_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody575_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_3 sourceBody575_4

def sourceBody575_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_5 sourceBody575_0

def sourceBody575_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_1 sourceBody575_6

def sourceBody575_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_7

def sourceBody575_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_8

def sourceBody575_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody575_0, 575, 4)) (some 572) ([]) (some (16, sourceBody575_2, 575, 5))

def sourceBody575_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_10 sourceBody575_4

def sourceBody575_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_11 sourceBody575_0

def sourceBody575_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody575_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody575_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 4, 14, 10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody575_0, 575, 6)) (some 280) ([20]) (some (20, sourceBody575_14, 575, 7))

def sourceBody575_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_15 sourceBody575_4

def sourceBody575_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_16 sourceBody575_0

def sourceBody575_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_13 sourceBody575_17

def sourceBody575_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody575_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody575_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody575_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody575_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody575_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody575_0, 575, 8)) (some 476) ([2, 12, 8, 18]) (some (2, sourceBody575_23, 575, 9))

def sourceBody575_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_24 sourceBody575_4

def sourceBody575_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_25 sourceBody575_0

def sourceBody575_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_22 sourceBody575_26

def sourceBody575_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_21 sourceBody575_27

def sourceBody575_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_20 sourceBody575_28

def sourceBody575_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_19 sourceBody575_29

def sourceBody575_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_30

def sourceBody575_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_31

def sourceBody575_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody575_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody575_0, 575, 10)) (some 490) ([2]) (some (2, sourceBody575_23, 575, 11))

def sourceBody575_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_34 sourceBody575_4

def sourceBody575_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_35 sourceBody575_0

def sourceBody575_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_33 sourceBody575_36

def sourceBody575_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_37

def sourceBody575_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_38

def sourceBody575_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_32 sourceBody575_39

def sourceBody575_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody575_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody575_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_42 sourceBody575_0

def sourceBody575_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_41 sourceBody575_43

def sourceBody575_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_40 sourceBody575_44

def sourceBody575_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_18 sourceBody575_45

def sourceBody575_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_46

def sourceBody575_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_47

def sourceBody575_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_48

def sourceBody575_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_49

def sourceBody575_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_50

def sourceBody575_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_51

def sourceBody575_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_52

def sourceBody575_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_53

def sourceBody575_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_12 sourceBody575_54

def sourceBody575_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_55

def sourceBody575_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_0 sourceBody575_56

def sourceBody575_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody575_9 sourceBody575_57

def source575 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (575, 1, sourceBody575_58)
end InitECandidate.Proofs.WordStages
