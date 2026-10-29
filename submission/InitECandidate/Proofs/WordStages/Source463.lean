import InitECandidate.Proofs.WordStages.Source447
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody463_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody463_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 4])

def sourceBody463_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody463_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody463_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody463_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody463_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody463_4 sourceBody463_5

def sourceBody463_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody463_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_6 sourceBody463_7

def sourceBody463_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody463_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody463_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody463_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_11 sourceBody463_0

def sourceBody463_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_10 sourceBody463_12

def sourceBody463_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody463_13 sourceBody463_0

def sourceBody463_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_14 sourceBody463_7

def sourceBody463_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_15 sourceBody463_0

def sourceBody463_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_9 sourceBody463_16

def sourceBody463_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_8 sourceBody463_17

def sourceBody463_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_3 sourceBody463_18

def sourceBody463_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_2 sourceBody463_19

def sourceBody463_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody463_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_21 sourceBody463_12

def sourceBody463_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_20 sourceBody463_22

def sourceBody463_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_1 sourceBody463_23

def sourceBody463_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody463_0 sourceBody463_24

def source463 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (463, 3, sourceBody463_25)
end InitECandidate.Proofs.WordStages
