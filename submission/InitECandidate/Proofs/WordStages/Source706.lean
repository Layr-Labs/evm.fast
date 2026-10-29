import InitECandidate.Proofs.WordStages.Source690
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody706_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 14],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 16],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 18],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 20],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 22],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 24]])

def sourceBody706_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody706_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody706_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody706_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 32) sourceBody706_2 sourceBody706_3

def sourceBody706_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody706_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_4 sourceBody706_5

def sourceBody706_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody706_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody706_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody706_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody706_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_9 sourceBody706_10

def sourceBody706_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_8 sourceBody706_11

def sourceBody706_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody706_12 sourceBody706_10

def sourceBody706_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_13 sourceBody706_5

def sourceBody706_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_14 sourceBody706_10

def sourceBody706_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_7 sourceBody706_15

def sourceBody706_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_6 sourceBody706_16

def sourceBody706_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_1 sourceBody706_17

def sourceBody706_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_0 sourceBody706_18

def sourceBody706_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody706_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_20 sourceBody706_11

def sourceBody706_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody706_19 sourceBody706_21

def source706 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (706, 13, sourceBody706_22)
end InitECandidate.Proofs.WordStages
