import InitECandidate.Proofs.WordStages.Source252
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody268_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody268_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody268_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody268_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody268_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody268_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody268_0, 268, 2)) (some 77) ([18, 12, 16]) (some (18, sourceBody268_4, 268, 3))

def sourceBody268_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody268_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_5 sourceBody268_6

def sourceBody268_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_7 sourceBody268_0

def sourceBody268_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_3 sourceBody268_8

def sourceBody268_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_2 sourceBody268_9

def sourceBody268_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_1 sourceBody268_10

def sourceBody268_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_0 sourceBody268_11

def sourceBody268_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_0 sourceBody268_12

def sourceBody268_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody268_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody268_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 18 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody268_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_16 sourceBody268_0

def sourceBody268_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_15 sourceBody268_17

def sourceBody268_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_14 sourceBody268_18

def sourceBody268_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_13 sourceBody268_19

def sourceBody268_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 33#64])

def sourceBody268_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody268_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody268_0, 268, 4)) (some 87) ([18, 12]) (some (18, sourceBody268_4, 268, 5))

def sourceBody268_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_23 sourceBody268_6

def sourceBody268_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_24 sourceBody268_0

def sourceBody268_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_22 sourceBody268_25

def sourceBody268_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_21 sourceBody268_26

def sourceBody268_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_0 sourceBody268_27

def sourceBody268_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_0 sourceBody268_28

def sourceBody268_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_20 sourceBody268_29

def sourceBody268_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 41#64])

def sourceBody268_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 255#64])

def sourceBody268_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_32 sourceBody268_17

def sourceBody268_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_31 sourceBody268_33

def sourceBody268_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_30 sourceBody268_34

def sourceBody268_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 42#64])

def sourceBody268_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody268_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_37 sourceBody268_17

def sourceBody268_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_36 sourceBody268_38

def sourceBody268_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_35 sourceBody268_39

def sourceBody268_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 43#64)

def sourceBody268_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody268_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_42 sourceBody268_0

def sourceBody268_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_41 sourceBody268_43

def sourceBody268_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody268_40 sourceBody268_44

def source268 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (268, 6, sourceBody268_45)
end InitECandidate.Proofs.WordStages
