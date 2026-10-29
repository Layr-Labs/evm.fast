import InitECandidate.Proofs.WordStages.Source292
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody308_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody308_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody308_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody308_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody308_0, 308, 2)) (some 68) ([6]) (some (6, sourceBody308_2, 308, 3))

def sourceBody308_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody308_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_3 sourceBody308_4

def sourceBody308_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_5 sourceBody308_0

def sourceBody308_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_1 sourceBody308_6

def sourceBody308_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody308_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody308_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody308_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 8

def sourceBody308_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_11 sourceBody308_0

def sourceBody308_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_10 sourceBody308_12

def sourceBody308_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_13 sourceBody308_0

def sourceBody308_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_9 sourceBody308_14

def sourceBody308_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_0 sourceBody308_15

def sourceBody308_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_8 sourceBody308_16

def sourceBody308_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_0 sourceBody308_17

def sourceBody308_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody308_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody308_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_20 sourceBody308_14

def sourceBody308_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_0 sourceBody308_21

def sourceBody308_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_19 sourceBody308_22

def sourceBody308_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_0 sourceBody308_23

def sourceBody308_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_18 sourceBody308_24

def sourceBody308_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody308_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody308_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_27 sourceBody308_0

def sourceBody308_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_26 sourceBody308_28

def sourceBody308_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_25 sourceBody308_29

def sourceBody308_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_7 sourceBody308_30

def sourceBody308_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_0 sourceBody308_31

def sourceBody308_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody308_0 sourceBody308_32

def source308 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (308, 3, sourceBody308_33)
end InitECandidate.Proofs.WordStages
