import InitECandidate.Proofs.FrontendStages.Crep.Translate781
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody797_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "state_fresh_tx" []

def crepBody797_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody797_0

def crepBody797_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "ext_code_of" [Flapjack.CrepExp.var 0]

def crepBody797_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody797_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody797_5 : CrepProg (BitVec 64) :=
.seq crepBody797_3 crepBody797_4

def crepBody797_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 70#64) crepBody797_5

def crepBody797_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody797_8 : CrepProg (BitVec 64) :=
.seq crepBody797_6 crepBody797_7

def crepBody797_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody797_8 crepBody797_4

def crepBody797_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody797_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "process_unchecked_system_transaction"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64]

def crepBody797_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody797_13 : CrepProg (BitVec 64) :=
.seq crepBody797_12 crepBody797_4

def crepBody797_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 71#64) crepBody797_13

def crepBody797_15 : CrepProg (BitVec 64) :=
.seq crepBody797_14 crepBody797_7

def crepBody797_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody797_15 crepBody797_4

def crepBody797_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody797_18 : CrepProg (BitVec 64) :=
.seq crepBody797_16 crepBody797_17

def crepBody797_19 : CrepProg (BitVec 64) :=
.seq crepBody797_11 crepBody797_18

def crepBody797_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody797_19

def crepBody797_21 : CrepProg (BitVec 64) :=
.seq crepBody797_10 crepBody797_20

def crepBody797_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody797_21

def crepBody797_23 : CrepProg (BitVec 64) :=
.seq crepBody797_9 crepBody797_22

def crepBody797_24 : CrepProg (BitVec 64) :=
.seq crepBody797_2 crepBody797_23

def crepBody797_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody797_24

def crepBody797_26 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody797_25

def crepBody797_27 : CrepProg (BitVec 64) :=
.seq crepBody797_1 crepBody797_26

def data797 : CrepProg (BitVec 64) := crepBody797_27
def output797 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 101#8, 100#8, 95#8, 115#8,
    121#8, 115#8, 116#8, 101#8, 109#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8, 110#8], [0], crepProgToHOL data797)
end InitECandidate.Proofs.FrontendStages.Crep
