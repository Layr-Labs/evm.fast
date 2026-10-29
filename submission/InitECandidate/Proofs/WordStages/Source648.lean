import InitECandidate.Proofs.WordStages.Source632
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody648_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody648_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody648_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody648_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody648_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody648_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody648_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody648_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 14

def sourceBody648_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_7 sourceBody648_0

def sourceBody648_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_6 sourceBody648_8

def sourceBody648_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody648_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]) 14

def sourceBody648_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_11 sourceBody648_0

def sourceBody648_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_10 sourceBody648_12

def sourceBody648_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody648_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])
  14

def sourceBody648_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_15 sourceBody648_0

def sourceBody648_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_14 sourceBody648_16

def sourceBody648_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody648_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])
  14

def sourceBody648_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_19 sourceBody648_0

def sourceBody648_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_18 sourceBody648_20

def sourceBody648_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_21 sourceBody648_0

def sourceBody648_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_17 sourceBody648_22

def sourceBody648_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_13 sourceBody648_23

def sourceBody648_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_9 sourceBody648_24

def sourceBody648_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_5 sourceBody648_25

def sourceBody648_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_26

def sourceBody648_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_4 sourceBody648_27

def sourceBody648_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_28

def sourceBody648_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_3 sourceBody648_29

def sourceBody648_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_30

def sourceBody648_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_2 sourceBody648_31

def sourceBody648_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_32

def sourceBody648_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_1 sourceBody648_33

def sourceBody648_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_34

def sourceBody648_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody648_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_36 sourceBody648_33

def sourceBody648_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_37

def sourceBody648_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_35 sourceBody648_38

def sourceBody648_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody648_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody648_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_41 sourceBody648_31

def sourceBody648_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_42

def sourceBody648_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_40 sourceBody648_43

def sourceBody648_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_0 sourceBody648_44

def sourceBody648_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_39 sourceBody648_45

def sourceBody648_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody648_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody648_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_48 sourceBody648_0

def sourceBody648_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_47 sourceBody648_49

def sourceBody648_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody648_46 sourceBody648_50

def source648 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (648, 2, sourceBody648_51)
end InitECandidate.Proofs.WordStages
