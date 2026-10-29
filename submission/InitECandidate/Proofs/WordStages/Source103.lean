import InitECandidate.Proofs.WordStages.Source87
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody103_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody103_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody103_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody103_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody103_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 12) sourceBody103_2 sourceBody103_3

def sourceBody103_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody103_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_4 sourceBody103_5

def sourceBody103_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody103_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody103_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody103_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody103_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_9 sourceBody103_10

def sourceBody103_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_8 sourceBody103_11

def sourceBody103_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody103_12 sourceBody103_10

def sourceBody103_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_13 sourceBody103_5

def sourceBody103_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_14 sourceBody103_10

def sourceBody103_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_7 sourceBody103_15

def sourceBody103_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_6 sourceBody103_16

def sourceBody103_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_1 sourceBody103_17

def sourceBody103_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_0 sourceBody103_18

def sourceBody103_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody103_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody103_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_21 sourceBody103_11

def sourceBody103_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody103_22 sourceBody103_10

def sourceBody103_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_23 sourceBody103_5

def sourceBody103_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_24 sourceBody103_10

def sourceBody103_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_7 sourceBody103_25

def sourceBody103_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_6 sourceBody103_26

def sourceBody103_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_20 sourceBody103_27

def sourceBody103_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_0 sourceBody103_28

def sourceBody103_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_19 sourceBody103_29

def sourceBody103_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody103_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody103_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_32 sourceBody103_11

def sourceBody103_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody103_33 sourceBody103_10

def sourceBody103_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_34 sourceBody103_5

def sourceBody103_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_35 sourceBody103_10

def sourceBody103_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_7 sourceBody103_36

def sourceBody103_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_6 sourceBody103_37

def sourceBody103_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_31 sourceBody103_38

def sourceBody103_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_0 sourceBody103_39

def sourceBody103_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_30 sourceBody103_40

def sourceBody103_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody103_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody103_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_43 sourceBody103_11

def sourceBody103_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody103_44 sourceBody103_10

def sourceBody103_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_45 sourceBody103_5

def sourceBody103_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_46 sourceBody103_10

def sourceBody103_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_7 sourceBody103_47

def sourceBody103_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_6 sourceBody103_48

def sourceBody103_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_42 sourceBody103_49

def sourceBody103_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_0 sourceBody103_50

def sourceBody103_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_41 sourceBody103_51

def sourceBody103_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody103_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_53 sourceBody103_11

def sourceBody103_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody103_52 sourceBody103_54

def source103 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (103, 6, sourceBody103_55)
end InitECandidate.Proofs.WordStages
