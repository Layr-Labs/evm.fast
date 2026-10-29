import InitECandidate.Proofs.WordStages.Source427
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody443_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody443_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody443_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody443_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody443_0, 443, 2)) (some 439) ([14]) (some (14, sourceBody443_2, 443, 3))

def sourceBody443_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody443_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_3 sourceBody443_4

def sourceBody443_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_5 sourceBody443_0

def sourceBody443_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_1 sourceBody443_6

def sourceBody443_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody443_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody443_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody443_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody443_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody443_0, 443, 4)) (some 440) ([22, 18, 26]) (some (22, sourceBody443_11, 443, 5))

def sourceBody443_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_12 sourceBody443_4

def sourceBody443_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_13 sourceBody443_0

def sourceBody443_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_10 sourceBody443_14

def sourceBody443_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_9 sourceBody443_15

def sourceBody443_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_8 sourceBody443_16

def sourceBody443_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody443_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody443_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody443_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody443_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody443_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody443_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 20

def sourceBody443_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_24 sourceBody443_0

def sourceBody443_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_23 sourceBody443_25

def sourceBody443_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody443_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  20

def sourceBody443_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_28 sourceBody443_0

def sourceBody443_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_27 sourceBody443_29

def sourceBody443_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody443_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  20

def sourceBody443_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_32 sourceBody443_0

def sourceBody443_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_31 sourceBody443_33

def sourceBody443_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody443_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  20

def sourceBody443_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_36 sourceBody443_0

def sourceBody443_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_35 sourceBody443_37

def sourceBody443_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_38 sourceBody443_0

def sourceBody443_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_34 sourceBody443_39

def sourceBody443_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_30 sourceBody443_40

def sourceBody443_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_26 sourceBody443_41

def sourceBody443_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_22 sourceBody443_42

def sourceBody443_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_43

def sourceBody443_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_21 sourceBody443_44

def sourceBody443_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_45

def sourceBody443_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_20 sourceBody443_46

def sourceBody443_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_47

def sourceBody443_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_19 sourceBody443_48

def sourceBody443_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_49

def sourceBody443_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_18 sourceBody443_50

def sourceBody443_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_51

def sourceBody443_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody443_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody443_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_54 sourceBody443_0

def sourceBody443_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_53 sourceBody443_55

def sourceBody443_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_52 sourceBody443_56

def sourceBody443_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_17 sourceBody443_57

def sourceBody443_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_58

def sourceBody443_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_59

def sourceBody443_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_7 sourceBody443_60

def sourceBody443_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_61

def sourceBody443_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody443_0 sourceBody443_62

def source443 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (443, 7, sourceBody443_63)
end InitECandidate.Proofs.WordStages
