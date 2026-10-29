import InitECandidate.Proofs.WordStages.Source89
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody105_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 12],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 14],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 16]])

def sourceBody105_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody105_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody105_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody105_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 24) sourceBody105_2 sourceBody105_3

def sourceBody105_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody105_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_4 sourceBody105_5

def sourceBody105_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody105_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody105_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody105_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody105_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_9 sourceBody105_10

def sourceBody105_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_8 sourceBody105_11

def sourceBody105_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody105_12 sourceBody105_10

def sourceBody105_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_13 sourceBody105_5

def sourceBody105_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_14 sourceBody105_10

def sourceBody105_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_7 sourceBody105_15

def sourceBody105_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_6 sourceBody105_16

def sourceBody105_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_1 sourceBody105_17

def sourceBody105_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_0 sourceBody105_18

def sourceBody105_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody105_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_20 sourceBody105_11

def sourceBody105_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody105_19 sourceBody105_21

def source105 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (105, 9, sourceBody105_22)
end InitECandidate.Proofs.WordStages
