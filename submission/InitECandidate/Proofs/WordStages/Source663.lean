import InitECandidate.Proofs.WordStages.Source647
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody663_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody663_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody663_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 6)

def sourceBody663_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody663_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody663_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody663_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody663_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody663_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 661) ([0, 20, 16, 24, 10, 18, 14, 22, 12]) (none)

def sourceBody663_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody663_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_8 sourceBody663_9

def sourceBody663_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_7 sourceBody663_10

def sourceBody663_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_6 sourceBody663_11

def sourceBody663_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_5 sourceBody663_12

def sourceBody663_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_4 sourceBody663_13

def sourceBody663_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_3 sourceBody663_14

def sourceBody663_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_2 sourceBody663_15

def sourceBody663_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_1 sourceBody663_16

def sourceBody663_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody663_0 sourceBody663_17

def source663 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (663, 5, sourceBody663_18)
end InitECandidate.Proofs.WordStages
