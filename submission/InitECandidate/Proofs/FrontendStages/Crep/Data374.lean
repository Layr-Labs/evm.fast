import InitECandidate.Proofs.FrontendStages.Crep.Translate358
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody374_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 64#64]

def crepBody374_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody374_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody374_3 : CrepProg (BitVec 64) :=
.seq crepBody374_1 crepBody374_2

def crepBody374_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody374_3

def crepBody374_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]) crepBody374_4

def crepBody374_6 : CrepProg (BitVec 64) :=
.seq crepBody374_0 crepBody374_5

def crepBody374_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody374_6

def crepBody374_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 64#64]

def crepBody374_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 232#64]) crepBody374_4

def crepBody374_10 : CrepProg (BitVec 64) :=
.seq crepBody374_8 crepBody374_9

def crepBody374_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody374_10

def crepBody374_12 : CrepProg (BitVec 64) :=
.seq crepBody374_7 crepBody374_11

def crepBody374_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_new" [Flapjack.CrepExp.const 60#64, Flapjack.CrepExp.const 64#64]

def crepBody374_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 240#64]) crepBody374_4

def crepBody374_15 : CrepProg (BitVec 64) :=
.seq crepBody374_13 crepBody374_14

def crepBody374_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody374_15

def crepBody374_17 : CrepProg (BitVec 64) :=
.seq crepBody374_12 crepBody374_16

def crepBody374_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody374_19 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 248#64]) crepBody374_4

def crepBody374_20 : CrepProg (BitVec 64) :=
.seq crepBody374_18 crepBody374_19

def crepBody374_21 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody374_20

def crepBody374_22 : CrepProg (BitVec 64) :=
.seq crepBody374_17 crepBody374_21

def crepBody374_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody374_24 : CrepProg (BitVec 64) :=
.seq crepBody374_23 crepBody374_2

def crepBody374_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody374_24

def crepBody374_26 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 224#64]) crepBody374_25

def crepBody374_27 : CrepProg (BitVec 64) :=
.seq crepBody374_22 crepBody374_26

def crepBody374_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody374_29 : CrepProg (BitVec 64) :=
.seq crepBody374_27 crepBody374_28

def data374 : CrepProg (BitVec 64) := crepBody374_29
def output374 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 97#8, 108#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data374)
end InitECandidate.Proofs.FrontendStages.Crep
