import InitECandidate.Proofs.FrontendStages.Crep.Translate299
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody315_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody315_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody315_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "signature_recovery_parameters"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody315_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "secp256k1_recover"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody315_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody315_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody315_4

def crepBody315_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody315_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody315_8 : CrepProg (BitVec 64) :=
.seq crepBody315_6 crepBody315_7

def crepBody315_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 46#64) crepBody315_8

def crepBody315_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody315_11 : CrepProg (BitVec 64) :=
.seq crepBody315_9 crepBody315_10

def crepBody315_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody315_11 crepBody315_7

def crepBody315_13 : CrepProg (BitVec 64) :=
.seq crepBody315_5 crepBody315_12

def crepBody315_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody315_15 : CrepProg (BitVec 64) :=
.seq crepBody315_13 crepBody315_14

def crepBody315_16 : CrepProg (BitVec 64) :=
.seq crepBody315_3 crepBody315_15

def crepBody315_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody315_16

def crepBody315_18 : CrepProg (BitVec 64) :=
.seq crepBody315_2 crepBody315_17

def crepBody315_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody315_18

def crepBody315_20 : CrepProg (BitVec 64) :=
.seq crepBody315_1 crepBody315_19

def crepBody315_21 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody315_20

def crepBody315_22 : CrepProg (BitVec 64) :=
.seq crepBody315_0 crepBody315_21

def crepBody315_23 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody315_22

def data315 : CrepProg (BitVec 64) := crepBody315_23
def output315 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8,
    111#8, 110#8, 95#8, 112#8, 117#8, 98#8, 108#8, 105#8, 99#8, 95#8, 107#8, 101#8, 121#8], [0, 1, 2], crepProgToHOL data315)
end InitECandidate.Proofs.FrontendStages.Crep
