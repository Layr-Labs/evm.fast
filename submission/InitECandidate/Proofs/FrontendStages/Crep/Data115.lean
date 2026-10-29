import InitECandidate.Proofs.FrontendStages.Crep.Translate99
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody115_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody115_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody115_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 128#64))]) crepBody115_0 crepBody115_1

def crepBody115_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_header_len" [Flapjack.CrepExp.var 1]

def crepBody115_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 1]]

def crepBody115_5 : CrepProg (BitVec 64) :=
.seq crepBody115_3 crepBody115_4

def crepBody115_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody115_5

def crepBody115_7 : CrepProg (BitVec 64) :=
.seq crepBody115_2 crepBody115_6

def data115 : CrepProg (BitVec 64) := crepBody115_7
def output115 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 100#8,
    95#8, 108#8, 101#8, 110#8], [0, 1], crepProgToHOL data115)
end InitECandidate.Proofs.FrontendStages.Crep
