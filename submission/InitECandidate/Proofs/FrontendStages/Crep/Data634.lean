import InitECandidate.Proofs.FrontendStages.Crep.Translate618
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody634_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody634_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody634_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody634_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bn254_parse_g1" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody634_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody634_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody634_4

def crepBody634_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody634_7 : CrepProg (BitVec 64) :=
.seq crepBody634_5 crepBody634_6

def crepBody634_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody634_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody634_7 crepBody634_8

def crepBody634_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "bn254_parse_g1"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.var 4]

def crepBody634_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody634_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody634_11

def crepBody634_13 : CrepProg (BitVec 64) :=
.seq crepBody634_12 crepBody634_6

def crepBody634_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody634_13 crepBody634_8

def crepBody634_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ecp_add"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody634_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody634_15

def crepBody634_17 : CrepProg (BitVec 64) :=
.seq crepBody634_14 crepBody634_16

def crepBody634_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "bn254_g1_to_bytes" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1]

def crepBody634_19 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody634_18

def crepBody634_20 : CrepProg (BitVec 64) :=
.seq crepBody634_17 crepBody634_19

def crepBody634_21 : CrepProg (BitVec 64) :=
.seq crepBody634_20 crepBody634_12

def crepBody634_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody634_23 : CrepProg (BitVec 64) :=
.seq crepBody634_21 crepBody634_22

def crepBody634_24 : CrepProg (BitVec 64) :=
.seq crepBody634_10 crepBody634_23

def crepBody634_25 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody634_24

def crepBody634_26 : CrepProg (BitVec 64) :=
.seq crepBody634_9 crepBody634_25

def crepBody634_27 : CrepProg (BitVec 64) :=
.seq crepBody634_3 crepBody634_26

def crepBody634_28 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody634_27

def crepBody634_29 : CrepProg (BitVec 64) :=
.seq crepBody634_2 crepBody634_28

def crepBody634_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody634_29

def crepBody634_31 : CrepProg (BitVec 64) :=
.seq crepBody634_1 crepBody634_30

def crepBody634_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody634_31

def crepBody634_33 : CrepProg (BitVec 64) :=
.seq crepBody634_0 crepBody634_32

def crepBody634_34 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody634_33

def data634 : CrepProg (BitVec 64) := crepBody634_34
def output634 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8], [0, 1], crepProgToHOL data634)
end InitECandidate.Proofs.FrontendStages.Crep
