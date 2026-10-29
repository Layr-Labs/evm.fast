import InitECandidate.Proofs.FrontendStages.Crep.Translate732
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody748_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody748_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody748_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody748_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "g2_decode" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody748_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "g2_decode"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 256#64],
    Flapjack.CrepExp.var 4]

def crepBody748_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody748_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody748_4 crepBody748_5

def crepBody748_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody748_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody748_7

def crepBody748_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody748_10 : CrepProg (BitVec 64) :=
.seq crepBody748_8 crepBody748_9

def crepBody748_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody748_10 crepBody748_5

def crepBody748_12 : CrepProg (BitVec 64) :=
.seq crepBody748_6 crepBody748_11

def crepBody748_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "g2_add"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody748_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody748_13

def crepBody748_15 : CrepProg (BitVec 64) :=
.seq crepBody748_12 crepBody748_14

def crepBody748_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "g2_encode" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody748_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody748_16

def crepBody748_18 : CrepProg (BitVec 64) :=
.seq crepBody748_15 crepBody748_17

def crepBody748_19 : CrepProg (BitVec 64) :=
.seq crepBody748_18 crepBody748_8

def crepBody748_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody748_21 : CrepProg (BitVec 64) :=
.seq crepBody748_19 crepBody748_20

def crepBody748_22 : CrepProg (BitVec 64) :=
.seq crepBody748_3 crepBody748_21

def crepBody748_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody748_22

def crepBody748_24 : CrepProg (BitVec 64) :=
.seq crepBody748_2 crepBody748_23

def crepBody748_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody748_24

def crepBody748_26 : CrepProg (BitVec 64) :=
.seq crepBody748_1 crepBody748_25

def crepBody748_27 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody748_26

def crepBody748_28 : CrepProg (BitVec 64) :=
.seq crepBody748_0 crepBody748_27

def crepBody748_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody748_28

def data748 : CrepProg (BitVec 64) := crepBody748_29
def output748 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 97#8, 100#8, 100#8, 95#8, 101#8, 120#8, 101#8, 99#8], [0, 1], crepProgToHOL data748)
end InitECandidate.Proofs.FrontendStages.Crep
