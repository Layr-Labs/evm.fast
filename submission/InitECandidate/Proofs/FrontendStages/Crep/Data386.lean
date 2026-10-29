import InitECandidate.Proofs.FrontendStages.Crep.Translate370
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody386_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "st_le64"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 224#64])]

def crepBody386_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody386_0

def crepBody386_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64], Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.const 20#64]

def crepBody386_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody386_2

def crepBody386_4 : CrepProg (BitVec 64) :=
.seq crepBody386_1 crepBody386_3

def crepBody386_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 28#64],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]

def crepBody386_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody386_5

def crepBody386_7 : CrepProg (BitVec 64) :=
.seq crepBody386_4 crepBody386_6

def crepBody386_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 240#64]),
    Flapjack.CrepExp.var 2]

def crepBody386_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 4),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])]

def crepBody386_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody386_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody386_9 crepBody386_10

def crepBody386_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "get_pre_tx_storage" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody386_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody386_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody386_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 12)

def crepBody386_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 13)

def crepBody386_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 14)

def crepBody386_18 : CrepProg (BitVec 64) :=
.seq crepBody386_17 crepBody386_10

def crepBody386_19 : CrepProg (BitVec 64) :=
.seq crepBody386_16 crepBody386_18

def crepBody386_20 : CrepProg (BitVec 64) :=
.seq crepBody386_15 crepBody386_19

def crepBody386_21 : CrepProg (BitVec 64) :=
.seq crepBody386_14 crepBody386_20

def crepBody386_22 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 8) crepBody386_21

def crepBody386_23 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 7) crepBody386_22

def crepBody386_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 6) crepBody386_23

def crepBody386_25 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 5) crepBody386_24

def crepBody386_26 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 9) crepBody386_25

def crepBody386_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "st_le64"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 224#64])]

def crepBody386_28 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody386_27

def crepBody386_29 : CrepProg (BitVec 64) :=
.seq crepBody386_26 crepBody386_28

def crepBody386_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64], Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.const 20#64]

def crepBody386_31 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody386_30

def crepBody386_32 : CrepProg (BitVec 64) :=
.seq crepBody386_29 crepBody386_31

def crepBody386_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 28#64],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]

def crepBody386_34 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody386_33

def crepBody386_35 : CrepProg (BitVec 64) :=
.seq crepBody386_32 crepBody386_34

def crepBody386_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 240#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 9]

def crepBody386_37 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody386_36

def crepBody386_38 : CrepProg (BitVec 64) :=
.seq crepBody386_35 crepBody386_37

def crepBody386_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody386_40 : CrepProg (BitVec 64) :=
.seq crepBody386_38 crepBody386_39

def crepBody386_41 : CrepProg (BitVec 64) :=
.seq crepBody386_13 crepBody386_40

def crepBody386_42 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody386_41

def crepBody386_43 : CrepProg (BitVec 64) :=
.seq crepBody386_12 crepBody386_42

def crepBody386_44 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody386_43

def crepBody386_45 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody386_44

def crepBody386_46 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody386_45

def crepBody386_47 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody386_46

def crepBody386_48 : CrepProg (BitVec 64) :=
.seq crepBody386_11 crepBody386_47

def crepBody386_49 : CrepProg (BitVec 64) :=
.seq crepBody386_8 crepBody386_48

def crepBody386_50 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody386_49

def crepBody386_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody386_50

def crepBody386_52 : CrepProg (BitVec 64) :=
.seq crepBody386_7 crepBody386_51

def crepBody386_53 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 248#64])) crepBody386_52

def data386 : CrepProg (BitVec 64) := crepBody386_53
def output386 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [105#8, 100#8, 120#8, 95#8, 115#8, 116#8, 97#8, 114#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8], [0, 1], crepProgToHOL data386)
end InitECandidate.Proofs.FrontendStages.Crep
