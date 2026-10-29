import InitECandidate.Proofs.WordStages.Source72
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody88_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody88_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 24#64))

def sourceBody88_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody88_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody88_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_2 sourceBody88_3

def sourceBody88_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_1 sourceBody88_4

def sourceBody88_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_0 sourceBody88_5

def sourceBody88_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody88_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 16#64))

def sourceBody88_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_8 sourceBody88_4

def sourceBody88_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_7 sourceBody88_9

def sourceBody88_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_6 sourceBody88_10

def sourceBody88_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody88_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody88_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_13 sourceBody88_4

def sourceBody88_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_12 sourceBody88_14

def sourceBody88_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_11 sourceBody88_15

def sourceBody88_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody88_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody88_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_18 sourceBody88_4

def sourceBody88_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_17 sourceBody88_19

def sourceBody88_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_16 sourceBody88_20

def sourceBody88_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody88_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody88_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_23 sourceBody88_3

def sourceBody88_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_22 sourceBody88_24

def sourceBody88_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody88_21 sourceBody88_25

def source88 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (88, 3, sourceBody88_26)
end InitECandidate.Proofs.WordStages
