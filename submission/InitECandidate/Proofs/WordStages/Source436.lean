import InitECandidate.Proofs.WordStages.Source420
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody436_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody436_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody436_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody436_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody436_0, 436, 2)) (some 74) ([8]) (some (8, sourceBody436_2, 436, 3))

def sourceBody436_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody436_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_3 sourceBody436_4

def sourceBody436_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_5 sourceBody436_0

def sourceBody436_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_1 sourceBody436_6

def sourceBody436_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody436_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody436_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 12 10))

def sourceBody436_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody436_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody436_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody436_0, 436, 4)) (some 74) ([6]) (some (12, sourceBody436_12, 436, 5))

def sourceBody436_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_13 sourceBody436_4

def sourceBody436_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_14 sourceBody436_0

def sourceBody436_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_11 sourceBody436_15

def sourceBody436_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_10 sourceBody436_16

def sourceBody436_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_9 sourceBody436_17

def sourceBody436_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_8 sourceBody436_18

def sourceBody436_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody436_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody436_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody436_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 16

def sourceBody436_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_23 sourceBody436_0

def sourceBody436_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_22 sourceBody436_24

def sourceBody436_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_25 sourceBody436_0

def sourceBody436_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_21 sourceBody436_26

def sourceBody436_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_27

def sourceBody436_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_20 sourceBody436_28

def sourceBody436_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_29

def sourceBody436_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody436_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody436_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_32 sourceBody436_26

def sourceBody436_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_33

def sourceBody436_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_31 sourceBody436_34

def sourceBody436_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_35

def sourceBody436_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_30 sourceBody436_36

def sourceBody436_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody436_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_9 sourceBody436_26

def sourceBody436_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_39

def sourceBody436_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_38 sourceBody436_40

def sourceBody436_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_41

def sourceBody436_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_37 sourceBody436_42

def sourceBody436_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody436_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody436_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_45 sourceBody436_0

def sourceBody436_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_44 sourceBody436_46

def sourceBody436_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_43 sourceBody436_47

def sourceBody436_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_19 sourceBody436_48

def sourceBody436_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_49

def sourceBody436_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_50

def sourceBody436_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_7 sourceBody436_51

def sourceBody436_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_52

def sourceBody436_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody436_0 sourceBody436_53

def source436 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (436, 3, sourceBody436_54)
end InitECandidate.Proofs.WordStages
