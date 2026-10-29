import InitECandidate.Proofs.FrontendStages.Crep.Translate302
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody318_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody318_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 72#64]

def crepBody318_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 4#64)

def crepBody318_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "recover_transaction_public_key"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]]

def crepBody318_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody318_3

def crepBody318_5 : CrepProg (BitVec 64) :=
.seq crepBody318_2 crepBody318_4

def crepBody318_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "sender_address_from_public_key"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody318_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody318_6

def crepBody318_8 : CrepProg (BitVec 64) :=
.seq crepBody318_5 crepBody318_7

def crepBody318_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody318_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody318_9

def crepBody318_11 : CrepProg (BitVec 64) :=
.seq crepBody318_8 crepBody318_10

def crepBody318_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody318_13 : CrepProg (BitVec 64) :=
.seq crepBody318_11 crepBody318_12

def crepBody318_14 : CrepProg (BitVec 64) :=
.seq crepBody318_1 crepBody318_13

def crepBody318_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody318_14

def crepBody318_16 : CrepProg (BitVec 64) :=
.seq crepBody318_0 crepBody318_15

def crepBody318_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody318_16

def data318 : CrepProg (BitVec 64) := crepBody318_17
def output318 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 115#8, 101#8, 110#8, 100#8, 101#8, 114#8, 95#8, 119#8, 105#8,
    116#8, 104#8, 95#8, 99#8, 104#8, 97#8, 105#8, 110#8, 95#8, 105#8, 100#8], [0, 1, 2], crepProgToHOL data318)
end InitECandidate.Proofs.FrontendStages.Crep
