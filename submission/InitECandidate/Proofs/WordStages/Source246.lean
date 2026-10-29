import InitECandidate.Proofs.WordStages.Source230
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody246_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody246_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody246_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.shareInst Flapjack.WordMemOp.load 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1073741840#64,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
        [Flapjack.WordLangExpHOL.var 2,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]]])

def sourceBody246_3 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody246_2 sourceBody246_0

def sourceBody246_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64])
          (Flapjack.WordLangExpHOL.const 3#64)),
      Flapjack.WordLangExpHOL.const 255#64])

def sourceBody246_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody246_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody246_5 sourceBody246_0

def sourceBody246_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody246_4 sourceBody246_6

def sourceBody246_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody246_3 sourceBody246_7

def sourceBody246_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody246_1 sourceBody246_8

def sourceBody246_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody246_0 sourceBody246_9

def source246 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (246, 2, sourceBody246_10)
end InitECandidate.Proofs.WordStages
