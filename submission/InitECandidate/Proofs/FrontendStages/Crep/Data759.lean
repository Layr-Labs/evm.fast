import InitECandidate.Proofs.FrontendStages.Crep.Translate743
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody759_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody759_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody759_2 : CrepProg (BitVec 64) :=
.seq crepBody759_0 crepBody759_1

def crepBody759_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 10#64) crepBody759_2

def crepBody759_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody759_5 : CrepProg (BitVec 64) :=
.seq crepBody759_3 crepBody759_4

def crepBody759_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 512#64)) crepBody759_5 crepBody759_1

def crepBody759_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "charge_gas" [Flapjack.CrepExp.const 600#64]

def crepBody759_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody759_7

def crepBody759_9 : CrepProg (BitVec 64) :=
.seq crepBody759_6 crepBody759_8

def crepBody759_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 256#64]

def crepBody759_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_g2_add_exec"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 3]

def crepBody759_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody759_13 : CrepProg (BitVec 64) :=
.seq crepBody759_12 crepBody759_1

def crepBody759_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 10#64) crepBody759_13

def crepBody759_15 : CrepProg (BitVec 64) :=
.seq crepBody759_14 crepBody759_4

def crepBody759_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody759_15 crepBody759_1

def crepBody759_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody759_18 : CrepProg (BitVec 64) :=
.seq crepBody759_17 crepBody759_1

def crepBody759_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody759_18

def crepBody759_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody759_19

def crepBody759_21 : CrepProg (BitVec 64) :=
.seq crepBody759_16 crepBody759_20

def crepBody759_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 256#64) crepBody759_18

def crepBody759_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody759_22

def crepBody759_24 : CrepProg (BitVec 64) :=
.seq crepBody759_21 crepBody759_23

def crepBody759_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody759_26 : CrepProg (BitVec 64) :=
.seq crepBody759_24 crepBody759_25

def crepBody759_27 : CrepProg (BitVec 64) :=
.seq crepBody759_11 crepBody759_26

def crepBody759_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody759_27

def crepBody759_29 : CrepProg (BitVec 64) :=
.seq crepBody759_10 crepBody759_28

def crepBody759_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody759_29

def crepBody759_31 : CrepProg (BitVec 64) :=
.seq crepBody759_9 crepBody759_30

def crepBody759_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody759_31

def crepBody759_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody759_32

def data759 : CrepProg (BitVec 64) := crepBody759_33
def output759 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 97#8, 100#8, 100#8], [], crepProgToHOL data759)
end InitECandidate.Proofs.FrontendStages.Crep
