import InitECandidate.Proofs.FrontendStages.Crep.Translate790
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody806_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody806_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody806_2 : CrepProg (BitVec 64) :=
.seq crepBody806_0 crepBody806_1

def crepBody806_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody806_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody806_3

def crepBody806_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody806_6 : CrepProg (BitVec 64) :=
.seq crepBody806_5 crepBody806_1

def crepBody806_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody806_6

def crepBody806_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody806_9 : CrepProg (BitVec 64) :=
.seq crepBody806_7 crepBody806_8

def crepBody806_10 : CrepProg (BitVec 64) :=
.seq crepBody806_4 crepBody806_9

def crepBody806_11 : CrepProg (BitVec 64) :=
.seq crepBody806_2 crepBody806_10

def crepBody806_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((4#64), crepBody806_11))) ("run_attempt") ([Flapjack.CrepExp.var 0])

def crepBody806_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody806_12

def crepBody806_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody806_15 : CrepProg (BitVec 64) :=
.seq crepBody806_13 crepBody806_14

def crepBody806_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody806_15

def data806 : CrepProg (BitVec 64) := crepBody806_16
def output806 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 49#8], [0], crepProgToHOL data806)
end InitECandidate.Proofs.FrontendStages.Crep
