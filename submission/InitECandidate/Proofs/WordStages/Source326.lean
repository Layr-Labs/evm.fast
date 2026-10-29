import InitECandidate.Proofs.WordStages.Source310
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody326_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody326_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody326_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody326_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody326_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody326_5 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 8) sourceBody326_4 sourceBody326_2

def sourceBody326_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody326_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_5 sourceBody326_6

def sourceBody326_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody326_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody326_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody326_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody326_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_11 sourceBody326_0

def sourceBody326_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_10 sourceBody326_12

def sourceBody326_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_9 sourceBody326_13

def sourceBody326_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_14 sourceBody326_0

def sourceBody326_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody326_15 sourceBody326_0

def sourceBody326_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_16 sourceBody326_6

def sourceBody326_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_17 sourceBody326_0

def sourceBody326_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_8 sourceBody326_18

def sourceBody326_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_7 sourceBody326_19

def sourceBody326_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_3 sourceBody326_20

def sourceBody326_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_2 sourceBody326_21

def sourceBody326_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody326_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody326_25 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 179) ([0, 6, 10]) (none)

def sourceBody326_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_25 sourceBody326_0

def sourceBody326_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_24 sourceBody326_26

def sourceBody326_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_23 sourceBody326_27

def sourceBody326_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_22 sourceBody326_28

def sourceBody326_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_1 sourceBody326_29

def sourceBody326_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody326_0 sourceBody326_30

def source326 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (326, 3, sourceBody326_31)
end InitECandidate.Proofs.WordStages
