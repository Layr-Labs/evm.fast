import InitECandidate.Proofs.FrontendStages.Crep.Translate340
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody356_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "get_account_optional" [Flapjack.CrepExp.var 0]

def crepBody356_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody356_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody356_3 : CrepProg (BitVec 64) :=
.seq crepBody356_1 crepBody356_2

def crepBody356_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 3#64) crepBody356_3

def crepBody356_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 7#64

def crepBody356_6 : CrepProg (BitVec 64) :=
.seq crepBody356_4 crepBody356_5

def crepBody356_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody356_6 crepBody356_2

def crepBody356_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9], none)) "htab_get" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 0]

def crepBody356_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "htab_new" [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 8#64]

def crepBody356_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "jset"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 10]

def crepBody356_11 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody356_10

def crepBody356_12 : CrepProg (BitVec 64) :=
.seq crepBody356_9 crepBody356_11

def crepBody356_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 9)

def crepBody356_14 : CrepProg (BitVec 64) :=
.seq crepBody356_13 crepBody356_2

def crepBody356_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody356_12 crepBody356_14

def crepBody356_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody356_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody356_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 14)

def crepBody356_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 15)

def crepBody356_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 16)

def crepBody356_21 : CrepProg (BitVec 64) :=
.seq crepBody356_20 crepBody356_2

def crepBody356_22 : CrepProg (BitVec 64) :=
.seq crepBody356_19 crepBody356_21

def crepBody356_23 : CrepProg (BitVec 64) :=
.seq crepBody356_18 crepBody356_22

def crepBody356_24 : CrepProg (BitVec 64) :=
.seq crepBody356_17 crepBody356_23

def crepBody356_25 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 5) crepBody356_24

def crepBody356_26 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 4) crepBody356_25

def crepBody356_27 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 3) crepBody356_26

def crepBody356_28 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 2) crepBody356_27

def crepBody356_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 11) crepBody356_28

def crepBody356_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "jset"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 11]

def crepBody356_31 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody356_30

def crepBody356_32 : CrepProg (BitVec 64) :=
.seq crepBody356_29 crepBody356_31

def crepBody356_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody356_34 : CrepProg (BitVec 64) :=
.seq crepBody356_32 crepBody356_33

def crepBody356_35 : CrepProg (BitVec 64) :=
.seq crepBody356_16 crepBody356_34

def crepBody356_36 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody356_35

def crepBody356_37 : CrepProg (BitVec 64) :=
.seq crepBody356_15 crepBody356_36

def crepBody356_38 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody356_37

def crepBody356_39 : CrepProg (BitVec 64) :=
.seq crepBody356_8 crepBody356_38

def crepBody356_40 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody356_39

def crepBody356_41 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody356_40

def crepBody356_42 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
      Flapjack.CrepExp.const 32#64])) crepBody356_41

def crepBody356_43 : CrepProg (BitVec 64) :=
.seq crepBody356_7 crepBody356_42

def crepBody356_44 : CrepProg (BitVec 64) :=
.seq crepBody356_0 crepBody356_43

def crepBody356_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody356_44

def data356 : CrepProg (BitVec 64) := crepBody356_45
def output356 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data356)
end InitECandidate.Proofs.FrontendStages.Crep
