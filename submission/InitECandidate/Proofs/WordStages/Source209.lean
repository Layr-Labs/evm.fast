import InitECandidate.Proofs.WordStages.Source193
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody209_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody209_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody209_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody209_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody209_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 18446744069414583341#64)

def sourceBody209_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody209_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody209_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody209_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 208) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody209_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody209_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_8 sourceBody209_9

def sourceBody209_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_7 sourceBody209_10

def sourceBody209_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_6 sourceBody209_11

def sourceBody209_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_5 sourceBody209_12

def sourceBody209_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_4 sourceBody209_13

def sourceBody209_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_3 sourceBody209_14

def sourceBody209_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_2 sourceBody209_15

def sourceBody209_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_1 sourceBody209_16

def sourceBody209_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody209_0 sourceBody209_17

def source209 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (209, 5, sourceBody209_18)
end InitECandidate.Proofs.WordStages
