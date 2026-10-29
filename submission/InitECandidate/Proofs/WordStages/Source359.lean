import InitECandidate.Proofs.WordStages.Source343
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody359_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody359_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody359_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody359_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody359_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 10) sourceBody359_2 sourceBody359_3

def sourceBody359_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody359_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_4 sourceBody359_5

def sourceBody359_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody359_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody359_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody359_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody359_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody359_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_10 sourceBody359_11

def sourceBody359_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_9 sourceBody359_12

def sourceBody359_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_8 sourceBody359_13

def sourceBody359_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody359_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody359_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_16 sourceBody359_11

def sourceBody359_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_15 sourceBody359_17

def sourceBody359_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_14 sourceBody359_18

def sourceBody359_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody359_19 sourceBody359_11

def sourceBody359_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_20 sourceBody359_5

def sourceBody359_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_21 sourceBody359_11

def sourceBody359_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_7 sourceBody359_22

def sourceBody359_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_6 sourceBody359_23

def sourceBody359_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_1 sourceBody359_24

def sourceBody359_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_0 sourceBody359_25

def sourceBody359_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody359_28 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 176) ([0, 12, 6, 10]) (none)

def sourceBody359_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_28 sourceBody359_11

def sourceBody359_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_27 sourceBody359_29

def sourceBody359_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_0 sourceBody359_30

def sourceBody359_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_8 sourceBody359_31

def sourceBody359_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody359_26 sourceBody359_32

def source359 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (359, 3, sourceBody359_33)
end InitECandidate.Proofs.WordStages
