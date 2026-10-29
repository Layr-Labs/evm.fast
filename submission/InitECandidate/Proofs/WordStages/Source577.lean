import InitECandidate.Proofs.WordStages.Source561
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody577_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody577_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody577_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody577_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody577_0, 577, 2)) (some 470) ([16]) (some (16, sourceBody577_2, 577, 3))

def sourceBody577_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody577_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_3 sourceBody577_4

def sourceBody577_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_5 sourceBody577_0

def sourceBody577_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_1 sourceBody577_6

def sourceBody577_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_7

def sourceBody577_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_8

def sourceBody577_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody577_0, 577, 4)) (some 572) ([]) (some (16, sourceBody577_2, 577, 5))

def sourceBody577_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_10 sourceBody577_4

def sourceBody577_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_11 sourceBody577_0

def sourceBody577_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody577_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody577_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 4, 14, 10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody577_0, 577, 6)) (some 467) ([20]) (some (20, sourceBody577_14, 577, 7))

def sourceBody577_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_15 sourceBody577_4

def sourceBody577_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_16 sourceBody577_0

def sourceBody577_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_13 sourceBody577_17

def sourceBody577_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody577_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody577_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody577_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody577_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody577_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody577_0, 577, 8)) (some 476) ([2, 12, 8, 18]) (some (2, sourceBody577_23, 577, 9))

def sourceBody577_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_24 sourceBody577_4

def sourceBody577_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_25 sourceBody577_0

def sourceBody577_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_22 sourceBody577_26

def sourceBody577_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_21 sourceBody577_27

def sourceBody577_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_20 sourceBody577_28

def sourceBody577_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_19 sourceBody577_29

def sourceBody577_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_30

def sourceBody577_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_31

def sourceBody577_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody577_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody577_0, 577, 10)) (some 490) ([2]) (some (2, sourceBody577_23, 577, 11))

def sourceBody577_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_34 sourceBody577_4

def sourceBody577_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_35 sourceBody577_0

def sourceBody577_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_33 sourceBody577_36

def sourceBody577_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_37

def sourceBody577_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_38

def sourceBody577_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_32 sourceBody577_39

def sourceBody577_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody577_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody577_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_42 sourceBody577_0

def sourceBody577_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_41 sourceBody577_43

def sourceBody577_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_40 sourceBody577_44

def sourceBody577_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_18 sourceBody577_45

def sourceBody577_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_46

def sourceBody577_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_47

def sourceBody577_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_48

def sourceBody577_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_49

def sourceBody577_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_50

def sourceBody577_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_51

def sourceBody577_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_52

def sourceBody577_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_53

def sourceBody577_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_12 sourceBody577_54

def sourceBody577_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_55

def sourceBody577_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_0 sourceBody577_56

def sourceBody577_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody577_9 sourceBody577_57

def source577 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (577, 1, sourceBody577_58)
end InitECandidate.Proofs.WordStages
