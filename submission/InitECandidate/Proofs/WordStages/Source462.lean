import InitECandidate.Proofs.WordStages.Source446
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody462_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 8])

def sourceBody462_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody462_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody462_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody462_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 16) sourceBody462_2 sourceBody462_3

def sourceBody462_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody462_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_4 sourceBody462_5

def sourceBody462_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody462_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody462_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody462_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody462_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_9 sourceBody462_10

def sourceBody462_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_8 sourceBody462_11

def sourceBody462_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody462_12 sourceBody462_10

def sourceBody462_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_13 sourceBody462_5

def sourceBody462_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_14 sourceBody462_10

def sourceBody462_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_7 sourceBody462_15

def sourceBody462_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_6 sourceBody462_16

def sourceBody462_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_1 sourceBody462_17

def sourceBody462_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_0 sourceBody462_18

def sourceBody462_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody462_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_20 sourceBody462_11

def sourceBody462_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody462_19 sourceBody462_21

def source462 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (462, 5, sourceBody462_22)
end InitECandidate.Proofs.WordStages
