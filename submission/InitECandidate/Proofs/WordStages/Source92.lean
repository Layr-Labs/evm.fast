import InitECandidate.Proofs.WordStages.Source76
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody92_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody92_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody92_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody92_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody92_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 10) sourceBody92_2 sourceBody92_3

def sourceBody92_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody92_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_4 sourceBody92_5

def sourceBody92_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody92_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody92_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody92_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody92_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_9 sourceBody92_10

def sourceBody92_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_8 sourceBody92_11

def sourceBody92_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody92_12 sourceBody92_10

def sourceBody92_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_13 sourceBody92_5

def sourceBody92_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_14 sourceBody92_10

def sourceBody92_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_7 sourceBody92_15

def sourceBody92_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_6 sourceBody92_16

def sourceBody92_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_1 sourceBody92_17

def sourceBody92_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_0 sourceBody92_18

def sourceBody92_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody92_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_20 sourceBody92_11

def sourceBody92_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody92_19 sourceBody92_21

def source92 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (92, 3, sourceBody92_22)
end InitECandidate.Proofs.WordStages
