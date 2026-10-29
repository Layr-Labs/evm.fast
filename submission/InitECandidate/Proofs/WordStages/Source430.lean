import InitECandidate.Proofs.WordStages.Source414
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody430_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody430_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody430_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody430_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody430_0, 430, 2)) (some 407) ([10]) (some (10, sourceBody430_2, 430, 3))

def sourceBody430_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody430_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_3 sourceBody430_4

def sourceBody430_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_5 sourceBody430_0

def sourceBody430_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_1 sourceBody430_6

def sourceBody430_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody430_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody430_0, 430, 4)) (some 395) ([10]) (some (10, sourceBody430_2, 430, 5))

def sourceBody430_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_9 sourceBody430_4

def sourceBody430_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_10 sourceBody430_0

def sourceBody430_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_8 sourceBody430_11

def sourceBody430_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody430_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody430_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody430_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 8

def sourceBody430_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_16 sourceBody430_0

def sourceBody430_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_15 sourceBody430_17

def sourceBody430_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_18 sourceBody430_0

def sourceBody430_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_14 sourceBody430_19

def sourceBody430_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_0 sourceBody430_20

def sourceBody430_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_13 sourceBody430_21

def sourceBody430_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_0 sourceBody430_22

def sourceBody430_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_12 sourceBody430_23

def sourceBody430_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody430_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody430_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody430_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody430_0, 430, 6)) (some 423) ([4, 8]) (some (4, sourceBody430_27, 430, 7))

def sourceBody430_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_28 sourceBody430_4

def sourceBody430_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_29 sourceBody430_0

def sourceBody430_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_26 sourceBody430_30

def sourceBody430_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_25 sourceBody430_31

def sourceBody430_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_0 sourceBody430_32

def sourceBody430_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_0 sourceBody430_33

def sourceBody430_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_24 sourceBody430_34

def sourceBody430_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody430_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody430_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_37 sourceBody430_0

def sourceBody430_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_36 sourceBody430_38

def sourceBody430_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_35 sourceBody430_39

def sourceBody430_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_7 sourceBody430_40

def sourceBody430_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_0 sourceBody430_41

def sourceBody430_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody430_0 sourceBody430_42

def source430 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (430, 2, sourceBody430_43)
end InitECandidate.Proofs.WordStages
