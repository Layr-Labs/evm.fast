import InitECandidate.Proofs.FrontendStages.Crep.Translate644
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody660_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9, 10, 11], none)) "bls_fp_from_mont"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody660_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "bls_fp_lt_raw"
  [Flapjack.CrepExp.const 15924587544893707605#64, Flapjack.CrepExp.const 1105070755758604287#64,
    Flapjack.CrepExp.const 12941209323636816658#64, Flapjack.CrepExp.const 12843041017062132063#64,
    Flapjack.CrepExp.const 2706051889235351147#64, Flapjack.CrepExp.const 936899308823769933#64, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11]

def crepBody660_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 12]

def crepBody660_3 : CrepProg (BitVec 64) :=
.seq crepBody660_1 crepBody660_2

def crepBody660_4 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody660_3

def crepBody660_5 : CrepProg (BitVec 64) :=
.seq crepBody660_0 crepBody660_4

def crepBody660_6 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody660_5

def crepBody660_7 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody660_6

def crepBody660_8 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody660_7

def crepBody660_9 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody660_8

def crepBody660_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody660_9

def crepBody660_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody660_10

def data660 : CrepProg (BitVec 64) := crepBody660_11
def output660 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 115#8, 95#8, 104#8, 105#8, 103#8, 104#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data660)
end InitECandidate.Proofs.FrontendStages.Crep
