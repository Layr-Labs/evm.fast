import InitECandidate.Proofs.WordStages.Source700
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody716_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody716_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody716_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody716_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody716_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody716_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody716_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 17644856173732828998#64)

def sourceBody716_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 754043588434789617#64)

def sourceBody716_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 10224657059481499349#64)

def sourceBody716_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 7488229067341005760#64)

def sourceBody716_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 11130996698012816685#64)

def sourceBody716_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1267921511277847466#64)

def sourceBody716_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 34, 16, 28, 22, 32, 18, 30, 24, 36, 14, 26, 20]) (none)

def sourceBody716_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody716_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_12 sourceBody716_13

def sourceBody716_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_11 sourceBody716_14

def sourceBody716_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_10 sourceBody716_15

def sourceBody716_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_9 sourceBody716_16

def sourceBody716_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_8 sourceBody716_17

def sourceBody716_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_7 sourceBody716_18

def sourceBody716_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_6 sourceBody716_19

def sourceBody716_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_5 sourceBody716_20

def sourceBody716_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_4 sourceBody716_21

def sourceBody716_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_3 sourceBody716_22

def sourceBody716_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_2 sourceBody716_23

def sourceBody716_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_1 sourceBody716_24

def sourceBody716_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody716_0 sourceBody716_25

def source716 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (716, 7, sourceBody716_26)
end InitECandidate.Proofs.WordStages
