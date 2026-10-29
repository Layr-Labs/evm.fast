import InitECandidate.Proofs.WordStages.Source198
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody214_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody214_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody214_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody214_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody214_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 18446744072635809548#64)

def sourceBody214_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody214_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody214_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4611686018427387903#64)

def sourceBody214_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 208) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody214_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody214_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_8 sourceBody214_9

def sourceBody214_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_7 sourceBody214_10

def sourceBody214_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_6 sourceBody214_11

def sourceBody214_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_5 sourceBody214_12

def sourceBody214_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_4 sourceBody214_13

def sourceBody214_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_3 sourceBody214_14

def sourceBody214_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_2 sourceBody214_15

def sourceBody214_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_1 sourceBody214_16

def sourceBody214_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody214_0 sourceBody214_17

def source214 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (214, 5, sourceBody214_18)
end InitECandidate.Proofs.WordStages
