import InitECandidate.Proofs.WordStages.Source366
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody382_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody382_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody382_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody382_0, 382, 2)) (some 69) ([]) (some (16, sourceBody382_1, 382, 3))

def sourceBody382_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody382_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_2 sourceBody382_3

def sourceBody382_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_4 sourceBody382_0

def sourceBody382_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 72#64)

def sourceBody382_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody382_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody382_0, 382, 4)) (some 68) ([12]) (some (12, sourceBody382_7, 382, 5))

def sourceBody382_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_8 sourceBody382_3

def sourceBody382_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_9 sourceBody382_0

def sourceBody382_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_6 sourceBody382_10

def sourceBody382_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody382_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody382_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 18 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody382_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_14 sourceBody382_0

def sourceBody382_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_13 sourceBody382_15

def sourceBody382_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_12 sourceBody382_16

def sourceBody382_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody382_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody382_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody382_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody382_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody382_0, 382, 6)) (some 379) ([18, 8, 14]) (some (18, sourceBody382_21, 382, 7))

def sourceBody382_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_22 sourceBody382_3

def sourceBody382_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_23 sourceBody382_0

def sourceBody382_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_20 sourceBody382_24

def sourceBody382_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_19 sourceBody382_25

def sourceBody382_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_18 sourceBody382_26

def sourceBody382_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_27

def sourceBody382_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_28

def sourceBody382_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_17 sourceBody382_29

def sourceBody382_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody382_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody382_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody382_0, 382, 8)) (some 380) ([18, 8]) (some (18, sourceBody382_21, 382, 9))

def sourceBody382_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_33 sourceBody382_3

def sourceBody382_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_34 sourceBody382_0

def sourceBody382_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_32 sourceBody382_35

def sourceBody382_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_31 sourceBody382_36

def sourceBody382_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_37

def sourceBody382_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_38

def sourceBody382_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_30 sourceBody382_39

def sourceBody382_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody382_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody382_0, 382, 10)) (some 70) ([18]) (some (18, sourceBody382_21, 382, 11))

def sourceBody382_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_42 sourceBody382_3

def sourceBody382_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_43 sourceBody382_0

def sourceBody382_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_41 sourceBody382_44

def sourceBody382_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_45

def sourceBody382_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_46

def sourceBody382_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_40 sourceBody382_47

def sourceBody382_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody382_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody382_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_50 sourceBody382_0

def sourceBody382_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_49 sourceBody382_51

def sourceBody382_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_48 sourceBody382_52

def sourceBody382_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_11 sourceBody382_53

def sourceBody382_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_54

def sourceBody382_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_55

def sourceBody382_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_5 sourceBody382_56

def sourceBody382_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_57

def sourceBody382_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody382_0 sourceBody382_58

def source382 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (382, 4, sourceBody382_59)
end InitECandidate.Proofs.WordStages
