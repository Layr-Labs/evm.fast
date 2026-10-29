import InitECandidate.Proofs.WordStages.Source480
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody496_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody496_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3000#64)

def sourceBody496_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody496_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody496_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 10) sourceBody496_2 sourceBody496_3

def sourceBody496_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody496_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_4 sourceBody496_5

def sourceBody496_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody496_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody496_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody496_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody496_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody496_8, 496, 2)) (some 494) ([6]) (some (6, sourceBody496_10, 496, 3))

def sourceBody496_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_11 sourceBody496_5

def sourceBody496_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_12 sourceBody496_8

def sourceBody496_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_9 sourceBody496_13

def sourceBody496_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_8 sourceBody496_14

def sourceBody496_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_8 sourceBody496_15

def sourceBody496_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody496_16 sourceBody496_8

def sourceBody496_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_17 sourceBody496_5

def sourceBody496_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_18 sourceBody496_8

def sourceBody496_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_7 sourceBody496_19

def sourceBody496_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_6 sourceBody496_20

def sourceBody496_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_1 sourceBody496_21

def sourceBody496_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_0 sourceBody496_22

def sourceBody496_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody496_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody496_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_25 sourceBody496_8

def sourceBody496_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_24 sourceBody496_26

def sourceBody496_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody496_23 sourceBody496_27

def source496 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (496, 3, sourceBody496_28)
end InitECandidate.Proofs.WordStages
