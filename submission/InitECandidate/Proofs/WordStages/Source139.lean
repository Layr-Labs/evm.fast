import InitECandidate.Proofs.WordStages.Source123
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody139_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody139_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody139_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody139_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody139_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody139_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody139_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody139_0, 139, 2)) (some 138) ([12, 18, 10, 14]) (some (12, sourceBody139_5, 139, 3))

def sourceBody139_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody139_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_6 sourceBody139_7

def sourceBody139_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_8 sourceBody139_0

def sourceBody139_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_4 sourceBody139_9

def sourceBody139_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_3 sourceBody139_10

def sourceBody139_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_2 sourceBody139_11

def sourceBody139_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_1 sourceBody139_12

def sourceBody139_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 7#64])
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody139_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody139_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_15 sourceBody139_0

def sourceBody139_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_14 sourceBody139_16

def sourceBody139_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_13 sourceBody139_17

def sourceBody139_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_0 sourceBody139_18

def sourceBody139_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody139_0 sourceBody139_19

def source139 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (139, 5, sourceBody139_20)
end InitECandidate.Proofs.WordStages
