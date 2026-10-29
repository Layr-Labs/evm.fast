import InitECandidate.Proofs.WordStages.Source200
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody216_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody216_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody216_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody216_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody216_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody216_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody216_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def sourceBody216_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody216_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 13822214165235122497#64)

def sourceBody216_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 13451932020343611451#64)

def sourceBody216_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 18446744073709551614#64)

def sourceBody216_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody216_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 135) ([0, 32, 26, 38, 22, 34, 28, 40, 18, 30, 24, 36, 20]) (none)

def sourceBody216_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody216_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_12 sourceBody216_13

def sourceBody216_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_11 sourceBody216_14

def sourceBody216_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_10 sourceBody216_15

def sourceBody216_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_9 sourceBody216_16

def sourceBody216_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_8 sourceBody216_17

def sourceBody216_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_7 sourceBody216_18

def sourceBody216_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_6 sourceBody216_19

def sourceBody216_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_5 sourceBody216_20

def sourceBody216_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_4 sourceBody216_21

def sourceBody216_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_3 sourceBody216_22

def sourceBody216_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_2 sourceBody216_23

def sourceBody216_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_1 sourceBody216_24

def sourceBody216_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody216_0 sourceBody216_25

def source216 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (216, 9, sourceBody216_26)
end InitECandidate.Proofs.WordStages
