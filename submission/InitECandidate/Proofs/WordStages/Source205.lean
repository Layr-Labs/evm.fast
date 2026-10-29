import InitECandidate.Proofs.WordStages.Source189
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody205_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody205_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody205_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody205_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody205_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody205_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 18446744069414583343#64)

def sourceBody205_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody205_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody205_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody205_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody205_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody205_0, 205, 2)) (some 106) ([16, 26, 10, 18, 14, 24, 12, 22]) (some (16, sourceBody205_9, 205, 3))

def sourceBody205_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody205_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_10 sourceBody205_11

def sourceBody205_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_12 sourceBody205_0

def sourceBody205_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_8 sourceBody205_13

def sourceBody205_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_7 sourceBody205_14

def sourceBody205_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_6 sourceBody205_15

def sourceBody205_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_5 sourceBody205_16

def sourceBody205_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_4 sourceBody205_17

def sourceBody205_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_3 sourceBody205_18

def sourceBody205_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_2 sourceBody205_19

def sourceBody205_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_1 sourceBody205_20

def sourceBody205_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody205_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody205_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody205_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody205_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 10) sourceBody205_24 sourceBody205_25

def sourceBody205_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_26 sourceBody205_11

def sourceBody205_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody205_29 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 16, 26, 10, 18, 14, 24, 12, 22]) (none)

def sourceBody205_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_29 sourceBody205_0

def sourceBody205_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_8 sourceBody205_30

def sourceBody205_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_7 sourceBody205_31

def sourceBody205_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_6 sourceBody205_32

def sourceBody205_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_5 sourceBody205_33

def sourceBody205_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_4 sourceBody205_34

def sourceBody205_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_3 sourceBody205_35

def sourceBody205_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_2 sourceBody205_36

def sourceBody205_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_1 sourceBody205_37

def sourceBody205_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody205_38 sourceBody205_0

def sourceBody205_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_39 sourceBody205_11

def sourceBody205_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_40 sourceBody205_0

def sourceBody205_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_28 sourceBody205_41

def sourceBody205_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_27 sourceBody205_42

def sourceBody205_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_23 sourceBody205_43

def sourceBody205_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_22 sourceBody205_44

def sourceBody205_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 26, 10, 18]

def sourceBody205_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_46 sourceBody205_0

def sourceBody205_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_4 sourceBody205_47

def sourceBody205_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_3 sourceBody205_48

def sourceBody205_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_2 sourceBody205_49

def sourceBody205_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_1 sourceBody205_50

def sourceBody205_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_45 sourceBody205_51

def sourceBody205_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_21 sourceBody205_52

def sourceBody205_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_0 sourceBody205_53

def sourceBody205_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody205_0 sourceBody205_54

def source205 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (205, 5, sourceBody205_55)
end InitECandidate.Proofs.WordStages
