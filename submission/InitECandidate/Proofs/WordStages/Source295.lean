import InitECandidate.Proofs.WordStages.Source279
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody295_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody295_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody295_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody295_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody295_0, 295, 2)) (some 68) ([10]) (some (10, sourceBody295_2, 295, 3))

def sourceBody295_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody295_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_3 sourceBody295_4

def sourceBody295_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_5 sourceBody295_0

def sourceBody295_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_1 sourceBody295_6

def sourceBody295_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody295_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody295_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody295_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def sourceBody295_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_11 sourceBody295_0

def sourceBody295_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_10 sourceBody295_12

def sourceBody295_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_13 sourceBody295_0

def sourceBody295_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_9 sourceBody295_14

def sourceBody295_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_15

def sourceBody295_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_8 sourceBody295_16

def sourceBody295_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_17

def sourceBody295_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody295_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_19 sourceBody295_16

def sourceBody295_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_20

def sourceBody295_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_18 sourceBody295_21

def sourceBody295_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody295_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_23 sourceBody295_16

def sourceBody295_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_24

def sourceBody295_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_22 sourceBody295_25

def sourceBody295_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody295_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody295_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_28 sourceBody295_14

def sourceBody295_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_29

def sourceBody295_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_27 sourceBody295_30

def sourceBody295_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_31

def sourceBody295_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_26 sourceBody295_32

def sourceBody295_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody295_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody295_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_35 sourceBody295_0

def sourceBody295_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_34 sourceBody295_36

def sourceBody295_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_33 sourceBody295_37

def sourceBody295_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_7 sourceBody295_38

def sourceBody295_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_39

def sourceBody295_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody295_0 sourceBody295_40

def source295 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (295, 2, sourceBody295_41)
end InitECandidate.Proofs.WordStages
