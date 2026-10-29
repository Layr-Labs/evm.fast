import InitECandidate.Proofs.FrontendStages.Crep.Translate321
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody337_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ws_storage_root_of" [Flapjack.CrepExp.var 0]

def crepBody337_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memeq"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody337_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody337_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody337_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody337_2 crepBody337_3

def crepBody337_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "ws_storage_trie" [Flapjack.CrepExp.var 2]

def crepBody337_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody337_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody337_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "keccak256"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 6]

def crepBody337_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody337_8

def crepBody337_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9], none)) "trie_lookup" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 6]

def crepBody337_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody337_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody337_11

def crepBody337_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody337_2 crepBody337_3

def crepBody337_14 : CrepProg (BitVec 64) :=
.seq crepBody337_12 crepBody337_13

def crepBody337_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "rlp_decode_fully"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody337_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64)) crepBody337_2 crepBody337_3

def crepBody337_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 14)

def crepBody337_18 : CrepProg (BitVec 64) :=
.seq crepBody337_17 crepBody337_3

def crepBody337_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 1#64) crepBody337_18

def crepBody337_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 7#64

def crepBody337_21 : CrepProg (BitVec 64) :=
.seq crepBody337_19 crepBody337_20

def crepBody337_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 32#64) (Flapjack.CrepExp.var 12)) crepBody337_21 crepBody337_3

def crepBody337_23 : CrepProg (BitVec 64) :=
.seq crepBody337_16 crepBody337_22

def crepBody337_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "u256_from_be" [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody337_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody337_26 : CrepProg (BitVec 64) :=
.seq crepBody337_24 crepBody337_25

def crepBody337_27 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody337_26

def crepBody337_28 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody337_27

def crepBody337_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody337_28

def crepBody337_30 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody337_29

def crepBody337_31 : CrepProg (BitVec 64) :=
.seq crepBody337_23 crepBody337_30

def crepBody337_32 : CrepProg (BitVec 64) :=
.seq crepBody337_15 crepBody337_31

def crepBody337_33 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody337_32

def crepBody337_34 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody337_33

def crepBody337_35 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody337_34

def crepBody337_36 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody337_35

def crepBody337_37 : CrepProg (BitVec 64) :=
.seq crepBody337_14 crepBody337_36

def crepBody337_38 : CrepProg (BitVec 64) :=
.seq crepBody337_10 crepBody337_37

def crepBody337_39 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody337_38

def crepBody337_40 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody337_39

def crepBody337_41 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody337_40

def crepBody337_42 : CrepProg (BitVec 64) :=
.seq crepBody337_9 crepBody337_41

def crepBody337_43 : CrepProg (BitVec 64) :=
.seq crepBody337_7 crepBody337_42

def crepBody337_44 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody337_43

def crepBody337_45 : CrepProg (BitVec 64) :=
.seq crepBody337_6 crepBody337_44

def crepBody337_46 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody337_45

def crepBody337_47 : CrepProg (BitVec 64) :=
.seq crepBody337_5 crepBody337_46

def crepBody337_48 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody337_47

def crepBody337_49 : CrepProg (BitVec 64) :=
.seq crepBody337_4 crepBody337_48

def crepBody337_50 : CrepProg (BitVec 64) :=
.seq crepBody337_1 crepBody337_49

def crepBody337_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody337_50

def crepBody337_52 : CrepProg (BitVec 64) :=
.seq crepBody337_0 crepBody337_51

def crepBody337_53 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody337_52

def data337 : CrepProg (BitVec 64) := crepBody337_53
def output337 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [119#8, 115#8, 95#8, 103#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8], [0, 1], crepProgToHOL data337)
end InitECandidate.Proofs.FrontendStages.Crep
