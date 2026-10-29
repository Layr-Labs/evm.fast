import InitECandidate.Proofs.FrontendStages.Crep.Translate736
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody752_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody752_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody752_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody752_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bls_fp_decode64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody752_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bls_fp_decode64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64]]

def crepBody752_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody752_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody752_4 crepBody752_5

def crepBody752_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody752_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody752_7

def crepBody752_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody752_10 : CrepProg (BitVec 64) :=
.seq crepBody752_8 crepBody752_9

def crepBody752_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody752_10 crepBody752_5

def crepBody752_12 : CrepProg (BitVec 64) :=
.seq crepBody752_6 crepBody752_11

def crepBody752_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "map_fp2_to_g2" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody752_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody752_13

def crepBody752_15 : CrepProg (BitVec 64) :=
.seq crepBody752_12 crepBody752_14

def crepBody752_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "g2_encode" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1]

def crepBody752_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody752_16

def crepBody752_18 : CrepProg (BitVec 64) :=
.seq crepBody752_15 crepBody752_17

def crepBody752_19 : CrepProg (BitVec 64) :=
.seq crepBody752_18 crepBody752_8

def crepBody752_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody752_21 : CrepProg (BitVec 64) :=
.seq crepBody752_19 crepBody752_20

def crepBody752_22 : CrepProg (BitVec 64) :=
.seq crepBody752_3 crepBody752_21

def crepBody752_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody752_22

def crepBody752_24 : CrepProg (BitVec 64) :=
.seq crepBody752_2 crepBody752_23

def crepBody752_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody752_24

def crepBody752_26 : CrepProg (BitVec 64) :=
.seq crepBody752_1 crepBody752_25

def crepBody752_27 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody752_26

def crepBody752_28 : CrepProg (BitVec 64) :=
.seq crepBody752_0 crepBody752_27

def crepBody752_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody752_28

def data752 : CrepProg (BitVec 64) := crepBody752_29
def output752 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 50#8, 95#8, 116#8, 111#8, 95#8, 103#8, 50#8, 95#8,
    101#8, 120#8, 101#8, 99#8], [0, 1], crepProgToHOL data752)
end InitECandidate.Proofs.FrontendStages.Crep
