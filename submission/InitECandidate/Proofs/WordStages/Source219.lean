import InitECandidate.Proofs.WordStages.Source203
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody219_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody219_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody219_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody219_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody219_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 13822214165235122497#64)

def sourceBody219_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 13451932020343611451#64)

def sourceBody219_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551614#64)

def sourceBody219_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody219_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 210) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody219_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody219_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_8 sourceBody219_9

def sourceBody219_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_7 sourceBody219_10

def sourceBody219_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_6 sourceBody219_11

def sourceBody219_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_5 sourceBody219_12

def sourceBody219_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_4 sourceBody219_13

def sourceBody219_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_3 sourceBody219_14

def sourceBody219_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_2 sourceBody219_15

def sourceBody219_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_1 sourceBody219_16

def sourceBody219_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody219_0 sourceBody219_17

def source219 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (219, 5, sourceBody219_18)
end InitECandidate.Proofs.WordStages
