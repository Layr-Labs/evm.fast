import InitECandidate.Proofs.WordStages.Source707
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody723_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody723_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody723_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody723_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody723_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody723_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody723_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody723_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody723_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 16, 28, 22, 32, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody723_0, 723, 2)) (some 717) ([30, 24, 36, 14, 26, 20]) (some (30, sourceBody723_7, 723, 3))

def sourceBody723_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody723_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_8 sourceBody723_9

def sourceBody723_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_10 sourceBody723_0

def sourceBody723_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_6 sourceBody723_11

def sourceBody723_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_5 sourceBody723_12

def sourceBody723_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_4 sourceBody723_13

def sourceBody723_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_3 sourceBody723_14

def sourceBody723_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_2 sourceBody723_15

def sourceBody723_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_1 sourceBody723_16

def sourceBody723_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody723_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody723_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_19 sourceBody723_0

def sourceBody723_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_18 sourceBody723_20

def sourceBody723_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_17 sourceBody723_21

def sourceBody723_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_22

def sourceBody723_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_23

def sourceBody723_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_24

def sourceBody723_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_25

def sourceBody723_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_26

def sourceBody723_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_27

def sourceBody723_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_28

def sourceBody723_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_29

def sourceBody723_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_30

def sourceBody723_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_31

def sourceBody723_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_32

def sourceBody723_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody723_0 sourceBody723_33

def source723 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (723, 7, sourceBody723_34)
end InitECandidate.Proofs.WordStages
