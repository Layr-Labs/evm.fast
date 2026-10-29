import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody1_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "mem_init" []

def crepBody1_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_0

def crepBody1_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "sha256_init" []

def crepBody1_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_2

def crepBody1_4 : CrepProg (BitVec 64) :=
.seq crepBody1_1 crepBody1_3

def crepBody1_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "keccak_init" []

def crepBody1_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_5

def crepBody1_7 : CrepProg (BitVec 64) :=
.seq crepBody1_4 crepBody1_6

def crepBody1_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "ssz_init" []

def crepBody1_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_8

def crepBody1_10 : CrepProg (BitVec 64) :=
.seq crepBody1_7 crepBody1_9

def crepBody1_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "mpt_init" []

def crepBody1_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_11

def crepBody1_13 : CrepProg (BitVec 64) :=
.seq crepBody1_10 crepBody1_12

def crepBody1_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "u256_ws_init" []

def crepBody1_15 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_14

def crepBody1_16 : CrepProg (BitVec 64) :=
.seq crepBody1_13 crepBody1_15

def crepBody1_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "secp256k1_init" []

def crepBody1_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_17

def crepBody1_19 : CrepProg (BitVec 64) :=
.seq crepBody1_16 crepBody1_18

def crepBody1_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "bn254_init" []

def crepBody1_21 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_20

def crepBody1_22 : CrepProg (BitVec 64) :=
.seq crepBody1_19 crepBody1_21

def crepBody1_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "bls_precompiles_init" []

def crepBody1_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_23

def crepBody1_25 : CrepProg (BitVec 64) :=
.seq crepBody1_22 crepBody1_24

def crepBody1_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "ripemd160_init" []

def crepBody1_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_26

def crepBody1_28 : CrepProg (BitVec 64) :=
.seq crepBody1_25 crepBody1_27

def crepBody1_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "blake2_init" []

def crepBody1_30 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_29

def crepBody1_31 : CrepProg (BitVec 64) :=
.seq crepBody1_28 crepBody1_30

def crepBody1_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "header_init" []

def crepBody1_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_32

def crepBody1_34 : CrepProg (BitVec 64) :=
.seq crepBody1_31 crepBody1_33

def crepBody1_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "evm_init" []

def crepBody1_36 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_35

def crepBody1_37 : CrepProg (BitVec 64) :=
.seq crepBody1_34 crepBody1_36

def crepBody1_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "fork_init" []

def crepBody1_39 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_38

def crepBody1_40 : CrepProg (BitVec 64) :=
.seq crepBody1_37 crepBody1_39

def crepBody1_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 256#64]

def crepBody1_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody1_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memzero" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]

def crepBody1_44 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody1_43

def crepBody1_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody1_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody1_47 : CrepProg (BitVec 64) :=
.seq crepBody1_45 crepBody1_46

def crepBody1_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "serialize_result"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64]

def crepBody1_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5])
  (Flapjack.CrepExp.var 4)

def crepBody1_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "output_write"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]]

def crepBody1_51 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody1_50

def crepBody1_52 : CrepProg (BitVec 64) :=
.seq crepBody1_49 crepBody1_51

def crepBody1_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.extCall "halt" 1 2 3 4

def crepBody1_54 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody1_53

def crepBody1_55 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.baseAddr) crepBody1_54

def crepBody1_56 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody1_55

def crepBody1_57 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.baseAddr) crepBody1_56

def crepBody1_58 : CrepProg (BitVec 64) :=
.seq crepBody1_52 crepBody1_57

def crepBody1_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody1_60 : CrepProg (BitVec 64) :=
.seq crepBody1_58 crepBody1_59

def crepBody1_61 : CrepProg (BitVec 64) :=
.seq crepBody1_48 crepBody1_60

def crepBody1_62 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody1_61

def crepBody1_63 : CrepProg (BitVec 64) :=
.seq crepBody1_47 crepBody1_62

def crepBody1_64 : CrepProg (BitVec 64) :=
.call (some (([3]), some ((2#64), crepBody1_63))) ("decode_host_input") ([])

def crepBody1_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody1_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htr_new_payload_request" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5]

def crepBody1_67 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody1_66

def crepBody1_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "verify_stateless_new_payload" [Flapjack.CrepExp.var 3]

def crepBody1_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "serialize_result"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.const 5377#64]

def crepBody1_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 7])
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 536#64]))

def crepBody1_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "output_write"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]]

def crepBody1_72 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody1_71

def crepBody1_73 : CrepProg (BitVec 64) :=
.seq crepBody1_70 crepBody1_72

def crepBody1_74 : CrepProg (BitVec 64) :=
.seq crepBody1_73 crepBody1_57

def crepBody1_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody1_76 : CrepProg (BitVec 64) :=
.seq crepBody1_74 crepBody1_75

def crepBody1_77 : CrepProg (BitVec 64) :=
.seq crepBody1_69 crepBody1_76

def crepBody1_78 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody1_77

def crepBody1_79 : CrepProg (BitVec 64) :=
.seq crepBody1_68 crepBody1_78

def crepBody1_80 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody1_79

def crepBody1_81 : CrepProg (BitVec 64) :=
.seq crepBody1_67 crepBody1_80

def crepBody1_82 : CrepProg (BitVec 64) :=
.seq crepBody1_65 crepBody1_81

def crepBody1_83 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody1_82

def crepBody1_84 : CrepProg (BitVec 64) :=
.seq crepBody1_64 crepBody1_83

def crepBody1_85 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody1_84

def crepBody1_86 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody1_85

def crepBody1_87 : CrepProg (BitVec 64) :=
.seq crepBody1_44 crepBody1_86

def crepBody1_88 : CrepProg (BitVec 64) :=
.seq crepBody1_42 crepBody1_87

def crepBody1_89 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody1_88

def crepBody1_90 : CrepProg (BitVec 64) :=
.seq crepBody1_41 crepBody1_89

def crepBody1_91 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody1_90

def crepBody1_92 : CrepProg (BitVec 64) :=
.seq crepBody1_40 crepBody1_91

def data1 : CrepProg (BitVec 64) := crepBody1_92
def output1 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 105#8, 110#8, 39#8], [], crepProgToHOL data1)
end InitECandidate.Proofs.FrontendStages.Crep
