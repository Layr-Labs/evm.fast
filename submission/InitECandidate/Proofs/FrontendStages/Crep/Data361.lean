import InitECandidate.Proofs.FrontendStages.Crep.Translate345
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody361_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]

def crepBody361_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody361_0

def crepBody361_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody361_3 : CrepProg (BitVec 64) :=
.seq crepBody361_1 crepBody361_2

def data361 : CrepProg (BitVec 64) := crepBody361_3
def output361 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 97#8, 114#8, 107#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8,
    101#8, 100#8], [0], crepProgToHOL data361)
end InitECandidate.Proofs.FrontendStages.Crep
