import InitECandidate.Proofs.WordStages.Source202
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody218_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody218_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody218_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody218_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody218_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 13822214165235122495#64)

def sourceBody218_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 13451932020343611451#64)

def sourceBody218_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551614#64)

def sourceBody218_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody218_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 217) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody218_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody218_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_8 sourceBody218_9

def sourceBody218_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_7 sourceBody218_10

def sourceBody218_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_6 sourceBody218_11

def sourceBody218_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_5 sourceBody218_12

def sourceBody218_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_4 sourceBody218_13

def sourceBody218_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_3 sourceBody218_14

def sourceBody218_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_2 sourceBody218_15

def sourceBody218_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_1 sourceBody218_16

def sourceBody218_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody218_0 sourceBody218_17

def source218 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (218, 5, sourceBody218_18)
end InitECandidate.Proofs.WordStages
