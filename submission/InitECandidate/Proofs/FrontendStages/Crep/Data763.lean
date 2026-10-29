import InitECandidate.Proofs.FrontendStages.Crep.Translate747
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody763_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody763_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody763_2 : CrepProg (BitVec 64) :=
.seq crepBody763_0 crepBody763_1

def crepBody763_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 10#64) crepBody763_2

def crepBody763_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody763_5 : CrepProg (BitVec 64) :=
.seq crepBody763_3 crepBody763_4

def crepBody763_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 128#64)) crepBody763_5 crepBody763_1

def crepBody763_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "charge_gas" [Flapjack.CrepExp.const 23800#64]

def crepBody763_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody763_7

def crepBody763_9 : CrepProg (BitVec 64) :=
.seq crepBody763_6 crepBody763_8

def crepBody763_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 256#64]

def crepBody763_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_map_fp2_to_g2_exec"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 3]

def crepBody763_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody763_13 : CrepProg (BitVec 64) :=
.seq crepBody763_12 crepBody763_1

def crepBody763_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 10#64) crepBody763_13

def crepBody763_15 : CrepProg (BitVec 64) :=
.seq crepBody763_14 crepBody763_4

def crepBody763_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody763_15 crepBody763_1

def crepBody763_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody763_18 : CrepProg (BitVec 64) :=
.seq crepBody763_17 crepBody763_1

def crepBody763_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody763_18

def crepBody763_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody763_19

def crepBody763_21 : CrepProg (BitVec 64) :=
.seq crepBody763_16 crepBody763_20

def crepBody763_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 256#64) crepBody763_18

def crepBody763_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody763_22

def crepBody763_24 : CrepProg (BitVec 64) :=
.seq crepBody763_21 crepBody763_23

def crepBody763_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody763_26 : CrepProg (BitVec 64) :=
.seq crepBody763_24 crepBody763_25

def crepBody763_27 : CrepProg (BitVec 64) :=
.seq crepBody763_11 crepBody763_26

def crepBody763_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody763_27

def crepBody763_29 : CrepProg (BitVec 64) :=
.seq crepBody763_10 crepBody763_28

def crepBody763_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody763_29

def crepBody763_31 : CrepProg (BitVec 64) :=
.seq crepBody763_9 crepBody763_30

def crepBody763_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody763_31

def crepBody763_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody763_32

def data763 : CrepProg (BitVec 64) := crepBody763_33
def output763 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 50#8, 95#8, 116#8,
    111#8, 95#8, 103#8, 50#8], [], crepProgToHOL data763)
end InitECandidate.Proofs.FrontendStages.Crep
