import InitECandidate.Proofs.WordStages.Source342
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody358_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody358_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody358_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody358_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody358_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody358_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody358_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody358_0, 358, 2)) (some 139) ([12, 18, 10, 14]) (some (12, sourceBody358_5, 358, 3))

def sourceBody358_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody358_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_6 sourceBody358_7

def sourceBody358_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_8 sourceBody358_0

def sourceBody358_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_4 sourceBody358_9

def sourceBody358_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_3 sourceBody358_10

def sourceBody358_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_2 sourceBody358_11

def sourceBody358_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_1 sourceBody358_12

def sourceBody358_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody358_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody358_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody358_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody358_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 10) sourceBody358_16 sourceBody358_17

def sourceBody358_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_18 sourceBody358_7

def sourceBody358_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody358_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody358_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody358_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_22 sourceBody358_0

def sourceBody358_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_21 sourceBody358_23

def sourceBody358_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody358_24 sourceBody358_0

def sourceBody358_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_25 sourceBody358_7

def sourceBody358_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_26 sourceBody358_0

def sourceBody358_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_20 sourceBody358_27

def sourceBody358_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_19 sourceBody358_28

def sourceBody358_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_15 sourceBody358_29

def sourceBody358_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_14 sourceBody358_30

def sourceBody358_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody358_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody358_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody358_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 10) sourceBody358_16 sourceBody358_17

def sourceBody358_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_35 sourceBody358_7

def sourceBody358_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_36 sourceBody358_28

def sourceBody358_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_34 sourceBody358_37

def sourceBody358_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_33 sourceBody358_38

def sourceBody358_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody358_39 sourceBody358_0

def sourceBody358_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_40 sourceBody358_7

def sourceBody358_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_41 sourceBody358_0

def sourceBody358_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_20 sourceBody358_42

def sourceBody358_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_19 sourceBody358_43

def sourceBody358_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_32 sourceBody358_44

def sourceBody358_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_14 sourceBody358_45

def sourceBody358_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_31 sourceBody358_46

def sourceBody358_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 16])

def sourceBody358_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_48 sourceBody358_23

def sourceBody358_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_47 sourceBody358_49

def sourceBody358_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_13 sourceBody358_50

def sourceBody358_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_0 sourceBody358_51

def sourceBody358_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody358_0 sourceBody358_52

def source358 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (358, 5, sourceBody358_53)
end InitECandidate.Proofs.WordStages
