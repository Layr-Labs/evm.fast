import InitECandidate.Proofs.WordStages.Source199
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody215_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody215_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody215_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 6)

def sourceBody215_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody215_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody215_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody215_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def sourceBody215_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody215_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 13822214165235122497#64)

def sourceBody215_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 13451932020343611451#64)

def sourceBody215_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 18446744073709551614#64)

def sourceBody215_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody215_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 136) ([0, 32, 26, 38, 22, 34, 28, 40, 18, 30, 24, 36, 20]) (none)

def sourceBody215_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody215_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_12 sourceBody215_13

def sourceBody215_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_11 sourceBody215_14

def sourceBody215_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_10 sourceBody215_15

def sourceBody215_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_9 sourceBody215_16

def sourceBody215_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_8 sourceBody215_17

def sourceBody215_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_7 sourceBody215_18

def sourceBody215_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_6 sourceBody215_19

def sourceBody215_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_5 sourceBody215_20

def sourceBody215_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_4 sourceBody215_21

def sourceBody215_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_3 sourceBody215_22

def sourceBody215_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_2 sourceBody215_23

def sourceBody215_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_1 sourceBody215_24

def sourceBody215_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody215_0 sourceBody215_25

def source215 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (215, 9, sourceBody215_26)
end InitECandidate.Proofs.WordStages
