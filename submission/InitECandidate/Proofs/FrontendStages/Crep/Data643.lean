import InitECandidate.Proofs.FrontendStages.Crep.Translate627
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody643_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody643_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody643_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 11)) crepBody643_0 crepBody643_1

def crepBody643_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody643_4 : CrepProg (BitVec 64) :=
.seq crepBody643_2 crepBody643_3

def crepBody643_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 11)) crepBody643_4 crepBody643_1

def crepBody643_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 10)) crepBody643_0 crepBody643_1

def crepBody643_7 : CrepProg (BitVec 64) :=
.seq crepBody643_6 crepBody643_3

def crepBody643_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 10)) crepBody643_7 crepBody643_1

def crepBody643_9 : CrepProg (BitVec 64) :=
.seq crepBody643_5 crepBody643_8

def crepBody643_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 9)) crepBody643_0 crepBody643_1

def crepBody643_11 : CrepProg (BitVec 64) :=
.seq crepBody643_10 crepBody643_3

def crepBody643_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 9)) crepBody643_11 crepBody643_1

def crepBody643_13 : CrepProg (BitVec 64) :=
.seq crepBody643_9 crepBody643_12

def crepBody643_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 8)) crepBody643_0 crepBody643_1

def crepBody643_15 : CrepProg (BitVec 64) :=
.seq crepBody643_14 crepBody643_3

def crepBody643_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 8)) crepBody643_15 crepBody643_1

def crepBody643_17 : CrepProg (BitVec 64) :=
.seq crepBody643_13 crepBody643_16

def crepBody643_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 7)) crepBody643_0 crepBody643_1

def crepBody643_19 : CrepProg (BitVec 64) :=
.seq crepBody643_18 crepBody643_3

def crepBody643_20 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 7)) crepBody643_19 crepBody643_1

def crepBody643_21 : CrepProg (BitVec 64) :=
.seq crepBody643_17 crepBody643_20

def crepBody643_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 6)) crepBody643_0 crepBody643_1

def crepBody643_23 : CrepProg (BitVec 64) :=
.seq crepBody643_21 crepBody643_22

def crepBody643_24 : CrepProg (BitVec 64) :=
.seq crepBody643_23 crepBody643_3

def data643 : CrepProg (BitVec 64) := crepBody643_24
def output643 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 108#8, 116#8, 95#8, 114#8, 97#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], crepProgToHOL data643)
end InitECandidate.Proofs.FrontendStages.Crep
