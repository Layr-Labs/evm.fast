import InitECandidate.Proofs.WordStages.Source689
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody705_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 12])

def sourceBody705_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody705_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody705_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody705_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 18) sourceBody705_2 sourceBody705_3

def sourceBody705_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody705_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_4 sourceBody705_5

def sourceBody705_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody705_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody705_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody705_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody705_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_9 sourceBody705_10

def sourceBody705_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_8 sourceBody705_11

def sourceBody705_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody705_12 sourceBody705_10

def sourceBody705_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_13 sourceBody705_5

def sourceBody705_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_14 sourceBody705_10

def sourceBody705_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_7 sourceBody705_15

def sourceBody705_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_6 sourceBody705_16

def sourceBody705_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_1 sourceBody705_17

def sourceBody705_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_0 sourceBody705_18

def sourceBody705_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody705_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_20 sourceBody705_11

def sourceBody705_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody705_19 sourceBody705_21

def source705 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (705, 7, sourceBody705_22)
end InitECandidate.Proofs.WordStages
