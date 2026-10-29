import InitECandidate.Proofs.WordStages.Source280
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody296_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody296_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody296_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody296_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody296_0, 296, 2)) (some 68) ([12]) (some (12, sourceBody296_2, 296, 3))

def sourceBody296_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody296_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_3 sourceBody296_4

def sourceBody296_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_5 sourceBody296_0

def sourceBody296_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_1 sourceBody296_6

def sourceBody296_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody296_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody296_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody296_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 10

def sourceBody296_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_11 sourceBody296_0

def sourceBody296_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_10 sourceBody296_12

def sourceBody296_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_13 sourceBody296_0

def sourceBody296_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_9 sourceBody296_14

def sourceBody296_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_15

def sourceBody296_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_8 sourceBody296_16

def sourceBody296_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_17

def sourceBody296_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody296_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody296_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_20 sourceBody296_14

def sourceBody296_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_21

def sourceBody296_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_19 sourceBody296_22

def sourceBody296_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_23

def sourceBody296_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_18 sourceBody296_24

def sourceBody296_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody296_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_26 sourceBody296_22

def sourceBody296_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_27

def sourceBody296_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_25 sourceBody296_28

def sourceBody296_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody296_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_30 sourceBody296_22

def sourceBody296_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_31

def sourceBody296_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_29 sourceBody296_32

def sourceBody296_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody296_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody296_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_35 sourceBody296_14

def sourceBody296_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_36

def sourceBody296_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_34 sourceBody296_37

def sourceBody296_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_38

def sourceBody296_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_33 sourceBody296_39

def sourceBody296_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody296_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody296_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_42 sourceBody296_14

def sourceBody296_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_43

def sourceBody296_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_41 sourceBody296_44

def sourceBody296_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_45

def sourceBody296_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_40 sourceBody296_46

def sourceBody296_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody296_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody296_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_49 sourceBody296_14

def sourceBody296_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_50

def sourceBody296_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_48 sourceBody296_51

def sourceBody296_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_52

def sourceBody296_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_47 sourceBody296_53

def sourceBody296_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody296_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody296_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_56 sourceBody296_14

def sourceBody296_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_57

def sourceBody296_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_55 sourceBody296_58

def sourceBody296_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_59

def sourceBody296_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_54 sourceBody296_60

def sourceBody296_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody296_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody296_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_63 sourceBody296_0

def sourceBody296_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_62 sourceBody296_64

def sourceBody296_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_61 sourceBody296_65

def sourceBody296_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_7 sourceBody296_66

def sourceBody296_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_67

def sourceBody296_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody296_0 sourceBody296_68

def source296 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (296, 5, sourceBody296_69)
end InitECandidate.Proofs.WordStages
