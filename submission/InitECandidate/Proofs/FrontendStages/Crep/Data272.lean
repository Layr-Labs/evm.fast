import InitECandidate.Proofs.FrontendStages.Crep.Translate256
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody272_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "tx_scalar_item"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody272_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody272_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody272_3 : CrepProg (BitVec 64) :=
.seq crepBody272_1 crepBody272_2

def crepBody272_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 13#64) crepBody272_3

def crepBody272_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody272_6 : CrepProg (BitVec 64) :=
.seq crepBody272_4 crepBody272_5

def crepBody272_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 32#64) (Flapjack.CrepExp.var 4)) crepBody272_6 crepBody272_2

def crepBody272_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_from_be" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody272_9 : CrepProg (BitVec 64) :=
.seq crepBody272_7 crepBody272_8

def crepBody272_10 : CrepProg (BitVec 64) :=
.seq crepBody272_0 crepBody272_9

def crepBody272_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody272_10

def crepBody272_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody272_11

def data272 : CrepProg (BitVec 64) := crepBody272_12
def output272 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8, 95#8, 117#8, 50#8, 53#8, 54#8], [0, 1, 2], crepProgToHOL data272)
end InitECandidate.Proofs.FrontendStages.Crep
