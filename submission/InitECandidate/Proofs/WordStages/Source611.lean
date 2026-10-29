import InitECandidate.Proofs.WordStages.Source595
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody611_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody611_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody611_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody611_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody611_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody611_0, 611, 2)) (some 194) ([8, 4]) (some (8, sourceBody611_3, 611, 3))

def sourceBody611_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody611_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_4 sourceBody611_5

def sourceBody611_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_6 sourceBody611_0

def sourceBody611_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_2 sourceBody611_7

def sourceBody611_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_1 sourceBody611_8

def sourceBody611_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_0 sourceBody611_9

def sourceBody611_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_0 sourceBody611_10

def sourceBody611_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 176#64]))

def sourceBody611_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 272#64]))

def sourceBody611_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody611_0, 611, 4)) (some 194) ([8, 4]) (some (8, sourceBody611_3, 611, 5))

def sourceBody611_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_14 sourceBody611_5

def sourceBody611_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_15 sourceBody611_0

def sourceBody611_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_13 sourceBody611_16

def sourceBody611_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_12 sourceBody611_17

def sourceBody611_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_0 sourceBody611_18

def sourceBody611_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_0 sourceBody611_19

def sourceBody611_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_11 sourceBody611_20

def sourceBody611_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody611_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody611_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_23 sourceBody611_0

def sourceBody611_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_22 sourceBody611_24

def sourceBody611_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody611_21 sourceBody611_25

def source611 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (611, 2, sourceBody611_26)
end InitECandidate.Proofs.WordStages
