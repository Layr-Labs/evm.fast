import InitECandidate.Proofs.FrontendStages.Crep.Translate241
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody257_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64),
        Flapjack.CrepExp.const 2#64]]

def crepBody257_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 1#64)

def crepBody257_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody257_3 : CrepProg (BitVec 64) :=
.seq crepBody257_1 crepBody257_2

def crepBody257_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)) crepBody257_3 crepBody257_2

def crepBody257_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "nibble_list_to_compact"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 4]

def crepBody257_6 : CrepProg (BitVec 64) :=
.seq crepBody257_4 crepBody257_5

def crepBody257_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "rlp_bytes_encoded_len"
  [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 4), Flapjack.CrepExp.var 5]

def crepBody257_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 8)

def crepBody257_9 : CrepProg (BitVec 64) :=
.seq crepBody257_8 crepBody257_2

def crepBody257_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "rlp_value_encoded_len"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64])]

def crepBody257_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 10)

def crepBody257_12 : CrepProg (BitVec 64) :=
.seq crepBody257_11 crepBody257_2

def crepBody257_13 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 9]) crepBody257_12

def crepBody257_14 : CrepProg (BitVec 64) :=
.seq crepBody257_10 crepBody257_13

def crepBody257_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody257_14

def crepBody257_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)) crepBody257_15 crepBody257_2

def crepBody257_17 : CrepProg (BitVec 64) :=
.seq crepBody257_9 crepBody257_16

def crepBody257_18 : CrepProg (BitVec 64) :=
.seq crepBody257_7 crepBody257_17

def crepBody257_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody257_18

def crepBody257_20 : CrepProg (BitVec 64) :=
.seq crepBody257_6 crepBody257_19

def crepBody257_21 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody257_20

def crepBody257_22 : CrepProg (BitVec 64) :=
.seq crepBody257_0 crepBody257_21

def crepBody257_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody257_22

def crepBody257_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 3#64)) crepBody257_23 crepBody257_2

def crepBody257_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody257_26 : CrepProg (BitVec 64) :=
.seq crepBody257_25 crepBody257_2

def crepBody257_27 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 4) crepBody257_26

def crepBody257_28 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody257_27

def crepBody257_29 : CrepProg (BitVec 64) :=
.seq crepBody257_24 crepBody257_28

def crepBody257_30 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody257_26

def crepBody257_31 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody257_30

def crepBody257_32 : CrepProg (BitVec 64) :=
.seq crepBody257_29 crepBody257_31

def crepBody257_33 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 3) crepBody257_26

def crepBody257_34 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]) crepBody257_33

def crepBody257_35 : CrepProg (BitVec 64) :=
.seq crepBody257_32 crepBody257_34

def crepBody257_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody257_37 : CrepProg (BitVec 64) :=
.seq crepBody257_35 crepBody257_36

def crepBody257_38 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody257_37

def crepBody257_39 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody257_38

def crepBody257_40 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody257_39

def crepBody257_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64])) crepBody257_40

def data257 : CrepProg (BitVec 64) := crepBody257_41
def output257 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 108#8, 112#8, 95#8, 98#8, 101#8, 103#8, 105#8, 110#8], [0, 1], crepProgToHOL data257)
end InitECandidate.Proofs.FrontendStages.Crep
