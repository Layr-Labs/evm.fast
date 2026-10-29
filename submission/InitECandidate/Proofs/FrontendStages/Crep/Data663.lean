import InitECandidate.Proofs.FrontendStages.Crep.Translate647
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody663_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "is_zero_bytes" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]

def crepBody663_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody663_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody663_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody663_1 crepBody663_2

def crepBody663_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6, 7, 8], none)) "bls_fp_from_be48"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]]

def crepBody663_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "bls_fp_lt_raw"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 13402431016077863595#64,
    Flapjack.CrepExp.const 2210141511517208575#64, Flapjack.CrepExp.const 7435674573564081700#64,
    Flapjack.CrepExp.const 7239337960414712511#64, Flapjack.CrepExp.const 5412103778470702295#64,
    Flapjack.CrepExp.const 1873798617647539866#64]

def crepBody663_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody663_1 crepBody663_2

def crepBody663_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13, 14, 15], none)) "bls_fp_to_mont"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody663_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 17)

def crepBody663_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 18)

def crepBody663_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 19)

def crepBody663_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 20)

def crepBody663_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 21)

def crepBody663_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 22)

def crepBody663_14 : CrepProg (BitVec 64) :=
.seq crepBody663_13 crepBody663_2

def crepBody663_15 : CrepProg (BitVec 64) :=
.seq crepBody663_12 crepBody663_14

def crepBody663_16 : CrepProg (BitVec 64) :=
.seq crepBody663_11 crepBody663_15

def crepBody663_17 : CrepProg (BitVec 64) :=
.seq crepBody663_10 crepBody663_16

def crepBody663_18 : CrepProg (BitVec 64) :=
.seq crepBody663_9 crepBody663_17

def crepBody663_19 : CrepProg (BitVec 64) :=
.seq crepBody663_8 crepBody663_18

def crepBody663_20 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 15) crepBody663_19

def crepBody663_21 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 14) crepBody663_20

def crepBody663_22 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 13) crepBody663_21

def crepBody663_23 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 12) crepBody663_22

def crepBody663_24 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 11) crepBody663_23

def crepBody663_25 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 10) crepBody663_24

def crepBody663_26 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 1) crepBody663_25

def crepBody663_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody663_28 : CrepProg (BitVec 64) :=
.seq crepBody663_26 crepBody663_27

def crepBody663_29 : CrepProg (BitVec 64) :=
.seq crepBody663_7 crepBody663_28

def crepBody663_30 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody663_29

def crepBody663_31 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody663_30

def crepBody663_32 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody663_31

def crepBody663_33 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody663_32

def crepBody663_34 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody663_33

def crepBody663_35 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody663_34

def crepBody663_36 : CrepProg (BitVec 64) :=
.seq crepBody663_6 crepBody663_35

def crepBody663_37 : CrepProg (BitVec 64) :=
.seq crepBody663_5 crepBody663_36

def crepBody663_38 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody663_37

def crepBody663_39 : CrepProg (BitVec 64) :=
.seq crepBody663_4 crepBody663_38

def crepBody663_40 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody663_39

def crepBody663_41 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody663_40

def crepBody663_42 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody663_41

def crepBody663_43 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody663_42

def crepBody663_44 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody663_43

def crepBody663_45 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody663_44

def crepBody663_46 : CrepProg (BitVec 64) :=
.seq crepBody663_3 crepBody663_45

def crepBody663_47 : CrepProg (BitVec 64) :=
.seq crepBody663_0 crepBody663_46

def crepBody663_48 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody663_47

def data663 : CrepProg (BitVec 64) := crepBody663_48
def output663 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 54#8, 52#8], [0, 1], crepProgToHOL data663)
end InitECandidate.Proofs.FrontendStages.Crep
