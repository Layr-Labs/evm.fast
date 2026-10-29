import InitECandidate.Proofs.FrontendStages.Crep.Translate769
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody785_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "htab_has" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody785_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64])]

def crepBody785_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody785_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody785_1 crepBody785_2

def crepBody785_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "ws_storage_root_of" [Flapjack.CrepExp.var 1]

def crepBody785_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody785_6 : CrepProg (BitVec 64) :=
.seq crepBody785_4 crepBody785_5

def crepBody785_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody785_6

def crepBody785_8 : CrepProg (BitVec 64) :=
.seq crepBody785_3 crepBody785_7

def crepBody785_9 : CrepProg (BitVec 64) :=
.seq crepBody785_0 crepBody785_8

def crepBody785_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody785_9

def data785 : CrepProg (BitVec 64) := crepBody785_10
def output785 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 99#8, 104#8, 101#8, 95#8, 103#8, 101#8, 116#8, 95#8, 114#8, 111#8, 111#8, 116#8], [0, 1], crepProgToHOL data785)
end InitECandidate.Proofs.FrontendStages.Crep
