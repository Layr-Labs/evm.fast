import InitECandidate.Proofs.FrontendStages.Crep.Translate250
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody266_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody266_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody266_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody266_0 crepBody266_1

def crepBody266_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "node_rlp" [Flapjack.CrepExp.var 0]

def crepBody266_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody266_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "keccak256"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody266_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody266_5

def crepBody266_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody266_8 : CrepProg (BitVec 64) :=
.seq crepBody266_7 crepBody266_1

def crepBody266_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody266_8

def crepBody266_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody266_9

def crepBody266_11 : CrepProg (BitVec 64) :=
.seq crepBody266_6 crepBody266_10

def crepBody266_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody266_13 : CrepProg (BitVec 64) :=
.seq crepBody266_11 crepBody266_12

def crepBody266_14 : CrepProg (BitVec 64) :=
.seq crepBody266_4 crepBody266_13

def crepBody266_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody266_14

def crepBody266_16 : CrepProg (BitVec 64) :=
.seq crepBody266_3 crepBody266_15

def crepBody266_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody266_16

def crepBody266_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody266_17

def crepBody266_19 : CrepProg (BitVec 64) :=
.seq crepBody266_2 crepBody266_18

def crepBody266_20 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody266_19

def data266 : CrepProg (BitVec 64) := crepBody266_20
def output266 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [110#8, 111#8, 100#8, 101#8, 95#8, 104#8, 97#8, 115#8, 104#8], [0], crepProgToHOL data266)
end InitECandidate.Proofs.FrontendStages.Crep
