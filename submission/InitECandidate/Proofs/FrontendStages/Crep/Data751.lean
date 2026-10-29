import InitECandidate.Proofs.FrontendStages.Crep.Translate735
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody751_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody751_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 48#64]

def crepBody751_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody751_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bls_fp_decode64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody751_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody751_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody751_4

def crepBody751_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody751_7 : CrepProg (BitVec 64) :=
.seq crepBody751_5 crepBody751_6

def crepBody751_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody751_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody751_7 crepBody751_8

def crepBody751_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "map_fp_to_g1"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody751_11 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody751_10

def crepBody751_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "g1_encode" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1]

def crepBody751_13 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody751_12

def crepBody751_14 : CrepProg (BitVec 64) :=
.seq crepBody751_11 crepBody751_13

def crepBody751_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody751_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody751_15

def crepBody751_17 : CrepProg (BitVec 64) :=
.seq crepBody751_14 crepBody751_16

def crepBody751_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody751_19 : CrepProg (BitVec 64) :=
.seq crepBody751_17 crepBody751_18

def crepBody751_20 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64])) crepBody751_19

def crepBody751_21 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64])) crepBody751_20

def crepBody751_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody751_21

def crepBody751_23 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64])) crepBody751_22

def crepBody751_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody751_23

def crepBody751_25 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 3)) crepBody751_24

def crepBody751_26 : CrepProg (BitVec 64) :=
.seq crepBody751_9 crepBody751_25

def crepBody751_27 : CrepProg (BitVec 64) :=
.seq crepBody751_3 crepBody751_26

def crepBody751_28 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody751_27

def crepBody751_29 : CrepProg (BitVec 64) :=
.seq crepBody751_2 crepBody751_28

def crepBody751_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody751_29

def crepBody751_31 : CrepProg (BitVec 64) :=
.seq crepBody751_1 crepBody751_30

def crepBody751_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody751_31

def crepBody751_33 : CrepProg (BitVec 64) :=
.seq crepBody751_0 crepBody751_32

def crepBody751_34 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody751_33

def data751 : CrepProg (BitVec 64) := crepBody751_34
def output751 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 103#8, 49#8, 95#8, 101#8,
    120#8, 101#8, 99#8], [0, 1], crepProgToHOL data751)
end InitECandidate.Proofs.FrontendStages.Crep
