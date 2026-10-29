import InitECandidate.Proofs.WordStages.Source309
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody325_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody325_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody325_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody325_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody325_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody325_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody325_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody325_4 sourceBody325_5

def sourceBody325_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody325_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_6 sourceBody325_7

def sourceBody325_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody325_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody325_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody325_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 4]

def sourceBody325_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_12 sourceBody325_0

def sourceBody325_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_11 sourceBody325_13

def sourceBody325_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_10 sourceBody325_14

def sourceBody325_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody325_15 sourceBody325_0

def sourceBody325_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_16 sourceBody325_7

def sourceBody325_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_17 sourceBody325_0

def sourceBody325_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_9 sourceBody325_18

def sourceBody325_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_8 sourceBody325_19

def sourceBody325_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_3 sourceBody325_20

def sourceBody325_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_2 sourceBody325_21

def sourceBody325_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody325_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody325_4 sourceBody325_5

def sourceBody325_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_24 sourceBody325_7

def sourceBody325_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody325_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody325_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody325_0, 325, 2)) (some 286) ([4]) (some (4, sourceBody325_27, 325, 3))

def sourceBody325_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_28 sourceBody325_7

def sourceBody325_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_29 sourceBody325_0

def sourceBody325_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_26 sourceBody325_30

def sourceBody325_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_0 sourceBody325_31

def sourceBody325_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_0 sourceBody325_32

def sourceBody325_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody325_33 sourceBody325_0

def sourceBody325_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_34 sourceBody325_7

def sourceBody325_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_35 sourceBody325_0

def sourceBody325_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_9 sourceBody325_36

def sourceBody325_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_25 sourceBody325_37

def sourceBody325_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_3 sourceBody325_38

def sourceBody325_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_23 sourceBody325_39

def sourceBody325_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_22 sourceBody325_40

def sourceBody325_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody325_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody325_0, 325, 4)) (some 324) ([4]) (some (4, sourceBody325_27, 325, 5))

def sourceBody325_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_43 sourceBody325_7

def sourceBody325_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_44 sourceBody325_0

def sourceBody325_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_42 sourceBody325_45

def sourceBody325_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_0 sourceBody325_46

def sourceBody325_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_0 sourceBody325_47

def sourceBody325_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_41 sourceBody325_48

def sourceBody325_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody325_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_50 sourceBody325_14

def sourceBody325_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_49 sourceBody325_51

def sourceBody325_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_1 sourceBody325_52

def sourceBody325_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody325_0 sourceBody325_53

def source325 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (325, 2, sourceBody325_54)
end InitECandidate.Proofs.WordStages
