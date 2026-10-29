import InitECandidate.Proofs.WordStages.Source231
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody247_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody247_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody247_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody247_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody247_0, 247, 2)) (some 246) ([12]) (some (12, sourceBody247_2, 247, 3))

def sourceBody247_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody247_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_3 sourceBody247_4

def sourceBody247_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_5 sourceBody247_0

def sourceBody247_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_1 sourceBody247_6

def sourceBody247_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody247_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody247_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody247_0, 247, 4)) (some 246) ([4]) (some (4, sourceBody247_9, 247, 5))

def sourceBody247_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_10 sourceBody247_4

def sourceBody247_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_11 sourceBody247_0

def sourceBody247_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_8 sourceBody247_12

def sourceBody247_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody247_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody247_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody247_0, 247, 6)) (some 246) ([10]) (some (10, sourceBody247_15, 247, 7))

def sourceBody247_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_16 sourceBody247_4

def sourceBody247_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_17 sourceBody247_0

def sourceBody247_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_14 sourceBody247_18

def sourceBody247_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody247_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody247_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody247_0, 247, 8)) (some 246) ([8]) (some (8, sourceBody247_21, 247, 9))

def sourceBody247_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_22 sourceBody247_4

def sourceBody247_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_23 sourceBody247_0

def sourceBody247_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_20 sourceBody247_24

def sourceBody247_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody247_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody247_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_27 sourceBody247_0

def sourceBody247_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_26 sourceBody247_28

def sourceBody247_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_25 sourceBody247_29

def sourceBody247_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_30

def sourceBody247_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_31

def sourceBody247_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_19 sourceBody247_32

def sourceBody247_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_33

def sourceBody247_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_34

def sourceBody247_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_13 sourceBody247_35

def sourceBody247_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_36

def sourceBody247_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_37

def sourceBody247_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_7 sourceBody247_38

def sourceBody247_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_39

def sourceBody247_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody247_0 sourceBody247_40

def source247 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (247, 2, sourceBody247_41)
end InitECandidate.Proofs.WordStages
