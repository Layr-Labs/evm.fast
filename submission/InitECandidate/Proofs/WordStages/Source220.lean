import InitECandidate.Proofs.WordStages.Source204
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody220_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody220_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody220_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody220_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody220_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody220_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody220_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody220_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 14

def sourceBody220_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_7 sourceBody220_0

def sourceBody220_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_6 sourceBody220_8

def sourceBody220_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody220_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]) 14

def sourceBody220_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_11 sourceBody220_0

def sourceBody220_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_10 sourceBody220_12

def sourceBody220_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody220_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])
  14

def sourceBody220_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_15 sourceBody220_0

def sourceBody220_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_14 sourceBody220_16

def sourceBody220_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody220_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])
  14

def sourceBody220_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_19 sourceBody220_0

def sourceBody220_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_18 sourceBody220_20

def sourceBody220_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_21 sourceBody220_0

def sourceBody220_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_17 sourceBody220_22

def sourceBody220_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_13 sourceBody220_23

def sourceBody220_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_9 sourceBody220_24

def sourceBody220_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_5 sourceBody220_25

def sourceBody220_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_26

def sourceBody220_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_4 sourceBody220_27

def sourceBody220_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_28

def sourceBody220_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_3 sourceBody220_29

def sourceBody220_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_30

def sourceBody220_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_2 sourceBody220_31

def sourceBody220_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_32

def sourceBody220_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_1 sourceBody220_33

def sourceBody220_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_34

def sourceBody220_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody220_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_36 sourceBody220_33

def sourceBody220_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_37

def sourceBody220_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_35 sourceBody220_38

def sourceBody220_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody220_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody220_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_41 sourceBody220_31

def sourceBody220_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_42

def sourceBody220_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_40 sourceBody220_43

def sourceBody220_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_0 sourceBody220_44

def sourceBody220_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_39 sourceBody220_45

def sourceBody220_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody220_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody220_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_48 sourceBody220_0

def sourceBody220_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_47 sourceBody220_49

def sourceBody220_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody220_46 sourceBody220_50

def source220 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (220, 2, sourceBody220_51)
end InitECandidate.Proofs.WordStages
