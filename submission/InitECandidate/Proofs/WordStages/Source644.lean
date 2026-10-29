import InitECandidate.Proofs.WordStages.Source628
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody644_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody644_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody644_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody644_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody644_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody644_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody644_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody644_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody644_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody644_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody644_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody644_0, 644, 2)) (some 106) ([16, 26, 10, 18, 14, 24, 12, 22]) (some (16, sourceBody644_9, 644, 3))

def sourceBody644_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody644_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_10 sourceBody644_11

def sourceBody644_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_12 sourceBody644_0

def sourceBody644_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_8 sourceBody644_13

def sourceBody644_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_7 sourceBody644_14

def sourceBody644_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_6 sourceBody644_15

def sourceBody644_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_5 sourceBody644_16

def sourceBody644_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_4 sourceBody644_17

def sourceBody644_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_3 sourceBody644_18

def sourceBody644_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_2 sourceBody644_19

def sourceBody644_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_1 sourceBody644_20

def sourceBody644_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody644_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody644_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody644_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody644_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 10) sourceBody644_24 sourceBody644_25

def sourceBody644_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_26 sourceBody644_11

def sourceBody644_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody644_29 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 16, 26, 10, 18, 14, 24, 12, 22]) (none)

def sourceBody644_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_29 sourceBody644_0

def sourceBody644_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_8 sourceBody644_30

def sourceBody644_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_7 sourceBody644_31

def sourceBody644_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_6 sourceBody644_32

def sourceBody644_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_5 sourceBody644_33

def sourceBody644_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_4 sourceBody644_34

def sourceBody644_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_3 sourceBody644_35

def sourceBody644_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_2 sourceBody644_36

def sourceBody644_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_1 sourceBody644_37

def sourceBody644_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody644_38 sourceBody644_0

def sourceBody644_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_39 sourceBody644_11

def sourceBody644_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_40 sourceBody644_0

def sourceBody644_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_28 sourceBody644_41

def sourceBody644_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_27 sourceBody644_42

def sourceBody644_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_23 sourceBody644_43

def sourceBody644_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_22 sourceBody644_44

def sourceBody644_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 26, 10, 18]

def sourceBody644_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_46 sourceBody644_0

def sourceBody644_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_4 sourceBody644_47

def sourceBody644_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_3 sourceBody644_48

def sourceBody644_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_2 sourceBody644_49

def sourceBody644_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_1 sourceBody644_50

def sourceBody644_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_45 sourceBody644_51

def sourceBody644_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_21 sourceBody644_52

def sourceBody644_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_0 sourceBody644_53

def sourceBody644_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody644_0 sourceBody644_54

def source644 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (644, 5, sourceBody644_55)
end InitECandidate.Proofs.WordStages
