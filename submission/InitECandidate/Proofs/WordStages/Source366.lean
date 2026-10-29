import InitECandidate.Proofs.WordStages.Source350
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody366_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody366_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody366_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody366_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody366_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody366_0, 366, 2)) (some 360) ([14, 6]) (some (14, sourceBody366_3, 366, 3))

def sourceBody366_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody366_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_4 sourceBody366_5

def sourceBody366_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_6 sourceBody366_0

def sourceBody366_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_2 sourceBody366_7

def sourceBody366_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_1 sourceBody366_8

def sourceBody366_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 272#64]))

def sourceBody366_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 280#64]))

def sourceBody366_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody366_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody366_0, 366, 4)) (some 364) ([6, 12]) (some (6, sourceBody366_12, 366, 5))

def sourceBody366_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_13 sourceBody366_5

def sourceBody366_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_14 sourceBody366_0

def sourceBody366_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_11 sourceBody366_15

def sourceBody366_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_10 sourceBody366_16

def sourceBody366_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody366_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 33#64)

def sourceBody366_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 6 12))

def sourceBody366_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_20 sourceBody366_0

def sourceBody366_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_19 sourceBody366_21

def sourceBody366_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_18 sourceBody366_22

def sourceBody366_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody366_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.const 561#64, Flapjack.WordLangExpHOL.const 30#64,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]),
      Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 16])

def sourceBody366_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody366_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_26 sourceBody366_0

def sourceBody366_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_25 sourceBody366_27

def sourceBody366_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_24 sourceBody366_28

def sourceBody366_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_23 sourceBody366_29

def sourceBody366_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_17 sourceBody366_30

def sourceBody366_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_0 sourceBody366_31

def sourceBody366_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_0 sourceBody366_32

def sourceBody366_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_9 sourceBody366_33

def sourceBody366_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_0 sourceBody366_34

def sourceBody366_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody366_0 sourceBody366_35

def source366 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (366, 2, sourceBody366_36)
end InitECandidate.Proofs.WordStages
