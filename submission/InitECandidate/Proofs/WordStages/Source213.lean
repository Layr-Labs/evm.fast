import InitECandidate.Proofs.WordStages.Source197
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody213_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody213_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody213_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody213_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody213_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 18446744069414583343#64)

def sourceBody213_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody213_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody213_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody213_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 210) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody213_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody213_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_8 sourceBody213_9

def sourceBody213_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_7 sourceBody213_10

def sourceBody213_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_6 sourceBody213_11

def sourceBody213_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_5 sourceBody213_12

def sourceBody213_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_4 sourceBody213_13

def sourceBody213_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_3 sourceBody213_14

def sourceBody213_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_2 sourceBody213_15

def sourceBody213_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_1 sourceBody213_16

def sourceBody213_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody213_0 sourceBody213_17

def source213 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (213, 5, sourceBody213_18)
end InitECandidate.Proofs.WordStages
