import InitECandidate.Proofs.FrontendStages.Crep.Translate614
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody630_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "bn254_init" []

def crepBody630_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody630_0

def crepBody630_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "ecp_is_inf" [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 1]

def crepBody630_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "ecp_is_inf" [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 2]

def crepBody630_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fe_set_one" [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 0]

def crepBody630_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody630_4

def crepBody630_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody630_7 : CrepProg (BitVec 64) :=
.seq crepBody630_5 crepBody630_6

def crepBody630_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody630_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]) (Flapjack.CrepExp.const 1#64)) crepBody630_7 crepBody630_8

def crepBody630_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody630_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody630_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 1152#64]

def crepBody630_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody630_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 384#64]

def crepBody630_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fq12_twist" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1]

def crepBody630_16 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_15

def crepBody630_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fq12_cast" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 2]

def crepBody630_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_17

def crepBody630_19 : CrepProg (BitVec 64) :=
.seq crepBody630_16 crepBody630_18

def crepBody630_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "bn254_miller_raw"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody630_21 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_20

def crepBody630_22 : CrepProg (BitVec 64) :=
.seq crepBody630_19 crepBody630_21

def crepBody630_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fq12_inv" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9]

def crepBody630_24 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_23

def crepBody630_25 : CrepProg (BitVec 64) :=
.seq crepBody630_22 crepBody630_24

def crepBody630_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fq12_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody630_27 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_26

def crepBody630_28 : CrepProg (BitVec 64) :=
.seq crepBody630_25 crepBody630_27

def crepBody630_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fq12_pow_words"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 384#64]),
    Flapjack.CrepExp.const 44#64]

def crepBody630_30 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_29

def crepBody630_31 : CrepProg (BitVec 64) :=
.seq crepBody630_28 crepBody630_30

def crepBody630_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody630_33 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody630_32

def crepBody630_34 : CrepProg (BitVec 64) :=
.seq crepBody630_31 crepBody630_33

def crepBody630_35 : CrepProg (BitVec 64) :=
.seq crepBody630_34 crepBody630_6

def crepBody630_36 : CrepProg (BitVec 64) :=
.seq crepBody630_14 crepBody630_35

def crepBody630_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody630_36

def crepBody630_38 : CrepProg (BitVec 64) :=
.seq crepBody630_13 crepBody630_37

def crepBody630_39 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody630_38

def crepBody630_40 : CrepProg (BitVec 64) :=
.seq crepBody630_12 crepBody630_39

def crepBody630_41 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody630_40

def crepBody630_42 : CrepProg (BitVec 64) :=
.seq crepBody630_11 crepBody630_41

def crepBody630_43 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody630_42

def crepBody630_44 : CrepProg (BitVec 64) :=
.seq crepBody630_10 crepBody630_43

def crepBody630_45 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody630_44

def crepBody630_46 : CrepProg (BitVec 64) :=
.seq crepBody630_9 crepBody630_45

def crepBody630_47 : CrepProg (BitVec 64) :=
.seq crepBody630_3 crepBody630_46

def crepBody630_48 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody630_47

def crepBody630_49 : CrepProg (BitVec 64) :=
.seq crepBody630_2 crepBody630_48

def crepBody630_50 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody630_49

def crepBody630_51 : CrepProg (BitVec 64) :=
.seq crepBody630_1 crepBody630_50

def data630 : CrepProg (BitVec 64) := crepBody630_51
def output630 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8], [0, 1, 2], crepProgToHOL data630)
end InitECandidate.Proofs.FrontendStages.Crep
