import InitECandidate.Proofs.FrontendStages.Crep.Translate619
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody635_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody635_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody635_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bn254_parse_g1" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody635_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody635_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody635_3

def crepBody635_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody635_6 : CrepProg (BitVec 64) :=
.seq crepBody635_4 crepBody635_5

def crepBody635_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody635_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody635_6 crepBody635_7

def crepBody635_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 32#64]

def crepBody635_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "ecp_mul"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody635_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody635_10

def crepBody635_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "bn254_g1_to_bytes" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody635_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody635_12

def crepBody635_14 : CrepProg (BitVec 64) :=
.seq crepBody635_11 crepBody635_13

def crepBody635_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody635_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody635_15

def crepBody635_17 : CrepProg (BitVec 64) :=
.seq crepBody635_14 crepBody635_16

def crepBody635_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody635_19 : CrepProg (BitVec 64) :=
.seq crepBody635_17 crepBody635_18

def crepBody635_20 : CrepProg (BitVec 64) :=
.seq crepBody635_9 crepBody635_19

def crepBody635_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody635_20

def crepBody635_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody635_21

def crepBody635_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody635_22

def crepBody635_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody635_23

def crepBody635_25 : CrepProg (BitVec 64) :=
.seq crepBody635_8 crepBody635_24

def crepBody635_26 : CrepProg (BitVec 64) :=
.seq crepBody635_2 crepBody635_25

def crepBody635_27 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody635_26

def crepBody635_28 : CrepProg (BitVec 64) :=
.seq crepBody635_1 crepBody635_27

def crepBody635_29 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody635_28

def crepBody635_30 : CrepProg (BitVec 64) :=
.seq crepBody635_0 crepBody635_29

def crepBody635_31 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody635_30

def data635 : CrepProg (BitVec 64) := crepBody635_31
def output635 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 103#8, 49#8, 95#8, 109#8, 117#8, 108#8], [0, 1], crepProgToHOL data635)
end InitECandidate.Proofs.FrontendStages.Crep
