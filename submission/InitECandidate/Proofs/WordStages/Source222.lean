import InitECandidate.Proofs.WordStages.Source206
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody222_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody222_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody222_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody222_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody222_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody222_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody222_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody222_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody222_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody222_9 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 102) ([0, 10, 18, 4, 12]) (none)

def sourceBody222_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_9 sourceBody222_0

def sourceBody222_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_8 sourceBody222_10

def sourceBody222_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_7 sourceBody222_11

def sourceBody222_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_6 sourceBody222_12

def sourceBody222_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_5 sourceBody222_13

def sourceBody222_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_4 sourceBody222_14

def sourceBody222_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_0 sourceBody222_15

def sourceBody222_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_3 sourceBody222_16

def sourceBody222_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_0 sourceBody222_17

def sourceBody222_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_2 sourceBody222_18

def sourceBody222_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_0 sourceBody222_19

def sourceBody222_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_1 sourceBody222_20

def sourceBody222_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody222_0 sourceBody222_21

def source222 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (222, 2, sourceBody222_22)
end InitECandidate.Proofs.WordStages
