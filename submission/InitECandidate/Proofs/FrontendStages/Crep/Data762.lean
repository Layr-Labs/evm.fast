import InitECandidate.Proofs.FrontendStages.Crep.Translate746
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody762_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody762_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody762_2 : CrepProg (BitVec 64) :=
.seq crepBody762_0 crepBody762_1

def crepBody762_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 10#64) crepBody762_2

def crepBody762_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody762_5 : CrepProg (BitVec 64) :=
.seq crepBody762_3 crepBody762_4

def crepBody762_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 64#64)) crepBody762_5 crepBody762_1

def crepBody762_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "charge_gas" [Flapjack.CrepExp.const 5500#64]

def crepBody762_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody762_7

def crepBody762_9 : CrepProg (BitVec 64) :=
.seq crepBody762_6 crepBody762_8

def crepBody762_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody762_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bls_map_fp_to_g1_exec"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 3]

def crepBody762_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody762_13 : CrepProg (BitVec 64) :=
.seq crepBody762_12 crepBody762_1

def crepBody762_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 10#64) crepBody762_13

def crepBody762_15 : CrepProg (BitVec 64) :=
.seq crepBody762_14 crepBody762_4

def crepBody762_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody762_15 crepBody762_1

def crepBody762_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody762_18 : CrepProg (BitVec 64) :=
.seq crepBody762_17 crepBody762_1

def crepBody762_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody762_18

def crepBody762_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody762_19

def crepBody762_21 : CrepProg (BitVec 64) :=
.seq crepBody762_16 crepBody762_20

def crepBody762_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 128#64) crepBody762_18

def crepBody762_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody762_22

def crepBody762_24 : CrepProg (BitVec 64) :=
.seq crepBody762_21 crepBody762_23

def crepBody762_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody762_26 : CrepProg (BitVec 64) :=
.seq crepBody762_24 crepBody762_25

def crepBody762_27 : CrepProg (BitVec 64) :=
.seq crepBody762_11 crepBody762_26

def crepBody762_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody762_27

def crepBody762_29 : CrepProg (BitVec 64) :=
.seq crepBody762_10 crepBody762_28

def crepBody762_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody762_29

def crepBody762_31 : CrepProg (BitVec 64) :=
.seq crepBody762_9 crepBody762_30

def crepBody762_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody762_31

def crepBody762_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody762_32

def data762 : CrepProg (BitVec 64) := crepBody762_33
def output762 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8,
    95#8, 103#8, 49#8], [], crepProgToHOL data762)
end InitECandidate.Proofs.FrontendStages.Crep
