import InitECandidate.Proofs.WordStages.Source116
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody132_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 63#64))

def sourceBody132_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody132_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody132_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody132_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 16) sourceBody132_2 sourceBody132_3

def sourceBody132_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody132_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_4 sourceBody132_5

def sourceBody132_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody132_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody132_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody132_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody132_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody132_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 14, 12, 16, 10]) (none)

def sourceBody132_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody132_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_12 sourceBody132_13

def sourceBody132_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_11 sourceBody132_14

def sourceBody132_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_10 sourceBody132_15

def sourceBody132_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_9 sourceBody132_16

def sourceBody132_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_8 sourceBody132_17

def sourceBody132_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody132_18 sourceBody132_13

def sourceBody132_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_19 sourceBody132_5

def sourceBody132_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_20 sourceBody132_13

def sourceBody132_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_7 sourceBody132_21

def sourceBody132_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_6 sourceBody132_22

def sourceBody132_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_1 sourceBody132_23

def sourceBody132_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_0 sourceBody132_24

def sourceBody132_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 12, 16, 10]

def sourceBody132_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_26 sourceBody132_13

def sourceBody132_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_11 sourceBody132_27

def sourceBody132_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_10 sourceBody132_28

def sourceBody132_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_9 sourceBody132_29

def sourceBody132_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_8 sourceBody132_30

def sourceBody132_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody132_25 sourceBody132_31

def source132 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (132, 5, sourceBody132_32)
end InitECandidate.Proofs.WordStages
