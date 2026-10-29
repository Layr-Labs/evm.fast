import InitECandidate.Proofs.WordStages.Source419
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody435_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody435_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody435_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody435_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody435_0, 435, 2)) (some 68) ([8]) (some (8, sourceBody435_2, 435, 3))

def sourceBody435_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody435_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_3 sourceBody435_4

def sourceBody435_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_5 sourceBody435_0

def sourceBody435_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_1 sourceBody435_6

def sourceBody435_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody435_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody435_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 12 10))

def sourceBody435_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody435_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody435_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody435_0, 435, 4)) (some 68) ([6]) (some (12, sourceBody435_12, 435, 5))

def sourceBody435_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_13 sourceBody435_4

def sourceBody435_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_14 sourceBody435_0

def sourceBody435_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_11 sourceBody435_15

def sourceBody435_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_10 sourceBody435_16

def sourceBody435_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_9 sourceBody435_17

def sourceBody435_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_8 sourceBody435_18

def sourceBody435_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody435_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody435_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody435_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 16

def sourceBody435_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_23 sourceBody435_0

def sourceBody435_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_22 sourceBody435_24

def sourceBody435_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_25 sourceBody435_0

def sourceBody435_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_21 sourceBody435_26

def sourceBody435_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_27

def sourceBody435_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_20 sourceBody435_28

def sourceBody435_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_29

def sourceBody435_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody435_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody435_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_32 sourceBody435_26

def sourceBody435_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_33

def sourceBody435_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_31 sourceBody435_34

def sourceBody435_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_35

def sourceBody435_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_30 sourceBody435_36

def sourceBody435_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody435_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_9 sourceBody435_26

def sourceBody435_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_39

def sourceBody435_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_38 sourceBody435_40

def sourceBody435_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_41

def sourceBody435_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_37 sourceBody435_42

def sourceBody435_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody435_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody435_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_45 sourceBody435_0

def sourceBody435_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_44 sourceBody435_46

def sourceBody435_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_43 sourceBody435_47

def sourceBody435_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_19 sourceBody435_48

def sourceBody435_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_49

def sourceBody435_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_50

def sourceBody435_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_7 sourceBody435_51

def sourceBody435_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_52

def sourceBody435_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody435_0 sourceBody435_53

def source435 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (435, 3, sourceBody435_54)
end InitECandidate.Proofs.WordStages
