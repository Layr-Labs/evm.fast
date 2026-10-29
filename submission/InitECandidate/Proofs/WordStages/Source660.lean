import InitECandidate.Proofs.WordStages.Source644
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody660_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody660_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody660_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody660_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody660_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody660_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody660_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody660_0, 660, 2)) (some 102) ([16, 26, 10, 18]) (some (16, sourceBody660_5, 660, 3))

def sourceBody660_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody660_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_6 sourceBody660_7

def sourceBody660_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_8 sourceBody660_0

def sourceBody660_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_4 sourceBody660_9

def sourceBody660_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_3 sourceBody660_10

def sourceBody660_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_2 sourceBody660_11

def sourceBody660_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_1 sourceBody660_12

def sourceBody660_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody660_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody660_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody660_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody660_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 10) sourceBody660_16 sourceBody660_17

def sourceBody660_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_18 sourceBody660_7

def sourceBody660_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody660_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody660_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody660_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody660_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 26, 10, 18]

def sourceBody660_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_24 sourceBody660_0

def sourceBody660_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_23 sourceBody660_25

def sourceBody660_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_22 sourceBody660_26

def sourceBody660_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_17 sourceBody660_27

def sourceBody660_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_21 sourceBody660_28

def sourceBody660_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody660_29 sourceBody660_0

def sourceBody660_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_30 sourceBody660_7

def sourceBody660_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_31 sourceBody660_0

def sourceBody660_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_20 sourceBody660_32

def sourceBody660_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_19 sourceBody660_33

def sourceBody660_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_15 sourceBody660_34

def sourceBody660_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_14 sourceBody660_35

def sourceBody660_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 4332616871279656263#64)

def sourceBody660_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 10917124144477883021#64)

def sourceBody660_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody660_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody660_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody660_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody660_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody660_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody660_45 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 16, 26, 10, 18, 14, 24, 12, 22]) (none)

def sourceBody660_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_45 sourceBody660_0

def sourceBody660_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_44 sourceBody660_46

def sourceBody660_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_43 sourceBody660_47

def sourceBody660_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_42 sourceBody660_48

def sourceBody660_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_41 sourceBody660_49

def sourceBody660_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_40 sourceBody660_50

def sourceBody660_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_39 sourceBody660_51

def sourceBody660_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_38 sourceBody660_52

def sourceBody660_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_37 sourceBody660_53

def sourceBody660_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_36 sourceBody660_54

def sourceBody660_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_13 sourceBody660_55

def sourceBody660_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_0 sourceBody660_56

def sourceBody660_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody660_0 sourceBody660_57

def source660 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (660, 5, sourceBody660_58)
end InitECandidate.Proofs.WordStages
