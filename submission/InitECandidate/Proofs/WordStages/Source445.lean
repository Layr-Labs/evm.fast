import InitECandidate.Proofs.WordStages.Source429
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody445_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody445_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody445_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody445_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody445_0, 445, 2)) (some 439) ([12]) (some (12, sourceBody445_2, 445, 3))

def sourceBody445_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody445_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_3 sourceBody445_4

def sourceBody445_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_5 sourceBody445_0

def sourceBody445_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_1 sourceBody445_6

def sourceBody445_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody445_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody445_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody445_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody445_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody445_0, 445, 4)) (some 440) ([18, 10, 14]) (some (18, sourceBody445_11, 445, 5))

def sourceBody445_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_12 sourceBody445_4

def sourceBody445_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_13 sourceBody445_0

def sourceBody445_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_10 sourceBody445_14

def sourceBody445_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_9 sourceBody445_15

def sourceBody445_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_8 sourceBody445_16

def sourceBody445_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody445_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody445_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody445_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 14

def sourceBody445_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_21 sourceBody445_0

def sourceBody445_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_20 sourceBody445_22

def sourceBody445_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_23 sourceBody445_0

def sourceBody445_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_19 sourceBody445_24

def sourceBody445_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_25

def sourceBody445_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_18 sourceBody445_26

def sourceBody445_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_27

def sourceBody445_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody445_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody445_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_30 sourceBody445_24

def sourceBody445_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_31

def sourceBody445_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_29 sourceBody445_32

def sourceBody445_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_33

def sourceBody445_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_28 sourceBody445_34

def sourceBody445_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody445_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody445_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_37 sourceBody445_0

def sourceBody445_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_36 sourceBody445_38

def sourceBody445_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_35 sourceBody445_39

def sourceBody445_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_17 sourceBody445_40

def sourceBody445_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_41

def sourceBody445_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_42

def sourceBody445_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_7 sourceBody445_43

def sourceBody445_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_44

def sourceBody445_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody445_0 sourceBody445_45

def source445 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (445, 5, sourceBody445_46)
end InitECandidate.Proofs.WordStages
