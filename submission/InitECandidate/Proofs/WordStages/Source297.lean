import InitECandidate.Proofs.WordStages.Source281
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody297_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody297_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody297_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody297_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody297_0, 297, 2)) (some 68) ([12]) (some (12, sourceBody297_2, 297, 3))

def sourceBody297_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody297_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_3 sourceBody297_4

def sourceBody297_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_5 sourceBody297_0

def sourceBody297_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_1 sourceBody297_6

def sourceBody297_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody297_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody297_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody297_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 14

def sourceBody297_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_11 sourceBody297_0

def sourceBody297_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_10 sourceBody297_12

def sourceBody297_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_13 sourceBody297_0

def sourceBody297_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_9 sourceBody297_14

def sourceBody297_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_15

def sourceBody297_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_8 sourceBody297_16

def sourceBody297_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_17

def sourceBody297_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody297_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody297_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_20 sourceBody297_14

def sourceBody297_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_21

def sourceBody297_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_19 sourceBody297_22

def sourceBody297_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_23

def sourceBody297_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_18 sourceBody297_24

def sourceBody297_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody297_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_26 sourceBody297_22

def sourceBody297_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_27

def sourceBody297_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_25 sourceBody297_28

def sourceBody297_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody297_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_30 sourceBody297_22

def sourceBody297_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_31

def sourceBody297_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_29 sourceBody297_32

def sourceBody297_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody297_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody297_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_35 sourceBody297_14

def sourceBody297_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_36

def sourceBody297_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_34 sourceBody297_37

def sourceBody297_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_38

def sourceBody297_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_33 sourceBody297_39

def sourceBody297_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody297_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody297_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_42 sourceBody297_14

def sourceBody297_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_43

def sourceBody297_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_41 sourceBody297_44

def sourceBody297_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_45

def sourceBody297_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_40 sourceBody297_46

def sourceBody297_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody297_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody297_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_49 sourceBody297_14

def sourceBody297_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_50

def sourceBody297_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_48 sourceBody297_51

def sourceBody297_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_52

def sourceBody297_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_47 sourceBody297_53

def sourceBody297_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody297_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody297_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_56 sourceBody297_0

def sourceBody297_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_55 sourceBody297_57

def sourceBody297_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_54 sourceBody297_58

def sourceBody297_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_7 sourceBody297_59

def sourceBody297_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_60

def sourceBody297_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody297_0 sourceBody297_61

def source297 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (297, 4, sourceBody297_62)
end InitECandidate.Proofs.WordStages
