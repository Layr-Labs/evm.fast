import InitECandidate.Proofs.FrontendStages.Crep.Translate578
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody594_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "u256_add"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody594_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "u256_lt"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.const 4332616871279656263#64, Flapjack.CrepExp.const 10917124144477883021#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody594_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_sub"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.const 4332616871279656263#64, Flapjack.CrepExp.const 10917124144477883021#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody594_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody594_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64)) crepBody594_2 crepBody594_3

def crepBody594_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody594_6 : CrepProg (BitVec 64) :=
.seq crepBody594_4 crepBody594_5

def crepBody594_7 : CrepProg (BitVec 64) :=
.seq crepBody594_1 crepBody594_6

def crepBody594_8 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody594_7

def crepBody594_9 : CrepProg (BitVec 64) :=
.seq crepBody594_0 crepBody594_8

def crepBody594_10 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody594_9

def crepBody594_11 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody594_10

def crepBody594_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody594_11

def crepBody594_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody594_12

def data594 : CrepProg (BitVec 64) := crepBody594_13
def output594 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data594)
end InitECandidate.Proofs.FrontendStages.Crep
