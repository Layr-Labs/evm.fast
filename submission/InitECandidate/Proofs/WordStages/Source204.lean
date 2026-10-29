import InitECandidate.Proofs.WordStages.Source188
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody204_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody204_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody204_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody204_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody204_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody204_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody204_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody204_0, 204, 2)) (some 102) ([16, 26, 10, 18]) (some (16, sourceBody204_5, 204, 3))

def sourceBody204_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody204_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_6 sourceBody204_7

def sourceBody204_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_8 sourceBody204_0

def sourceBody204_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_4 sourceBody204_9

def sourceBody204_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_3 sourceBody204_10

def sourceBody204_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_2 sourceBody204_11

def sourceBody204_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_1 sourceBody204_12

def sourceBody204_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody204_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody204_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody204_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody204_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 10) sourceBody204_16 sourceBody204_17

def sourceBody204_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_18 sourceBody204_7

def sourceBody204_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody204_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody204_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody204_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody204_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 26, 10, 18]

def sourceBody204_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_24 sourceBody204_0

def sourceBody204_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_23 sourceBody204_25

def sourceBody204_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_22 sourceBody204_26

def sourceBody204_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_17 sourceBody204_27

def sourceBody204_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_21 sourceBody204_28

def sourceBody204_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody204_29 sourceBody204_0

def sourceBody204_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_30 sourceBody204_7

def sourceBody204_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_31 sourceBody204_0

def sourceBody204_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_20 sourceBody204_32

def sourceBody204_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_19 sourceBody204_33

def sourceBody204_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_15 sourceBody204_34

def sourceBody204_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_14 sourceBody204_35

def sourceBody204_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 18446744069414583343#64)

def sourceBody204_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody204_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody204_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody204_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody204_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody204_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody204_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody204_45 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 16, 26, 10, 18, 14, 24, 12, 22]) (none)

def sourceBody204_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_45 sourceBody204_0

def sourceBody204_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_44 sourceBody204_46

def sourceBody204_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_43 sourceBody204_47

def sourceBody204_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_42 sourceBody204_48

def sourceBody204_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_41 sourceBody204_49

def sourceBody204_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_40 sourceBody204_50

def sourceBody204_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_39 sourceBody204_51

def sourceBody204_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_38 sourceBody204_52

def sourceBody204_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_37 sourceBody204_53

def sourceBody204_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_36 sourceBody204_54

def sourceBody204_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_13 sourceBody204_55

def sourceBody204_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_0 sourceBody204_56

def sourceBody204_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody204_0 sourceBody204_57

def source204 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (204, 5, sourceBody204_58)
end InitECandidate.Proofs.WordStages
