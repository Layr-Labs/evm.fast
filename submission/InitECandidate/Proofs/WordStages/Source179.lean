import InitECandidate.Proofs.WordStages.Source163
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody179_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody179_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody179_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody179_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody179_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 14) sourceBody179_2 sourceBody179_3

def sourceBody179_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody179_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_4 sourceBody179_5

def sourceBody179_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody179_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody179_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody179_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 6) sourceBody179_9 sourceBody179_7

def sourceBody179_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_10 sourceBody179_5

def sourceBody179_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody179_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody179_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody179_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody179_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 20) sourceBody179_14 sourceBody179_15

def sourceBody179_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_16 sourceBody179_5

def sourceBody179_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody179_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody179_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody179_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody179_20 sourceBody179_18

def sourceBody179_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_21 sourceBody179_5

def sourceBody179_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 16])

def sourceBody179_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody179_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody179_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody179_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_25 sourceBody179_26

def sourceBody179_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_24 sourceBody179_27

def sourceBody179_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody179_28 sourceBody179_26

def sourceBody179_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_29 sourceBody179_5

def sourceBody179_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_30 sourceBody179_26

def sourceBody179_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_23 sourceBody179_31

def sourceBody179_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_22 sourceBody179_32

def sourceBody179_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_19 sourceBody179_33

def sourceBody179_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_18 sourceBody179_34

def sourceBody179_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_17 sourceBody179_35

def sourceBody179_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_13 sourceBody179_36

def sourceBody179_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_12 sourceBody179_37

def sourceBody179_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_11 sourceBody179_38

def sourceBody179_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_8 sourceBody179_39

def sourceBody179_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_7 sourceBody179_40

def sourceBody179_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_6 sourceBody179_41

def sourceBody179_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_1 sourceBody179_42

def sourceBody179_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_0 sourceBody179_43

def sourceBody179_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody179_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody179_26, 179, 2)) (some 175) ([8]) (some (8, sourceBody179_45, 179, 3))

def sourceBody179_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_46 sourceBody179_5

def sourceBody179_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_47 sourceBody179_26

def sourceBody179_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_0 sourceBody179_48

def sourceBody179_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 4])

def sourceBody179_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody179_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_51 sourceBody179_26

def sourceBody179_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_50 sourceBody179_52

def sourceBody179_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_49 sourceBody179_53

def sourceBody179_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_26 sourceBody179_54

def sourceBody179_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_26 sourceBody179_55

def sourceBody179_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody179_44 sourceBody179_56

def source179 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (179, 3, sourceBody179_57)
end InitECandidate.Proofs.WordStages
