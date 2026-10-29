import InitECandidate.Proofs.WordStages.Source701
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody717_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody717_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody717_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody717_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody717_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody717_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody717_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody717_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody717_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody717_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody717_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody717_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody717_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 34, 16, 28, 22, 32, 18, 30, 24, 36, 14, 26, 20]) (none)

def sourceBody717_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody717_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_12 sourceBody717_13

def sourceBody717_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_11 sourceBody717_14

def sourceBody717_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_10 sourceBody717_15

def sourceBody717_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_9 sourceBody717_16

def sourceBody717_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_8 sourceBody717_17

def sourceBody717_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_7 sourceBody717_18

def sourceBody717_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_6 sourceBody717_19

def sourceBody717_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_5 sourceBody717_20

def sourceBody717_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_4 sourceBody717_21

def sourceBody717_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_3 sourceBody717_22

def sourceBody717_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_2 sourceBody717_23

def sourceBody717_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_1 sourceBody717_24

def sourceBody717_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody717_0 sourceBody717_25

def source717 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (717, 7, sourceBody717_26)
end InitECandidate.Proofs.WordStages
