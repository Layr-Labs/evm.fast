import InitECandidate.Proofs.FrontendStages.Crep.Translate744
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody760_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody760_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody760_2 : CrepProg (BitVec 64) :=
.seq crepBody760_0 crepBody760_1

def crepBody760_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 10#64) crepBody760_2

def crepBody760_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody760_5 : CrepProg (BitVec 64) :=
.seq crepBody760_3 crepBody760_4

def crepBody760_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody760_5 crepBody760_1

def crepBody760_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "udivmod" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 288#64]

def crepBody760_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody760_9 : CrepProg (BitVec 64) :=
.seq crepBody760_8 crepBody760_1

def crepBody760_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 10#64) crepBody760_9

def crepBody760_11 : CrepProg (BitVec 64) :=
.seq crepBody760_10 crepBody760_4

def crepBody760_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody760_11 crepBody760_1

def crepBody760_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "bls_g2_msm_discount" [Flapjack.CrepExp.var 5]

def crepBody760_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8], none)) "udivmod"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 22500#64],
        Flapjack.CrepExp.var 6],
    Flapjack.CrepExp.const 1000#64]

def crepBody760_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "charge_gas" [Flapjack.CrepExp.var 7]

def crepBody760_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody760_15

def crepBody760_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 256#64]

def crepBody760_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "bls_g2_msm_exec"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 9]

def crepBody760_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 11)

def crepBody760_20 : CrepProg (BitVec 64) :=
.seq crepBody760_19 crepBody760_1

def crepBody760_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 10#64) crepBody760_20

def crepBody760_22 : CrepProg (BitVec 64) :=
.seq crepBody760_21 crepBody760_4

def crepBody760_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody760_22 crepBody760_1

def crepBody760_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody760_25 : CrepProg (BitVec 64) :=
.seq crepBody760_24 crepBody760_1

def crepBody760_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 9) crepBody760_25

def crepBody760_27 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody760_26

def crepBody760_28 : CrepProg (BitVec 64) :=
.seq crepBody760_23 crepBody760_27

def crepBody760_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 256#64) crepBody760_25

def crepBody760_30 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody760_29

def crepBody760_31 : CrepProg (BitVec 64) :=
.seq crepBody760_28 crepBody760_30

def crepBody760_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody760_33 : CrepProg (BitVec 64) :=
.seq crepBody760_31 crepBody760_32

def crepBody760_34 : CrepProg (BitVec 64) :=
.seq crepBody760_18 crepBody760_33

def crepBody760_35 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody760_34

def crepBody760_36 : CrepProg (BitVec 64) :=
.seq crepBody760_17 crepBody760_35

def crepBody760_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody760_36

def crepBody760_38 : CrepProg (BitVec 64) :=
.seq crepBody760_16 crepBody760_37

def crepBody760_39 : CrepProg (BitVec 64) :=
.seq crepBody760_14 crepBody760_38

def crepBody760_40 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody760_39

def crepBody760_41 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody760_40

def crepBody760_42 : CrepProg (BitVec 64) :=
.seq crepBody760_13 crepBody760_41

def crepBody760_43 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody760_42

def crepBody760_44 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody760_43

def crepBody760_45 : CrepProg (BitVec 64) :=
.seq crepBody760_12 crepBody760_44

def crepBody760_46 : CrepProg (BitVec 64) :=
.seq crepBody760_7 crepBody760_45

def crepBody760_47 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody760_46

def crepBody760_48 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody760_47

def crepBody760_49 : CrepProg (BitVec 64) :=
.seq crepBody760_6 crepBody760_48

def crepBody760_50 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody760_49

def crepBody760_51 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody760_50

def data760 : CrepProg (BitVec 64) := crepBody760_51
def output760 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 109#8, 115#8, 109#8], [], crepProgToHOL data760)
end InitECandidate.Proofs.FrontendStages.Crep
