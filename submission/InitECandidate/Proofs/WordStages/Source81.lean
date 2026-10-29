import InitECandidate.Proofs.WordStages.Source65
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody81_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody81_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody81_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody81_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody81_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody81_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 4 (Flapjack.WordLangAddr.addr 4 0#64))

def sourceBody81_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody81_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody81_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody81_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody81_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody81_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_9 sourceBody81_10

def sourceBody81_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_8 sourceBody81_11

def sourceBody81_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_7 sourceBody81_12

def sourceBody81_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_6 sourceBody81_13

def sourceBody81_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_5 sourceBody81_14

def sourceBody81_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_4 sourceBody81_15

def sourceBody81_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_3 sourceBody81_16

def sourceBody81_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_2 sourceBody81_17

def sourceBody81_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_1 sourceBody81_18

def sourceBody81_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody81_0 sourceBody81_19

def source81 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (81, 2, sourceBody81_20)
end InitECandidate.Proofs.WordStages
