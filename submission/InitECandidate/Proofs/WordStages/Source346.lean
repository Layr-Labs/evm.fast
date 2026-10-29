import InitECandidate.Proofs.WordStages.Source330
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody346_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody346_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody346_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody346_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody346_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody346_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody346_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_5 sourceBody346_0

def sourceBody346_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_6 sourceBody346_0

def sourceBody346_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 100#64, Flapjack.WordLangExpHOL.var 6])

def sourceBody346_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody346_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_9 sourceBody346_0

def sourceBody346_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_10 sourceBody346_0

def sourceBody346_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_8 sourceBody346_11

def sourceBody346_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_0 sourceBody346_12

def sourceBody346_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody346_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_14 sourceBody346_3

def sourceBody346_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_13 sourceBody346_15

def sourceBody346_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_7 sourceBody346_16

def sourceBody346_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_4 sourceBody346_17

def sourceBody346_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 1#64) sourceBody346_3 sourceBody346_18

def sourceBody346_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_19 sourceBody346_4

def sourceBody346_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody346_0, 346, 2)) (some 345) ([10, 8]) (some (10, sourceBody346_20, 346, 3))

def sourceBody346_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_21 sourceBody346_4

def sourceBody346_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_22 sourceBody346_0

def sourceBody346_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_2 sourceBody346_23

def sourceBody346_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_1 sourceBody346_24

def sourceBody346_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody346_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody346_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_27 sourceBody346_0

def sourceBody346_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_26 sourceBody346_28

def sourceBody346_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_25 sourceBody346_29

def sourceBody346_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_0 sourceBody346_30

def sourceBody346_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_0 sourceBody346_31

def sourceBody346_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_0 sourceBody346_32

def sourceBody346_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody346_0 sourceBody346_33

def source346 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (346, 3, sourceBody346_34)
end InitECandidate.Proofs.WordStages
