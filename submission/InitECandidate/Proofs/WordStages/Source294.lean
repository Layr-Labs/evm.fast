import InitECandidate.Proofs.WordStages.Source278
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody294_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody294_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody294_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody294_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody294_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody294_0, 294, 2)) (some 186) ([12, 10]) (some (12, sourceBody294_3, 294, 3))

def sourceBody294_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody294_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_4 sourceBody294_5

def sourceBody294_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_6 sourceBody294_0

def sourceBody294_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_2 sourceBody294_7

def sourceBody294_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_1 sourceBody294_8

def sourceBody294_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody294_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody294_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody294_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody294_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 16) sourceBody294_12 sourceBody294_13

def sourceBody294_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_14 sourceBody294_5

def sourceBody294_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 10)

def sourceBody294_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody294_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 10, 16]

def sourceBody294_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_18 sourceBody294_0

def sourceBody294_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_11 sourceBody294_19

def sourceBody294_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_13 sourceBody294_20

def sourceBody294_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_17 sourceBody294_21

def sourceBody294_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody294_22 sourceBody294_0

def sourceBody294_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_23 sourceBody294_5

def sourceBody294_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_24 sourceBody294_0

def sourceBody294_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_16 sourceBody294_25

def sourceBody294_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_15 sourceBody294_26

def sourceBody294_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_11 sourceBody294_27

def sourceBody294_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_10 sourceBody294_28

def sourceBody294_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody294_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 8))

def sourceBody294_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody294_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_32 sourceBody294_19

def sourceBody294_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_31 sourceBody294_33

def sourceBody294_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_30 sourceBody294_34

def sourceBody294_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_29 sourceBody294_35

def sourceBody294_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_9 sourceBody294_36

def sourceBody294_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_0 sourceBody294_37

def sourceBody294_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_0 sourceBody294_38

def sourceBody294_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_0 sourceBody294_39

def sourceBody294_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody294_0 sourceBody294_40

def source294 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (294, 3, sourceBody294_41)
end InitECandidate.Proofs.WordStages
