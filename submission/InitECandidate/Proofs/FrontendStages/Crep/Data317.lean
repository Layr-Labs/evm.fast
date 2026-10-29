import InitECandidate.Proofs.FrontendStages.Crep.Translate301
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody317_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "tx_chain_id" [Flapjack.CrepExp.var 0]

def crepBody317_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody317_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 72#64]

def crepBody317_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 4#64)

def crepBody317_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "recover_transaction_public_key"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]]

def crepBody317_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody317_4

def crepBody317_6 : CrepProg (BitVec 64) :=
.seq crepBody317_3 crepBody317_5

def crepBody317_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sender_address_from_public_key"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]

def crepBody317_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody317_7

def crepBody317_9 : CrepProg (BitVec 64) :=
.seq crepBody317_6 crepBody317_8

def crepBody317_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody317_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody317_10

def crepBody317_12 : CrepProg (BitVec 64) :=
.seq crepBody317_9 crepBody317_11

def crepBody317_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody317_14 : CrepProg (BitVec 64) :=
.seq crepBody317_12 crepBody317_13

def crepBody317_15 : CrepProg (BitVec 64) :=
.seq crepBody317_2 crepBody317_14

def crepBody317_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody317_15

def crepBody317_17 : CrepProg (BitVec 64) :=
.seq crepBody317_1 crepBody317_16

def crepBody317_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody317_17

def crepBody317_19 : CrepProg (BitVec 64) :=
.seq crepBody317_0 crepBody317_18

def crepBody317_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody317_19

def crepBody317_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody317_20

def data317 : CrepProg (BitVec 64) := crepBody317_21
def output317 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 115#8, 101#8, 110#8, 100#8, 101#8, 114#8], [0, 1], crepProgToHOL data317)
end InitECandidate.Proofs.FrontendStages.Crep
