import InitECandidate.Proofs.WordStages.Source631
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody647_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody647_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody647_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody647_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody647_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody647_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 4294967295#64)

def sourceBody647_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody647_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 18446744069414584321#64)

def sourceBody647_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 210) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody647_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody647_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_8 sourceBody647_9

def sourceBody647_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_7 sourceBody647_10

def sourceBody647_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_6 sourceBody647_11

def sourceBody647_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_5 sourceBody647_12

def sourceBody647_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_4 sourceBody647_13

def sourceBody647_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_3 sourceBody647_14

def sourceBody647_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_2 sourceBody647_15

def sourceBody647_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_1 sourceBody647_16

def sourceBody647_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody647_0 sourceBody647_17

def source647 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (647, 5, sourceBody647_18)
end InitECandidate.Proofs.WordStages
