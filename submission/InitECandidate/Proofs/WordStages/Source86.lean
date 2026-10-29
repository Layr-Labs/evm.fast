import InitECandidate.Proofs.WordStages.Source70
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody86_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody86_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody86_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 6 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody86_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody86_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_2 sourceBody86_3

def sourceBody86_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_1 sourceBody86_4

def sourceBody86_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_0 sourceBody86_5

def sourceBody86_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody86_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 8#64))

def sourceBody86_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_8 sourceBody86_4

def sourceBody86_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_7 sourceBody86_9

def sourceBody86_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_6 sourceBody86_10

def sourceBody86_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody86_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 16#64))

def sourceBody86_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_13 sourceBody86_4

def sourceBody86_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_12 sourceBody86_14

def sourceBody86_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_11 sourceBody86_15

def sourceBody86_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody86_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 24#64))

def sourceBody86_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_18 sourceBody86_4

def sourceBody86_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_17 sourceBody86_19

def sourceBody86_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_16 sourceBody86_20

def sourceBody86_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody86_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody86_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_23 sourceBody86_3

def sourceBody86_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_22 sourceBody86_24

def sourceBody86_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody86_21 sourceBody86_25

def source86 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (86, 3, sourceBody86_26)
end InitECandidate.Proofs.WordStages
